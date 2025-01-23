LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_misc.all;

-- ******************************************************************************
-- *                                                                            *
-- * этот модуль принимает данные с линии PS2                        *
-- *                                                                            *
-- ******************************************************************************


ENTITY altera_up_ps2_data_in IS 


-- *****************************************************************************
-- *                             Generic Declarations                          *
-- *****************************************************************************

-- *****************************************************************************
-- *                             Port Declarations                             *
-- *****************************************************************************
PORT (
	-- Inputs
	clk							:IN		STD_LOGIC;	-- из шины авалон синхросигнал
	reset							:IN		STD_LOGIC;	-- из шины авалон reset

	wait_for_incoming_data	:IN		STD_LOGIC;		-- из модуля altera_up_ps2 команда ожидать данные
	start_receiving_data		:IN		STD_LOGIC;		-- из модуля altera_up_ps2 команда начать прием данных

	ps2_clk_posedge			:IN		STD_LOGIC;		-- из модуля altera_up_ps2 положительный фронт clk
	ps2_clk_negedge			:IN		STD_LOGIC;		-- из модуля altera_up_ps2 отрицательный фронт clk
	ps2_data						:IN		STD_LOGIC;		-- из модуля altera_up_ps2 принятые с ps2 данные

	-- Bidirectionals

	-- Outputs
	received_data				:BUFFER	STD_LOGIC_VECTOR( 7 DOWNTO  0);	-- регистр принятых данных из ps2 

	received_data_en			:BUFFER	STD_LOGIC								-- разрешение для этого регистра 

);

END altera_up_ps2_data_in;

ARCHITECTURE Behaviour OF altera_up_ps2_data_in IS
-- *****************************************************************************
-- *                           Constant Declarations                           *
-- *****************************************************************************
	-- states
	TYPE State_Type IS (	PS2_STATE_0_IDLE,					-- состояние ожидания
								PS2_STATE_1_WAIT_FOR_DATA,		-- ожидание данных
								PS2_STATE_2_DATA_IN,				-- ввод данных
								PS2_STATE_3_PARITY_IN,			-- ввод бита четности
								PS2_STATE_4_STOP_IN				-- ввод стопового бита
							);
	
-- *****************************************************************************
-- *                       Internal Signals Declarations                       *
-- *****************************************************************************
	-- Internal Wires
	SIGNAL	data_count			:STD_LOGIC_VECTOR( 3 DOWNTO  0);		-- счетчик данных
	SIGNAL	data_shift_reg		:STD_LOGIC_VECTOR( 7 DOWNTO  0);		-- сдвиговый регистр данных
	
	-- State Machine Registers
	SIGNAL	ns_ps2_receiver	:State_Type;				-- следующее состояние приемника	
	SIGNAL	s_ps2_receiver		:State_Type;				-- текущее состояние приемника	
	
-- *****************************************************************************
-- *                          Component Declarations                           *
-- *****************************************************************************
BEGIN
-- *****************************************************************************
-- *                         Finite State Machine(s)                           *
-- *****************************************************************************

	PROCESS (clk)	-- этот процесс определяет начальное состояние приемника и переход в следующее состояние по положительному фронту clk
	BEGIN
		IF clk'EVENT AND clk = '1' THEN				-- по положительному фронту
			IF (reset = '1') THEN						-- при активном reset
				s_ps2_receiver <= PS2_STATE_0_IDLE;	-- приемник в состоянии ожидания
			ELSE
				s_ps2_receiver <= ns_ps2_receiver;	-- иначе переключается в следующее состояние
			END IF;
		END IF;
	END PROCESS;


	PROCESS (ns_ps2_receiver, s_ps2_receiver, wait_for_incoming_data, 	-- ??? этот процесс определяет следующее состояние приемника
				received_data_en, start_receiving_data, ps2_data, ps2_clk_posedge, 
				data_count)
	BEGIN
		-- Defaults
		ns_ps2_receiver <= PS2_STATE_0_IDLE;	-- по умолчанию следующее состояние приемника ожидание
	
		CASE (s_ps2_receiver) IS							-- в состоянии ожидания
		WHEN PS2_STATE_0_IDLE =>
			IF ((wait_for_incoming_data = '1') AND 		-- если есть команда ждать входящие данные 
					(received_data_en = '0')) THEN			-- и нет разрешения на их фиксацию в регистре
				ns_ps2_receiver <= PS2_STATE_1_WAIT_FOR_DATA;	-- след состояние ожидать данные
			ELSIF ((start_receiving_data = '1') AND 				-- если есть команда начать прием данных
					(received_data_en = '0')) THEN					-- и нет разрешения на их фиксацию в регистре
				ns_ps2_receiver <= PS2_STATE_2_DATA_IN;			-- то следующее состояние ввод данных
			ELSE
				ns_ps2_receiver <= PS2_STATE_0_IDLE;				-- то следующее состояние ожидания
			END IF;
		WHEN PS2_STATE_1_WAIT_FOR_DATA =>							-- в состоянии ожидания данных
			IF ((ps2_data = '0') AND (ps2_clk_posedge = '1')) THEN	-- если на линии данных ноль и  есть положительный фронт clk
				ns_ps2_receiver <= PS2_STATE_2_DATA_IN;					-- то след состояние ввод данных
			ELSIF (wait_for_incoming_data = '0') THEN						-- нет команды на ожидание данных то следующее состояние ожидания
				ns_ps2_receiver <= PS2_STATE_0_IDLE;
			ELSE
				ns_ps2_receiver <= PS2_STATE_1_WAIT_FOR_DATA;			-- иначе остаемся в состоянии ожидания данных
			END IF;
		WHEN PS2_STATE_2_DATA_IN =>											-- в состоянии ввода данных 
			IF ((data_count = B"0111") AND (ps2_clk_posedge = '1')) THEN	-- если ввели 8 бит и есть положительный фронт
				ns_ps2_receiver <= PS2_STATE_3_PARITY_IN;						-- то следующее состояние ввод бита четности
			ELSE
				ns_ps2_receiver <= PS2_STATE_2_DATA_IN;						-- если не все биты ввели, то остаемся в этом состоянии
			END IF;
		WHEN PS2_STATE_3_PARITY_IN =>												-- в состоянии ввода бита четности
			IF (ps2_clk_posedge = '1') THEN										-- есть положительный фронт clk в ps2, то след состояние ввод стоп бита
				ns_ps2_receiver <= PS2_STATE_4_STOP_IN;
			ELSE
				ns_ps2_receiver <= PS2_STATE_3_PARITY_IN;						-- иначе остается в состоянии ввода бита четности						
			END IF;
		WHEN PS2_STATE_4_STOP_IN =>												-- в состоянии ввода стоп бита 
			IF (ps2_clk_posedge = '1') THEN										-- есть положительный фронт clk в ps2, то след состояние ожидания
				ns_ps2_receiver <= PS2_STATE_0_IDLE;
			ELSE
				ns_ps2_receiver <= PS2_STATE_4_STOP_IN;						-- иначе остается в состоянии ввода стоп бита
			END IF;
		WHEN OTHERS =>
			ns_ps2_receiver <= PS2_STATE_0_IDLE;								-- во всех остальных случаях след состояние ожидания
		END CASE;
	END PROCESS;


-- *****************************************************************************
-- *                             Sequential Logic                              *
-- *****************************************************************************


	PROCESS (clk) -- этот процесс описывает счетчик принятых бит
	BEGIN
		IF clk'EVENT AND clk = '1' THEN							-- по положительному фронту
			IF (reset = '1') THEN 									-- при активном reset
				data_count	<= (OTHERS => '0');					-- обнуляем счетчик данных
			ELSIF ((s_ps2_receiver = PS2_STATE_2_DATA_IN) AND		-- в состоянии ввода данных и есть полож фронт  
					(ps2_clk_posedge = '1')) THEN
				data_count	<= data_count + 1;							-- инкремент счетчика
			ELSIF (s_ps2_receiver /= PS2_STATE_2_DATA_IN) THEN
				data_count	<= (OTHERS => '0');							-- в других состояниях счетчик принудительно удерживается в нуле
			END IF;
		END IF;
	END PROCESS;


	PROCESS (clk) -- этот процесс описывает сдвиговый регистр, который принимает данные с линии
	BEGIN
		IF clk'EVENT AND clk = '1' THEN					-- по положительному фронту
			IF (reset = '1') THEN							-- при активном reset
				data_shift_reg			<= B"00000000";	-- обнуляем сдвиговый регистр	
			ELSIF ((s_ps2_receiver = PS2_STATE_2_DATA_IN) AND -- в состоянии ввода данных по положительному фронту
					(ps2_clk_posedge = '1')) THEN
				data_shift_reg	<= (ps2_data & data_shift_reg(7 DOWNTO 1));	-- вдвигаем в старший разряд регистра бит данных с ps2
			END IF;
		END IF;
	END PROCESS;


	PROCESS (clk)	-- этот процесс описывает регистр принятых данных
	BEGIN
		IF clk'EVENT AND clk = '1' THEN					-- по положительному фронту
			IF (reset = '1') THEN							-- при активном reset
				received_data		<= B"00000000";		-- принятые данные равны нулю
			ELSIF (s_ps2_receiver = PS2_STATE_4_STOP_IN) THEN	-- в состоянии приема стоп бита
				received_data	<= data_shift_reg;					-- переписываем из сдвигового регистра 
			END IF;
		END IF;
	END PROCESS;


	PROCESS (clk)	-- этот процесс описывает логику формирования сигнала разрешения приема в регистр принятых данных из сдвигового регистра
	BEGIN
		IF clk'EVENT AND clk = '1' THEN					-- по положительному фронту
			IF (reset = '1') THEN							-- при активном reset
				received_data_en		<= '0';				-- нет разрешение на прием данных
			ELSIF ((s_ps2_receiver = PS2_STATE_4_STOP_IN) AND 	-- в состоянии приема стоп бита
					(ps2_clk_posedge = '1')) THEN						-- по положительному фронту синхросигналп на линии PS2
				received_data_en	<= '1';								-- есть разрешение на прием данных
			ELSE
				received_data_en	<= '0';								-- в других состояниях разрешения на прием данных нет
			END IF;
		END IF;
	END PROCESS;


-- *****************************************************************************
-- *                            Combinational Logic                            *
-- *****************************************************************************


-- *****************************************************************************
-- *                          Component Instantiations                         *
-- *****************************************************************************



END Behaviour;

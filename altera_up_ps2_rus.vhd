LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_misc.all;
USE ieee.numeric_std.all;


-- ******************************************************************************
-- *                                                                            *
-- * Этот модуль выполняет коммуникацию с ядром PS2.                            *
-- *                                                                            *
-- ******************************************************************************

ENTITY altera_up_ps2 IS 

-- *****************************************************************************
-- *                             Generic Declarations                          *
-- *****************************************************************************
	
GENERIC (					-- настраиваемые параметры
	
	-- параметры для передачи команды в PS2
	CLOCK_CYCLES_FOR_101US	:INTEGER									:= 5050;
	DATA_WIDTH_FOR_101US		:INTEGER									:= 13;
	CLOCK_CYCLES_FOR_15MS	:INTEGER									:= 750000;
	DATA_WIDTH_FOR_15MS		:INTEGER									:= 20;
	CLOCK_CYCLES_FOR_2MS		:INTEGER									:= 100000;
	DATA_WIDTH_FOR_2MS		:INTEGER									:= 17
	
);
-- *****************************************************************************
-- *                             Port Declarations                             *
-- *****************************************************************************
PORT (
	-- Inputs
	clk									:IN		STD_LOGIC;									-- синхросигнал
	reset									:IN		STD_LOGIC;									-- сброс с шины

	the_command							:IN		STD_LOGIC_VECTOR( 7 DOWNTO  0);		-- команда для отправки в ps2
	send_command						:IN		STD_LOGIC;									-- отправить команду

	-- Bidirectionals
	PS2_CLK								:INOUT	STD_LOGIC;									-- сигналы PS2
	PS2_DAT								:INOUT	STD_LOGIC;

	-- Outputs
	command_was_sent					:BUFFER	STD_LOGIC;									-- команда была отправлена
	error_communication_timed_out	:BUFFER	STD_LOGIC;									-- ошибка передачи по таймауту

	received_data						:BUFFER	STD_LOGIC_VECTOR( 7 DOWNTO  0);		-- принятые данные
	received_data_en					:BUFFER	STD_LOGIC									-- разрешение фиксации принятых данных

);

END altera_up_ps2;

ARCHITECTURE Behaviour OF altera_up_ps2 IS
-- *****************************************************************************
-- *                           Constant Declarations                           *
-- *****************************************************************************
	-- states
	TYPE State_Type IS (	PS2_STATE_0_IDLE,					-- состояние ожидания
								PS2_STATE_1_DATA_IN,				-- прием данных
								PS2_STATE_2_COMMAND_OUT,		-- отправка команды
								PS2_STATE_3_END_TRANSFER,		-- завершение передачи
								PS2_STATE_4_END_DELAYED			-- завершение ожидания
							);
	
-- *****************************************************************************
-- *                       Internal Signals Declarations                       *
-- *****************************************************************************
	-- Internal Wires
	SIGNAL	ps2_clk_posedge			:STD_LOGIC;				-- положительный фронт clk на линии PS2
	SIGNAL	ps2_clk_negedge			:STD_LOGIC;				-- отрицательный фронт clk на линии PS2
	
	SIGNAL	start_receiving_data		:STD_LOGIC;				-- начать прием данных
	SIGNAL	wait_for_incoming_data	:STD_LOGIC;				-- ожидать поступления данных
	
	-- Internal Registers
	SIGNAL	idle_counter				:STD_LOGIC_VECTOR( 7 DOWNTO  0);	-- счетчик ожидания
	
	SIGNAL	ps2_clk_reg					:STD_LOGIC;				-- последний сохраненный сигнал clk
	SIGNAL	ps2_data_reg				:STD_LOGIC;				-- сохраненный сигнал data
	SIGNAL	last_ps2_clk				:STD_LOGIC;				-- предыдущее значение clk
	
	-- State Machine Registers
	SIGNAL	ns_ps2_transceiver		:State_Type;			-- следующее состояние передатчика	
	SIGNAL	s_ps2_transceiver			:State_Type;			-- текущее состояние передатчика	
	
-- *****************************************************************************
-- *                          Component Declarations                           *
-- *****************************************************************************
	COMPONENT altera_up_ps2_data_in	-- модуль приема данных из ps2
	PORT (
		-- Inputs
		clk							:IN		STD_LOGIC;	-- синхросигнал с шины авалон
		reset							:IN		STD_LOGIC;	-- reset с шины авалон

		wait_for_incoming_data	:IN		STD_LOGIC;	
		start_receiving_data		:IN		STD_LOGIC;

		ps2_clk_posedge			:IN		STD_LOGIC;
		ps2_clk_negedge			:IN		STD_LOGIC;
		ps2_data						:IN		STD_LOGIC;

		-- Bidirectionals

		-- Outputs
		received_data				:BUFFER	STD_LOGIC_VECTOR( 7 DOWNTO  0);
		received_data_en			:BUFFER	STD_LOGIC
	);
	END COMPONENT;

	COMPONENT altera_up_ps2_command_out		-- модуль отправки команды
	GENERIC (
		CLOCK_CYCLES_FOR_101US			:INTEGER;	-- число тактов в интервале 101 мкс
		DATA_WIDTH_FOR_101US				:INTEGER;	-- разрядность счетчика
		CLOCK_CYCLES_FOR_15MS			:INTEGER;	-- число тактов в интервале 15 мс
		DATA_WIDTH_FOR_15MS				:INTEGER;	-- разрядность счетчика
		CLOCK_CYCLES_FOR_2MS				:INTEGER;	-- число тактов в интервале 2 мс
		DATA_WIDTH_FOR_2MS				:INTEGER		-- разрядность счетчика
	);
	PORT (
		-- Inputs
		clk									:IN		STD_LOGIC;	-- синхросигнал с шины авалон
		reset									:IN		STD_LOGIC;	-- reset с шины авалон

		the_command							:IN		STD_LOGIC_VECTOR( 7 DOWNTO  0);-- команда в виде байта для отправки
		send_command						:IN		STD_LOGIC;							-- сигнал отправить команду

		ps2_clk_posedge					:IN		STD_LOGIC;	-- сигнал обнаружения положительного фронта на линии clk	
		ps2_clk_negedge					:IN		STD_LOGIC;	-- сигнал обнаружения отрицательного фронта на линии clk

		-- Bidirectionals
		PS2_CLK								:INOUT	STD_LOGIC;	-- линии PS2
		PS2_DAT								:INOUT	STD_LOGIC;

		-- Outputs
		command_was_sent					:BUFFER	STD_LOGIC;	-- команда была отправлена подтверждение		
		error_communication_timed_out	:BUFFER	STD_LOGIC	-- ошибка коммуникации по тайм ауту
	);
	END COMPONENT;

BEGIN
-- *****************************************************************************
-- *                         Finite State Machine(s)                           *
-- *****************************************************************************

	PROCESS (clk)	-- этот процесс устанавливает автомат в начальное состояние и переключает в следующее
	BEGIN
		IF clk'EVENT AND clk = '1' THEN  -- по положительному фронту 
			IF (reset = '1') THEN			-- если есть reset
				s_ps2_transceiver <= PS2_STATE_0_IDLE;	-- то передатчик в состоянии ожидания 
			ELSE
				s_ps2_transceiver <= ns_ps2_transceiver; -- иначе переключается в следующее состояние
			END IF;
		END IF;
	END PROCESS;


	PROCESS (ns_ps2_transceiver, s_ps2_transceiver, idle_counter, send_command, 	-- этот процесс определяет переходы автомата
				ps2_data_reg, ps2_clk_posedge, received_data_en, command_was_sent,	-- список чувствительности 
				error_communication_timed_out)													
	BEGIN
		-- Defaults
		ns_ps2_transceiver <= PS2_STATE_0_IDLE;	-- по умолчанию остается в состоянии ожидания
	
	   CASE (s_ps2_transceiver) IS
		WHEN PS2_STATE_0_IDLE =>		-- в состоянии ожидания
			IF ((idle_counter = B"11111111") AND 	-- если счетчик ожидания досчитал до конца
					(send_command = '1')) THEN			-- и есть сигнал отправить команду
				ns_ps2_transceiver <= PS2_STATE_2_COMMAND_OUT;		-- то следующее состояние отправки команды
			ELSIF ((ps2_data_reg = '0') AND (ps2_clk_posedge = '1')) THEN		-- если на линии данных ноль и положительный фронт clk
				ns_ps2_transceiver <= PS2_STATE_1_DATA_IN;							-- то следующее состояние ввести данные
			ELSE
				ns_ps2_transceiver <= PS2_STATE_0_IDLE;								-- иначе остается в состоянии ожидания
			END IF;
		WHEN PS2_STATE_1_DATA_IN =>														-- в состоянии ввода данных
			IF (received_data_en = '1') THEN												-- если есть разрешение получения данных
				ns_ps2_transceiver <= PS2_STATE_0_IDLE;								-- то следующее состояние ожидания
			ELSE
				ns_ps2_transceiver <= PS2_STATE_1_DATA_IN;							-- иначе остается в состоянии ввода данных
			END IF;
		WHEN PS2_STATE_2_COMMAND_OUT =>													-- в состоянии отправки команды
			IF ((command_was_sent = '1') OR 												-- если есть сигнал command_was_sent или 
				(error_communication_timed_out = '1')) THEN							-- ошибка отправки по тайм ауту 
				ns_ps2_transceiver <= PS2_STATE_3_END_TRANSFER;						-- то следующее состояние завершение передачи
			ELSE
				ns_ps2_transceiver <= PS2_STATE_2_COMMAND_OUT;						-- иначе остается в состоянии вывода команды
			END IF;
		WHEN PS2_STATE_3_END_TRANSFER =>													-- в состоянии завершение передачи
			IF (send_command = '0') THEN													-- если нет команды отправить команду
				ns_ps2_transceiver <= PS2_STATE_0_IDLE;								-- то переход в состояние ожидания
			ELSIF ((ps2_data_reg = '0') AND (ps2_clk_posedge = '1')) THEN		-- если предыдущее значение на линии данных 0 и есть положительный фронт clk
				ns_ps2_transceiver <= PS2_STATE_4_END_DELAYED;						-- то след состояние конец ожидания
			ELSE
				ns_ps2_transceiver <= PS2_STATE_3_END_TRANSFER;						-- иначе остается в состоянии завершение передачи
			END IF;
		WHEN PS2_STATE_4_END_DELAYED =>													-- в состоянии завершения ожидания 
			IF (received_data_en = '1') THEN												-- если есть разрешение на прием данных	
				IF (send_command = '0') THEN												-- если нет команды на отправку команды
					ns_ps2_transceiver <= PS2_STATE_0_IDLE;							-- то следующее состояние ожидания
				ELSE
					ns_ps2_transceiver <= PS2_STATE_3_END_TRANSFER;					-- иначе следующее состояние завершение передачи
				END IF;
			ELSE
				ns_ps2_transceiver <= PS2_STATE_4_END_DELAYED;						-- иначе остается в состоянии завершения ожидания 
			END IF;
		WHEN OTHERS =>
			ns_ps2_transceiver <= PS2_STATE_0_IDLE;									-- в остальных случаях в состояние ожидания
		END CASE;
	END PROCESS;


-- *****************************************************************************
-- *                             Sequential Logic                              *
-- *****************************************************************************

	PROCESS (clk)	-- этот процесс читает с линий ps2 clk и data и запоминает в триггерах
	BEGIN
		IF clk'EVENT AND clk = '1' THEN	-- по положительному фронту
			IF (reset = '1') THEN			-- если активный reset
				last_ps2_clk	<= '1';		-- последний ps2_clk устанавливается в 1
				ps2_clk_reg		<= '1';		-- сохраненный ps2_clk устанавливается в 1
		
				ps2_data_reg	<= '1';		-- сохраненный ps2_data устанавливается в 1
			ELSE									-- что соответствует неактивным состояниям на линиях ps2
				last_ps2_clk	<= ps2_clk_reg;	-- иначе запоминаем сохраненный clk (т. е. предпоследний)
				ps2_clk_reg		<= PS2_CLK;			-- читаем с линии и запоминаем
		
				ps2_data_reg	<= PS2_DAT;			-- читаем данные с линии и запоминаем
			END IF;
		END IF;
	END PROCESS;


	PROCESS (clk)	-- этот процесс определяет поведение счетчика ожидания
	BEGIN
		IF clk'EVENT AND clk = '1' THEN				-- по положительному фронту
			IF (reset = '1') THEN						-- при активном reset
				idle_counter <= (OTHERS => '0');		-- обнуляем счетчик ожидания
			ELSIF ((s_ps2_transceiver = PS2_STATE_0_IDLE) AND -- иначе если тек состояние состояние ожидания активности
					(idle_counter /= B"11111111")) THEN		-- и счетчик не дошел до конца
				idle_counter <= idle_counter + 1;			-- инкремент счетчика
			ELSIF (s_ps2_transceiver /= PS2_STATE_0_IDLE) THEN	-- в других состояниях счетчик равен нулю
				idle_counter <= (OTHERS => '0');
			END IF;
		END IF;
	END PROCESS;


-- *****************************************************************************
-- *                            Combinational Logic                            *
-- *****************************************************************************

	ps2_clk_posedge <= 															-- определение положительного фронта
				'1' WHEN ((ps2_clk_reg = '1') AND (last_ps2_clk = '0')) ELSE '0';	-- последний 1, предпоследний ноль	
	ps2_clk_negedge <= 															-- определение отрицательного фронта
				'1' WHEN ((ps2_clk_reg = '0') AND (last_ps2_clk = '1')) ELSE '0';	-- последний ноль, предпоследняя 1

	start_receiving_data <= 													-- начать прием данных
				'1' WHEN (s_ps2_transceiver = PS2_STATE_1_DATA_IN) ELSE '0';	-- в состоянии прием данных
	wait_for_incoming_data 	<= 												-- ждать приема данных
				'1' WHEN (s_ps2_transceiver = PS2_STATE_3_END_TRANSFER) ELSE '0';	-- в состоянии завершении передачи

-- *****************************************************************************
-- *                          Component Instantiations                         *
-- *****************************************************************************


	PS2_Data_In : altera_up_ps2_data_in 	-- этот модуль выполняет прием данных из ps2
	PORT MAP (
		-- Inputs
		clk							=> clk,
		reset							=> reset,
	
		wait_for_incoming_data	=> wait_for_incoming_data,
		start_receiving_data		=> start_receiving_data,
	
		ps2_clk_posedge			=> ps2_clk_posedge,
		ps2_clk_negedge			=> ps2_clk_negedge,
		ps2_data						=> ps2_data_reg,
	
		-- Bidirectionals
	
		-- Outputs
		received_data				=> received_data,
		received_data_en			=> received_data_en
	);

	PS2_Command_Out : altera_up_ps2_command_out 
	GENERIC MAP (
		CLOCK_CYCLES_FOR_101US			=> 5050,
		DATA_WIDTH_FOR_101US				=> 13,
		CLOCK_CYCLES_FOR_15MS			=> 750000,
		DATA_WIDTH_FOR_15MS				=> 20,
		CLOCK_CYCLES_FOR_2MS				=> 100000,
		DATA_WIDTH_FOR_2MS				=> 17
	)
	PORT MAP (
		-- Inputs
		clk									=> clk,
		reset									=> reset,
	
		the_command							=> the_command,
		send_command						=> send_command,
	
		ps2_clk_posedge					=> ps2_clk_posedge,
		ps2_clk_negedge					=> ps2_clk_negedge,
	
		-- Bidirectionals
		PS2_CLK								=> PS2_CLK,
	 	PS2_DAT								=> PS2_DAT,
	
		-- Outputs
		command_was_sent					=> command_was_sent,
		error_communication_timed_out	=> error_communication_timed_out
	);



END Behaviour;

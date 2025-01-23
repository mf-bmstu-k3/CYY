--  В этом файле приводится описание центрального устройства управления ЦУУ.
-- Оно должно формировать управляющие сигналы для ОП, РП и спроектированного ранее арифметического устройства
-- Внешними сигналами для ЦУУ являются сигналы set, по которому ЦУУ, устанавливается в исходное состояние и тактовый сигнал clk
-- Для арифметического устройства оно готовит операнды А и В, задает сор и подает сигнал начала операции sno, после их установки
-- Из арифметического устройства оно забирает результат 2n-разрядный для умножения, n-разрядный для сложения и двухразрядный признак результата
-- Сигналом, подтверждающим выполнение операции в арифметическом устройстве, является сигнал конца операции sko
-- Для оперативной памяти оно формирует следующие сигналы:
-- data_in_OP [7:0] - данные для записи в ОП
-- address_OP [7:0] - адрес, для обращения к ОП
-- wr_en_OP - сигнал записи в ОП, если этот сигнал не активен ОП выполняет чтение
-- Из ОП в ЦУУ поступает сигнал 
-- data_out_OP [7:0] - данные, считанные из ОП
-- Для регистровой памяти РП ЦУУ формирует следующие сигналы 
-- data_in_a_RP - данные для записи в РП, через порт а
-- address_a_RP [2:0] - адрес, для обращения к RП, через порт a
-- wr_en_a_RP - сигнал записи через порт а в РП, если этот сигнал не активен PП выполняет чтение
-- data_in_b_RP - данные для записи в РП, через порт b
-- address_b_RP [2:0] - адрес, для обращения к RП, через порт b
-- wr_en_b_RP - сигнал записи через порт b в РП, если этот сигнал не активен PП выполняет чтение
-- q_a_RP - данные, считываемые из РП, через порт а
-- q_b_RP - данные, считываемые из РП, через порт b



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CYY is
generic (n:integer:=8);     -- n параметр, задает разрядность операндов
	port
	(
		q_a 		 : STD_LOGIC_VECTOR (7 downto 0);-- имитируем базовый адрес из РП 	
		q_b 		 : STD_LOGIC_VECTOR (7 downto 0);-- имитируем второй операнд из РП 	
		clk		 : in	std_logic; -- тактовый сигнал
		set 		 : in	std_logic; --  сигнал начальной установки
-- Для взаимодействия с АУ
		a 			 : buffer  STD_LOGIC_VECTOR (n-1 downto 0);-- первый операнд для АУ		
		b 			 : buffer  STD_LOGIC_VECTOR (n-1 downto 0);-- второй операнд для АУ
		
		cop		 : buffer	std_logic; --  код операции 1-умножение,0 - сложение для АУ
		sno		 : buffer	std_logic; -- сигнал начала операции для АУ
		
		rr 		 : buffer  STD_LOGIC_VECTOR (2*n-1 downto 0);-- результат из АУ
      priznak 	 : buffer  STD_LOGIC_VECTOR (1 downto 0); -- признак результата из АУ
		sko	 	 : buffer	std_logic; -- сигнал конца операции из АУ
-- Для наблюдения внутренних сигналов во время отладки проекта
		signal RA : buffer STD_LOGIC_VECTOR (7 downto 0);-- регистр адреса, для адресации операнда в ОП
		signal CK : buffer STD_LOGIC_VECTOR (7 downto 0);-- счетчик команд, для адресации текущей команды в ОП
		signal RK : buffer STD_LOGIC_VECTOR (7 downto 0);-- регистр команд, для хранения текущей выполняемой команды
		s_out		 : out  STD_LOGIC_VECTOR(2 downto 0) ;  -- отладочный выход для наблюдения состояний БМК
-- Для взаимодействия с ОП		
		data_in_OP : buffer STD_LOGIC_VECTOR (7 downto 0); -- данные для записи в ОП
		address_OP : buffer STD_LOGIC_VECTOR (7 downto 0); -- адрес, для обращения к ОП
		wr_en_OP   : buffer std_logic; -- сигнал записи в ОП, если этот сигнал не активен, ОП выполняет чтение
		data_out_OP: buffer STD_LOGIC_VECTOR (7 downto 0) -- данные, считанные из ОП
		
-- Для взаимодействия с РП
--		data_in_a_RP : out STD_LOGIC_VECTOR (7 downto 0); -- данные для записи в РП, через порт а
--		address_a_RP : out STD_LOGIC_VECTOR (2 downto 0); -- адрес, для обращения к RП, через порт a
--		wr_en_a_RP 	 : out std_logic; -- сигнал записи через порт а в РП, если этот сигнал не активен PП выполняет чтение
--		data_in_b_RP : out STD_LOGIC_VECTOR (7 downto 0); -- данные для записи в РП, через порт b
--		address_b_RP : out STD_LOGIC_VECTOR (2 downto 0); -- адрес, для обращения к RП, через порт b
--		wr_en_b_RP 	 : out std_logic -- сигнал записи через порт b в РП, если этот сигнал не активен PП выполняет чтение
	);

end entity CYY;

architecture arch of CYY is
-----------------------------Декларация компонента ОП на 256 байт --------------------------------------------------------------------

component memory
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- адресный вход
		clock		: IN STD_LOGIC  := '1';				   -- тактовый вход
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- вход данных
		wren		: IN STD_LOGIC ;						   -- разрешение записи
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)	   -- выход данных 
	);
end component;
---------------------------------------------------------------------------------------------------------------------------------------
-- Следующим компонентом является память регистровая RP 
-- Пока для операции умножения добавим два внешних входных порта q_a и q_b, имитирующих передачу базового адреса и второго операнда из РП 
-- Декларация компонента регистровой памяти на 8 байт
-- Позднее добавим сюда декларацию памяти регистровой
-- 
--
----------------------------------------------------------------------------------------------------------------------------------------------------
---- Компонент Арифметическое устройство, спроектированное ранее
-- Взят из седьмого проекта

COMPONENT ctrl_un_BO
	GENERIC ( n : INTEGER ); -- разрядность операндов
	PORT
	(
		a		:	 IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- вход первого операнда
		b		:	 IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- вход второго операнда
		clk		:	 IN STD_LOGIC; -- синхросигнал
		set		:	 IN STD_LOGIC; -- сигнал начальной установки
		cop		:	 IN STD_LOGIC; -- код операции 
		sno		:	 IN STD_LOGIC; -- сигнал начала операции
		rr			:	 OUT STD_LOGIC_VECTOR(2*n-1 DOWNTO 0); -- результат
		priznak	:	 OUT STD_LOGIC_VECTOR(1 DOWNTO 0); -- признак результата
		sko		:	 OUT STD_LOGIC -- сигнал конца операции
	);
END COMPONENT;

------------------------------------------------------------------------------------------------------------------------------------------------
-- Декларация сигналов, используемых в проекте
type state_type is (s0, s1, s2, s3, s4, s5, s6); -- определяем состояния БМК

	signal next_state, state : state_type; -- следующее состояние, текущее состояние
	


signal incr_CK	: STD_LOGIC:='0';-- разрешение инкремента СК
signal summ_CK	: STD_LOGIC:='0';-- вычисление адреса перехода
signal load_RK	: STD_LOGIC:='0';-- загрузка команды
signal load_RA	: STD_LOGIC:='0';-- загрузка адреса
signal IA		: STD_LOGIC_VECTOR (7 downto 0);-- исполнительный адрес операнда в ОП
signal incr_RA	: STD_LOGIC:='0';-- разрешение инкремента РА
-----------------------------------------------------------------------------------

begin
Comp_OP: memory
port map ( address_OP, clk, data_in_OP, wr_en_OP, data_out_OP);

--Comp_RP: OP
--port map ( address_OP, clk, data_in_OP, wr_en_OP, data_out_OP);

Comp_AU: ctrl_un_BO
generic map
	(n => 8)
port map ( a,b,clk,set,cop,sno,rr,priznak,sko);

-------------------------------------------------------------------------------------------
pr_CK:   process (set, clk) -- этот процесс определяет поведение счетчика команд СК
	
	begin
		if (set='1') then CK<=(others=>'0'); --устанавливаем в начальное состояние
		elsif clk'event and clk='1' then 
		  if (incr_CK='1') then CK<=CK+"00000001"; -- инкремент счетчика
			elsif (summ_CK='1') then CK<= CK +RK(5)&RK(5)& RK(5 downto 0); -- вычисление адреса перехода
		  end if;
		 end if;
	end process pr_CK;
----------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------
	 
pr_RK: process (clk) -- этот процесс определяет поведение регистра команд
	begin
		if clk'event and clk='1' then -- по положительному фронту clk
			if load_RK='1' then -- если есть разрешение на прием команды
			RK<=data_out_OP; -- выполняется прием команды с выхода ОП
			end if;
		end if;
	end process pr_RK;
---------------------------------------------------------------------------------------------
pr_RA: process (clk)-- этот процесс описывает логику работы регистра адреса RA
	begin
		if clk'event and clk='1' then -- по положительному фронту 
		 if load_RA='1' then  RA<=IA; -- если есть разрешение, то загружаем исполнительный адрес первого операнда		
				elsif incr_RA='1' then RA<=RA+1; --инкремент адреса"00000001"
		 end if;
		end if;
end process pr_RA;
------------------------------------------------------------------------------------------------
-- Ниже приводится описание устройства управления для ЦУУ- блока микрокоманд БМК. Рассматривается пока только одна операция умножение
TS: process (clk,set) -- этот процесс определяет текущее состояние МУУ
	 begin
		if set = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then -- по положительному фронту переключаются состояния
			state <= next_state;			
		end if;
	 end process TS;

	 
NS: process (state,cop,sko) -- этот процесс определяет следующее состояние МУУ, управляющие сигналы
	 begin
-- 

			case state is
				when s0=> -- переходы из s0
				 
					if (set = '0') then
						next_state <= s1; -- если сигнал set не активен,load_RK, incr_CK 
					else
						next_state <= s0; -- иначе состояние не меняется
					end if;
				when s1=>
				   
					next_state <= s2; -- из s1 переходим в s2, incr_CK
	
				when s2=>
					
						next_state <= s3; -- из s2 всегда переходим в s3 load_RA,

				when s3 =>
						next_state <= s4;  -- из s3 всегда переходим в s4, sno=1,summ_RA
						
				when s4 =>
							
					if (sko='1') then
						next_state <= s5;  -- из s4 переходим в s5, если есть sko, запись младшей части результата в ОП
					else 
						next_state <= s4; -- ждем завершения операции
					end if;
				when s5 =>
						next_state <= s6; -- Запись старшей части результата в ОП
				when s6 =>		
						next_state <= s0; -- из s6 всегда переходим в s0, это пустой такт, чтобы завершить запись
			end case;			
	end process NS;
---------------------------------------------------------------------------------------------------------
-- ниже приводится описание управляющих сигналов для БМК

incr_CK<='1' when (state=s0  or state =s1) else -- разрешение на инкремент СК	если умножение
			'0';
load_RK<='1' when (state=s0) else -- загрузка команды в RK всегда в s0 для любой операции
			'0';
load_RA<='1' when (state=s2) else -- загрузка ИА в RA в s2 для операции умножения
			'0';
incr_RA <='1' when (state=s4 and sko='1') else -- инкремент RA для записи старшей части результата в ОП, только для умножения
			'0';
sno <='1' when (state=s3) else -- когда извлекли операнды на шину А и В 
			'0';
wr_en_OP<='1' when ((state=s4 and sko='1') or state=s5) else -- запись в ОП только при умножении 
			'0';					
data_in_OP<= rr(2*n-1 downto n) when (state= s5) else
				 rr(n-1 downto 0);
-- address_OP <= RA when (state=s3 or state=s4 or state=s5 or state=s6) else -- в ОП только при умножении 
--				  CK;
address_OP <= CK	when(state=s0 or state=s1 or state=s6) else
				  IA	when state=s2 else
				  RA; 
				  
IA<= data_out_OP+q_a; -- вычисляем исполнительный адрес первого операнда

a<= data_out_OP; -- на шину А- первого операнда подаем первый операнд с выхода ОП				  
b<= q_b; --на шину В - второго операнда подаем второй операнд из РП	
cop<='1'; -- пока для умножения, потом для отладки можно изменить
---------------------------------------------------------------------------------------------------
	--  отладочный выход для наблюдения текущего состояния
		s_out<="000" when state=s0 else
				  "001" when state=s1 else					
				  "010" when state=s2 else
				  "011" when state=s3 else
				  "100" when state=s4 else
				  "101" when state=s5 else
				  "110";
	
end arch;



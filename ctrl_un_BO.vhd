-- этот файл содержит описание операционного устройства для выполнения умножения и сложения
-- он представляет собой vhdl описание схемного проекта contr_unit_BO, представленного на верхнем уровне как МУУ(файл control unit) + БО (файл BO)
-- В описании представлено entity и архитектурное тело операционного устройства
-- Операнды n разрядные

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ctrl_un_BO IS
	GENERIC (n : INTEGER); -- n параметр, задает разрядность операндов
	PORT (
		a : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);-- первый операнд		
		b : IN STD_LOGIC_VECTOR (n - 1 DOWNTO 0);-- второй операнд
		clk : IN STD_LOGIC; -- тактовый сигнал
		set : IN STD_LOGIC; --  сигнал начальной установки
		cop : IN STD_LOGIC; --  код операции 1-умножение,0 - сложение

		sno : IN STD_LOGIC; -- сигнал начала операции
		rr : BUFFER STD_LOGIC_VECTOR (2 * n - 1 DOWNTO 0);-- результат
		priznak : OUT STD_LOGIC_VECTOR (1 DOWNTO 0); -- признак результата
		sko : OUT STD_LOGIC -- сигнал конца операции

	);

END ENTITY;

ARCHITECTURE arch OF ctrl_un_BO IS

	TYPE state_type IS (s0, s1, s2, s3, s4); -- определяем состояния МУУ

	SIGNAL next_state, state : state_type; -- следующее состояние, текущее состояние
	SIGNAL i : INTEGER RANGE 1 TO n - 1; -- счетчик анализируемых разрядов множителя
	SIGNAL incr_i : STD_LOGIC; -- разрешение инкремента i
	SIGNAL RA, RB : STD_LOGIC_VECTOR (n - 1 DOWNTO 0);-- для запоминания а и в

	SIGNAL d : STD_LOGIC_VECTOR (2 * n - 1 DOWNTO 0);-- выход КС1
	SIGNAL q : STD_LOGIC_VECTOR (2 * n - 1 DOWNTO 0);-- выход КС2
	SIGNAL s : STD_LOGIC_VECTOR (2 * n - 1 DOWNTO 0);-- выход сумматора
	SIGNAL pr : STD_LOGIC_VECTOR (1 DOWNTO 0);-- выход КС3
	SIGNAL x : STD_LOGIC_VECTOR (2 DOWNTO 0);-- логические условия
	SIGNAL y : STD_LOGIC_VECTOR(10 DOWNTO 1); -- управляющие сигналы для блока операций

BEGIN

	TS : PROCESS (clk, set) -- этот процесс определяет текущее состояние МУУ
	BEGIN
		IF set = '1' THEN
			state <= s0;
		ELSIF (rising_edge(clk)) THEN -- по положительному фронту переключаются состояния
			state <= next_state;
		END IF;
	END PROCESS;

	NS : PROCESS (state, cop, sno, x, i) -- этот процесс определяет следующее состояние МУУ, управляющие сигналы для БО
	BEGIN

		CASE state IS
			WHEN s0 => -- переходы из s0

				IF (sno = '1') THEN
					next_state <= s1;
					y <= "0011000111"; -- если есть сигнал начала операции
				ELSE
					next_state <= s0;
					y <= "0000000000"; -- иначе состояние не меняется
				END IF;
			WHEN s1 =>

				next_state <= s2; -- из s1 всегда переходим в s2
				IF cop = '0' THEN -- если сложение
					y <= "0001101000"; --rr=RA+RB
				ELSIF x(1 DOWNTO 0) = "10" THEN
					y <= "0101101000"; -- rr=rr +RA  													
				ELSIF x(1 DOWNTO 0) = "01" THEN
					y <= "0101110000"; -- rr=rr -RA
				ELSE
					y <= "0101100000"; -- rr=rr+0 
				END IF;
			WHEN s2 =>
				IF i = n - 1 THEN
					next_state <= s0;
					y <= "0000000000"; -- формируем сигнал конца операции
				ELSIF cop = '1' THEN -- если умножение
					next_state <= s1;
					y <= "0001000100"; -- иначе сдвиг rr, сдвиг RB
				ELSIF cop = '0' AND x(2) = '0' THEN -- если сложение и нет отрицательного нуля
					next_state <= s4;
					y <= "1000000000"; -- иначе запись признака в RPR
				ELSE
					next_state <= s3;
					y <= "0011000000"; -- иначе если сложение и есть отрицательный ноль, то обнуляем rr
				END IF;
			WHEN s3 =>
				next_state <= s4;
				y <= "1000000000"; -- иначе запись признака в RPR
			WHEN s4 =>
				next_state <= s0;
				y <= "0000000000"; -- формируем сигнал конца операции

		END CASE;
	END PROCESS;

	sko <= '1' WHEN (state = s2 AND (i = n - 1)) OR state = s4 ELSE -- формирование sko	
		'0';
	incr_i <= '1' WHEN state = s2 AND cop = '1' AND i /= n - 1 ELSE --инкремент i
		'0';
	count_i : PROCESS (sno, clk) -- этот процесс определяет поведение счетчика i

	BEGIN
		IF (sno = '1') THEN
			i <= 1; --устанавливаем в начальное состояние
		ELSIF clk'event AND clk = '1' THEN
			IF (incr_i = '1') THEN
				i <= i + 1; -- инкремент счетчика
			END IF;
		END IF;
	END PROCESS;
	pr_RA : PROCESS (clk) -- этот процесс описывает логику работы регистра RA
	BEGIN
		IF clk'event AND clk = '1' THEN -- по положительному фронту clk
			IF y(1) = '1' THEN -- если есть разрешение
				RA <= a; -- выполняется прием первого операнда
			END IF;
		END IF;
	END PROCESS pr_RA;

	pr_RB : PROCESS (clk)-- этот процесс описывает логику работы регистра RB
	BEGIN
		IF clk'event AND clk = '1' THEN -- по положительному фронту 
			IF y(3) = '1' THEN -- если есть разрешение тактирования
				IF y(2) = '1' THEN
					RB <= b;-- если разрешена загрузка, то прием второго операнда
				ELSE
					RB <= RB(n - 1) & RB(n - 3 DOWNTO 0) & '0'; -- иначе сдвиг влево RB с сохранением знака
				END IF;
			END IF;
		END IF;
	END PROCESS pr_RB;

	-- ниже приводится описание КС1, d(2*n-1 downto 0) её выход
	WITH y(5 DOWNTO 4) SELECT
	d(2 * n - 1 DOWNTO n) <= (OTHERS => RA(n - 1)) WHEN "01", -- передаем на суммирование +А если y4=1
	(OTHERS => NOT RA(n - 1)) WHEN "10", --передаем на суммирование -А, если y5=1
	(OTHERS => '0') WHEN OTHERS; -- ноль в остальных случаях
	WITH y(5 DOWNTO 4) SELECT
	d(n - 1 DOWNTO 0) <= RA WHEN "01", -- передаем на суммирование +А если y4=1
	NOT RA WHEN "10", --передаем на суммирование -А, если y5=1
	(OTHERS => '0') WHEN OTHERS; -- ноль в остальных случаях

	-- ниже приводится описание КС2, q(2*n-1 downto 0)её выход 
	q(2 * n - 1 DOWNTO n) <= rr(2 * n - 1 DOWNTO n) WHEN y(9) = '1' ELSE -- когда умножение
	(OTHERS => RB(n - 1)); -- когда сложение

	q(n - 1 DOWNTO 0) <= rr(n - 1 DOWNTO 0) WHEN y(9) = '1' ELSE -- когда умножение 
	RB; -- когда сложение

	SM : PROCESS (d, q) -- этот процесс описывает работу сумматора в обратном коде
		-- к его входам подключены выходы КС1 и КС2
		VARIABLE sym : STD_LOGIC_VECTOR (2 * n DOWNTO 0); -- для вычисления суммы
	BEGIN

		sym := ('0' & d) + ('0' & q);-- сложение
		IF (sym(2 * n) = '1') THEN
			sym(2 * n) := '0';
			sym := sym + 1;
		END IF;

		s <= sym(2 * n - 1 DOWNTO 0);
	END PROCESS SM;

	pr_rr : PROCESS (clk) -- этот процесс описывает работу регистра результата
	BEGIN
		IF clk'event AND clk = '1' THEN -- по положительному фронту синхросигнала
			IF y(8) = '1' THEN
				rr <= (OTHERS => '0'); --очистка rr
			ELSIF (y(7) = '1') THEN -- если есть разрешение тактирования
				IF y(6) = '1' THEN
					rr <= s;--загрузка rr
				ELSE
					rr <= rr(2 * n - 2 DOWNTO 0) & rr(2 * n - 1);-- циклический сдвиг влево rr
				END IF;
			END IF;
		END IF;
	END PROCESS pr_rr;

	-- ниже приводится описание КС3, которая формирует признак результата
	pr <= "00" WHEN rr (n DOWNTO 0) = 0 ELSE -- результат равен нулю
		"10" WHEN rr (n DOWNTO 0) < 2 ** (n - 1) ELSE -- результат больше 0
		"11" WHEN rr (n DOWNTO 0) < (2 ** n) + 2 ** (n - 1) ELSE -- переполнение
		"01"; -- результат меньше 0

	pr_RPR : PROCESS (clk) --этот процесс описывает работу регистра признака
	BEGIN
		IF clk'event AND clk = '1' THEN -- по положительному фронту 
			IF y(10) = '1' THEN
				priznak <= pr; -- запоминаем признак результата
			END IF;
		END IF;
	END PROCESS pr_RPR;
	-- ниже приводится описание логических условий
	x(0) <= RB(n - 1); --знак множителя
	x(1) <= RB(n - 2); --	анализируемый разряд множителя
	x(2) <= '1' WHEN rr (n DOWNTO 0) = (2 ** (n + 1)) - 1 ELSE -- признак отрицательного нуля
	'0'; -- иначе ноль	
	--	s_out<=0 when state=s0 else
	--			 1 when state=s1 else					
	--			 3;
	--	next_state_out<=0 when next_state=s0 else
	--			 1 when next_state=s1 else					
	--			 2 when next_state=s2 else
	--			 3;

END arch;
LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY Multiplexador_8 IS
	PORT (
		Multiplicador, Multiplicador_Deslocado: IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		S: IN STD_LOGIC;
		f: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
		);
END Multiplexador_8;

ARCHITECTURE Behavior OF Multiplexador_8 IS
	COMPONENT Multiplexador
		PORT (
			A, B: IN STD_LOGIC; 
			S: IN STD_LOGIC;
			f: OUT STD_LOGIC 
			);
	END COMPONENT;
	SIGNAL multiplexadorout : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
		Stage07: Multiplexador PORT MAP (Multiplicador(7), Multiplicador_Deslocado(7), S, multiplexadorout(7));
		Stage06: Multiplexador PORT MAP (Multiplicador(6), Multiplicador_Deslocado(6), S, multiplexadorout(6));
		Stage05: Multiplexador PORT MAP (Multiplicador(5), Multiplicador_Deslocado(5), S, multiplexadorout(5));
		Stage04: Multiplexador PORT MAP (Multiplicador(4), Multiplicador_Deslocado(4), S, multiplexadorout(4));
		Stage03: Multiplexador PORT MAP (Multiplicador(3), Multiplicador_Deslocado(3), S, multiplexadorout(3));
		Stage02: Multiplexador PORT MAP (Multiplicador(2), Multiplicador_Deslocado(2), S, multiplexadorout(2));
		Stage01: Multiplexador PORT MAP (Multiplicador(1), Multiplicador_Deslocado(1), S, multiplexadorout(1));
		Stage00: Multiplexador PORT MAP (Multiplicador(0), Multiplicador_Deslocado(0), S, multiplexadorout(0));
		
		PROCESS (multiplexadorout)
		BEGIN
			f <= multiplexadorout;
		END PROCESS;
END Behavior;

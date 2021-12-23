LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY Multiplexador_16 IS
	PORT (
		A, B: IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
		S: IN STD_LOGIC;
		f: OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
		);
END Multiplexador_16;

ARCHITECTURE Behavior OF Multiplexador_16 IS
	COMPONENT Multiplexador
		PORT (
			A, B: IN STD_LOGIC; 
			S: IN STD_LOGIC;
			f: OUT STD_LOGIC 
			);
	END COMPONENT;
	SIGNAL multiplexadorout : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	BEGIN
		Stage15: Multiplexador PORT MAP (A(15), B(15), S, multiplexadorout(15));
		Stage14: Multiplexador PORT MAP (A(14), B(14), S, multiplexadorout(14));
		Stage13: Multiplexador PORT MAP (A(13), B(13), S, multiplexadorout(13));
		Stage12: Multiplexador PORT MAP (A(12), B(12), S, multiplexadorout(12));
		Stage11: Multiplexador PORT MAP (A(11), B(11), S, multiplexadorout(11));
		Stage10: Multiplexador PORT MAP (A(10), B(10), S, multiplexadorout(10));
		Stage09: Multiplexador PORT MAP (A(9), B(9), S, multiplexadorout(9));
		Stage08: Multiplexador PORT MAP (A(8), B(8), S, multiplexadorout(8));
		Stage07: Multiplexador PORT MAP (A(7), B(7), S, multiplexadorout(7));
		Stage06: Multiplexador PORT MAP (A(6), B(6), S, multiplexadorout(6));
		Stage05: Multiplexador PORT MAP (A(5), B(5), S, multiplexadorout(5));
		Stage04: Multiplexador PORT MAP (A(4), B(4), S, multiplexadorout(4));
		Stage03: Multiplexador PORT MAP (A(3), B(3), S, multiplexadorout(3));
		Stage02: Multiplexador PORT MAP (A(2), B(2), S, multiplexadorout(2));
		Stage01: Multiplexador PORT MAP (A(1), B(1), S, multiplexadorout(1));
		Stage00: Multiplexador PORT MAP (A(0), B(0), S, multiplexadorout(0));
		
		PROCESS (multiplexadorout)
		BEGIN
			f <= multiplexadorout;
		END PROCESS;
END Behavior;

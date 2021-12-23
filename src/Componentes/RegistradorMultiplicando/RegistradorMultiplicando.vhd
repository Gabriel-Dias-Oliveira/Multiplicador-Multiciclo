LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY RegistradorMultiplicando IS
	PORT ( 
			Multiplicando: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			Enable, Reset, Clock : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
			);
END RegistradorMultiplicando;

ARCHITECTURE Structure OF RegistradorMultiplicando IS
	COMPONENT FlipFlop
			PORT ( 
				D, Enable, Resetn, Clock: IN STD_LOGIC;
				Q: OUT STD_LOGIC
			);		
	END COMPONENT ;
	SIGNAL flipflopclock : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	BEGIN
		Stage15: FlipFlop PORT MAP (Multiplicando(15), Enable, Reset, Clock, flipflopclock(15));
		Stage14: FlipFlop PORT MAP (Multiplicando(14), Enable, Reset, Clock, flipflopclock(14));
		Stage13: FlipFlop PORT MAP (Multiplicando(13), Enable, Reset, Clock, flipflopclock(13));
		Stage12: FlipFlop PORT MAP (Multiplicando(12), Enable, Reset, Clock, flipflopclock(12));
		Stage11: FlipFlop PORT MAP (Multiplicando(11), Enable, Reset, Clock, flipflopclock(11));
		Stage10: FlipFlop PORT MAP (Multiplicando(10), Enable, Reset, Clock, flipflopclock(10));
		Stage09: FlipFlop PORT MAP (Multiplicando(9), Enable, Reset, Clock, flipflopclock(9));
		Stage08: FlipFlop PORT MAP (Multiplicando(8), Enable, Reset, Clock, flipflopclock(8));
		Stage07: FlipFlop PORT MAP (Multiplicando(7), Enable, Reset, Clock, flipflopclock(7));
		Stage06: FlipFlop PORT MAP (Multiplicando(6), Enable, Reset, Clock, flipflopclock(6));
		Stage05: FlipFlop PORT MAP (Multiplicando(5), Enable, Reset, Clock, flipflopclock(5));
		Stage04: FlipFlop PORT MAP (Multiplicando(4), Enable, Reset, Clock, flipflopclock(4));
		Stage03: FlipFlop PORT MAP (Multiplicando(3), Enable, Reset, Clock, flipflopclock(3));
		Stage02: FlipFlop PORT MAP (Multiplicando(2), Enable, Reset, Clock, flipflopclock(2));
		Stage01: FlipFlop PORT MAP (Multiplicando(1), Enable, Reset, Clock, flipflopclock(1));
		Stage00: FlipFlop PORT MAP (Multiplicando(0), Enable, Reset, Clock, flipflopclock(0));
		
		PROCESS (flipflopclock)
		BEGIN 
			Q <= flipflopclock;
		END PROCESS;
END Structure ;
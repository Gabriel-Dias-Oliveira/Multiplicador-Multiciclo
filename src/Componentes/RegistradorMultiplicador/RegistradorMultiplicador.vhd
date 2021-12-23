LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY RegistradorMultiplicador IS
	PORT ( 
			Multiplicador: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Enable, Reset, Clock : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
			);
END RegistradorMultiplicador;

ARCHITECTURE Structure OF RegistradorMultiplicador IS
	COMPONENT FlipFlop
			PORT ( 
				D, Enable, Resetn, Clock: IN STD_LOGIC;
				Q: OUT STD_LOGIC
			);		
	END COMPONENT ;
	SIGNAL flipflopclock : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
		Stage07: FlipFlop PORT MAP (Multiplicador(7), Enable, Reset, Clock, flipflopclock(7));
		Stage06: FlipFlop PORT MAP (Multiplicador(6), Enable, Reset, Clock, flipflopclock(6));
		Stage05: FlipFlop PORT MAP (Multiplicador(5), Enable, Reset, Clock, flipflopclock(5));
		Stage04: FlipFlop PORT MAP (Multiplicador(4), Enable, Reset, Clock, flipflopclock(4));
		Stage03: FlipFlop PORT MAP (Multiplicador(3), Enable, Reset, Clock, flipflopclock(3));
		Stage02: FlipFlop PORT MAP (Multiplicador(2), Enable, Reset, Clock, flipflopclock(2));
		Stage01: FlipFlop PORT MAP (Multiplicador(1), Enable, Reset, Clock, flipflopclock(1));
		Stage00: FlipFlop PORT MAP (Multiplicador(0), Enable, Reset, Clock, flipflopclock(0));
		
		PROCESS (flipflopclock)
		BEGIN
			Q <= flipflopclock;
		END PROCESS;
END Structure ;
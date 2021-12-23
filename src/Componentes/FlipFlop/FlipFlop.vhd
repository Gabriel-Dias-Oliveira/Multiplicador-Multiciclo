LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY FlipFlop IS
	PORT ( 
			D, Enable, Resetn, Clock: IN STD_LOGIC;
			Q: OUT STD_LOGIC
			);			
END FlipFlop;

ARCHITECTURE Behavior OF FlipFlop IS
	BEGIN	
		PROCESS (Clock, Resetn, Enable, D)
		BEGIN
			IF Resetn = '0' THEN
					Q <= '0';
			
			ELSIF Clock'EVENT AND Clock = '1' THEN
				
					IF Enable = '1' THEN
					Q <= D;
					END IF;
			END IF;
		END PROCESS;
END Behavior;
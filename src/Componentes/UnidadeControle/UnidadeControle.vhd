LIBRARY ieee;
USE ieee.std_logic_1164.all ;

ENTITY UnidadeControle IS
	PORT ( 
			Clock, Resetn, calcula : IN STD_LOGIC;
			Multiplicando : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			Multiplicador : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			done, Eentradas, Eproduto, Sentradas, Sproduto : OUT STD_LOGIC
			);	 
END UnidadeControle;

ARCHITECTURE Behavior OF UnidadeControle IS
	TYPE State_type IS (A, B, D, E, F) ;
	SIGNAL y : State_type;
	BEGIN
	
	PROCESS ( Resetn, Clock, Multiplicando, Multiplicador )
		BEGIN
	
			IF Resetn = '0' THEN
				y <= A ;
			ELSIF (Clock'EVENT AND Clock = '1') THEN

				CASE y IS
					WHEN A =>
						IF calcula = '0' THEN
							y <= A;
						ELSE
							y <= B;
						END IF;
					WHEN B =>		
														
							IF multiplicando = "0000000000000000" OR multiplicador = "00000000" THEN

								y <= F;
							ELSE
								IF multiplicador(0) = '1' THEN
									y <= D;
								ELSE
									y <= E;
								END IF;
							END IF;
			
				WHEN D => 
							y <= B;
				WHEN E =>
							y <= B;
				WHEN F =>
							y <= A;
				END CASE ;
			END IF ;
		END PROCESS ;
	
		Eentradas <= '1' WHEN y = A or y = D or y = E ELSE '0';
		Eproduto <= '1' WHEN  y = A or y = D ELSE '0'; 
		Sentradas <= '0' WHEN y = A or y = F ELSE '1';
		Sproduto <= '0' WHEN y = A or y = F ELSE '1';
		done <= '1' WHEN y = F ELSE '0';
END Behavior;

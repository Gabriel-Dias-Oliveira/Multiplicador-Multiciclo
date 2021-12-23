LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY Multiplexador IS
	PORT (
		A, B: IN STD_LOGIC; 
		S: IN STD_LOGIC;
		f: OUT STD_LOGIC 
		);
END Multiplexador;

ARCHITECTURE Behavior OF Multiplexador IS
BEGIN
	f <= (A AND S) OR (B AND NOT S);
END Behavior;

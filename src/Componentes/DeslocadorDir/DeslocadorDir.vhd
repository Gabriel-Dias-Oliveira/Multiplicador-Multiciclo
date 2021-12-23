LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DeslocadorDir IS
	GENERIC (N : INTEGER := 8);
	PORT( 
		input_vector : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		w: IN STD_LOGIC;
		output_vector : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END DeslocadorDir;

ARCHITECTURE Behavior OF DeslocadorDir IS
BEGIN
	PROCESS(input_vector)
	BEGIN 
	Desloc: FOR i IN 0 TO N-2 LOOP	
		output_vector(i) <= input_vector(i+1);
	END LOOP;
	
	output_vector(N-1) <= w;
	END PROCESS;
END Behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DeslocadorEsq IS
	GENERIC (N : INTEGER := 16);
	PORT( 
		input_vector : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		w: IN STD_LOGIC;
		output_vector : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END DeslocadorEsq;

ARCHITECTURE Behavior OF DeslocadorEsq IS
BEGIN
	PROCESS(input_vector)
	BEGIN 
	Desloc: FOR i IN N-1 DOWNTO 1 LOOP	
		output_vector(i) <= input_vector(i-1);
	END LOOP;
	
	output_vector(0) <= w;
	END PROCESS;
END Behavior;

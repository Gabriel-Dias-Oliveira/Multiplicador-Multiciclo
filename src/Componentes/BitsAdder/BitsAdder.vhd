LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY BitsAdder IS
	PORT ( 
			Multiplicando, Produto: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			--Cin: IN STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			--cout : OUT STD_LOGIC 
			);
END BitsAdder;

ARCHITECTURE Structure OF BitsAdder IS
	COMPONENT FullAdder
		PORT ( 
			Cin, x, y : IN STD_LOGIC;
			s, cout : OUT STD_LOGIC 
			);
	END COMPONENT ;
	SIGNAL COUT_ADDER : STD_LOGIC_VECTOR(1 TO 16);
	
	BEGIN
		Stage00: FullAdder PORT MAP ('0', Multiplicando(0), Produto(0), s(0), COUT_ADDER(1));
		Stage01: FullAdder PORT MAP (COUT_ADDER(1), Multiplicando(1), Produto(1), s(1), COUT_ADDER(2));
		Stage02: FullAdder PORT MAP (COUT_ADDER(2), Multiplicando(2), Produto(2), s(2), COUT_ADDER(3));
		Stage03: FullAdder PORT MAP (COUT_ADDER(3), Multiplicando(3), Produto(3), s(3), COUT_ADDER(4));
		Stage04: FullAdder PORT MAP (COUT_ADDER(4), Multiplicando(4), Produto(4), s(4), COUT_ADDER(5));
		Stage05: FullAdder PORT MAP (COUT_ADDER(5), Multiplicando(5), Produto(5), s(5), COUT_ADDER(6));
		Stage06: FullAdder PORT MAP (COUT_ADDER(6), Multiplicando(6), Produto(6), s(6), COUT_ADDER(7));
		Stage07: FullAdder PORT MAP (COUT_ADDER(7), Multiplicando(7), Produto(7), s(7), COUT_ADDER(8));
		Stage08: FullAdder PORT MAP (COUT_ADDER(8), Multiplicando(8), Produto(8), s(8), COUT_ADDER(9));
		Stage09: FullAdder PORT MAP (COUT_ADDER(9), Multiplicando(9), Produto(9), s(9), COUT_ADDER(10));
		Stage10: FullAdder PORT MAP (COUT_ADDER(10), Multiplicando(10), Produto(10), s(10), COUT_ADDER(11));
		Stage11: FullAdder PORT MAP (COUT_ADDER(11), Multiplicando(11), Produto(11), s(11), COUT_ADDER(12));
		Stage12: FullAdder PORT MAP (COUT_ADDER(12), Multiplicando(12), Produto(12), s(12), COUT_ADDER(13));
		Stage13: FullAdder PORT MAP (COUT_ADDER(13), Multiplicando(13), Produto(13), s(13), COUT_ADDER(14));
		Stage14: FullAdder PORT MAP (COUT_ADDER(14), Multiplicando(14), Produto(14), s(14), COUT_ADDER(15));
		Stage15: FullAdder PORT MAP (COUT_ADDER(15), Multiplicando(15), Produto(15), s(15), COUT_ADDER(16));
END Structure ;
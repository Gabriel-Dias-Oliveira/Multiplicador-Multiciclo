LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Multiplicador IS 
	PORT (
		clk, reset: IN std_logic;
		Multiplicando , Multiplicador : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		R: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		calcula: IN STD_LOGIC;
		pronto: OUT STD_LOGIC
		);
END ENTITY Multiplicador;


ARCHITECTURE Behavior OF Multiplicador IS
	COMPONENT UnidadeControle
		PORT ( 
			Clock, Resetn, calcula : IN STD_LOGIC;
			Multiplicando : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			Multiplicador : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			done, Eentradas, Eproduto, Sentradas, Sproduto : OUT STD_LOGIC
			);
	END COMPONENT;
	SIGNAL Enable_Entradas, Enable_Produto, Mux_Entradas, Mux_Produto : STD_LOGIC;
	
	
	COMPONENT Multiplexador_8 
		PORT (
			Multiplicador, Multiplicador_Deslocado: IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
			S: IN STD_LOGIC;
			f: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
		);
		END COMPONENT;
	SIGNAL Escolha_Multiplexador8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	COMPONENT RegistradorMultiplicador
		PORT ( 
			Multiplicador: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Enable, Reset, Clock : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
		);
	END COMPONENT;

	COMPONENT DeslocadorDir
		GENERIC (N : INTEGER := 8);
		PORT( 
			input_vector : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			w: IN STD_LOGIC;
			output_vector : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL Multiplicador_Deslocado : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	COMPONENT Multiplexador_16 
		PORT (
			A, B: IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
			S: IN STD_LOGIC;
			f: OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
		);
	END COMPONENT;
	SIGNAL Escolha_Multiplexador16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL Escolha_Multiplexador_Produto16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	COMPONENT DeslocadorEsq
		GENERIC (N : INTEGER := 16);
		PORT( 
			input_vector : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			w: IN STD_LOGIC;
			output_vector : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL Multiplicando_Deslocado : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	COMPONENT RegistradorMultiplicando
		PORT ( 
			Multiplicando: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			Enable, Reset, Clock : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
		);
	END COMPONENT;
	
	COMPONENT RegistradorProduto 
		PORT ( 
			Produto: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			Enable, Reset, Clock : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
			);
	END COMPONENT;
	
	COMPONENT BitsAdder
		PORT ( 
			Multiplicando, Produto: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			); 
	END COMPONENT;
	SIGNAL Produto_Parcial : STD_LOGIC_VECTOR(15 DOWNTO 0); 
	SIGNAL Produto: STD_LOGIC_VECTOR(15 DOWNTO 0); 

	SIGNAL Multiplicando16 : STD_LOGIC_VECTOR(15 DOWNTO 0); 
	SIGNAL Multiplicando_Entrada : STD_LOGIC_VECTOR(15 DOWNTO 0); 
	SIGNAL Multiplicador_Alterado : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN	
		Multiplicando_Entrada <= "00000000" & Multiplicando;
		
		Unidade_Controle : UnidadeControle PORT MAP (Clk, reset, calcula, Multiplicando16, Multiplicador_Alterado, pronto, Enable_Entradas, Enable_Produto, Mux_Entradas, Mux_Produto);
		
		Multiplexador_Multiplicador: Multiplexador_8 PORT MAP (Multiplicador_Deslocado, Multiplicador, Mux_Entradas, Escolha_Multiplexador8);
		Deslocador_Direita : DeslocadorDir PORT MAP (Multiplicador_Alterado, '0', Multiplicador_Deslocado);
		Registrador_Multiplicador : RegistradorMultiplicador PORT MAP (Escolha_Multiplexador8, Enable_Entradas, reset, clk, Multiplicador_Alterado);
		
		Multiplexador_Multiplicando: Multiplexador_16 PORT MAP (Multiplicando_Deslocado, Multiplicando_Entrada, Mux_Entradas, Escolha_Multiplexador16);
		Deslocador_Esquerda : DeslocadorEsq PORT MAP (Multiplicando16, '0', Multiplicando_Deslocado);
		Registrador_Multiplicando : RegistradorMultiplicando PORT MAP (Escolha_Multiplexador16, Enable_Entradas, reset, clk, Multiplicando16);
	
		Multiplexador_Produto: Multiplexador_16 PORT MAP (Produto, "0000000000000000", Mux_Produto, Escolha_Multiplexador_Produto16);
		Registrador_Produto : RegistradorProduto PORT MAP (Escolha_Multiplexador_Produto16, Enable_Produto, reset, clk, Produto_Parcial);
		
		Soma_Parcial: BitsAdder PORT MAP (Multiplicando16, Produto_Parcial, Produto);

		R <= Produto_Parcial;
	
END Behavior;

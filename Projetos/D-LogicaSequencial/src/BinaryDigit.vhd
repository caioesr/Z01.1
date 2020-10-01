-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BinaryDigit IS
	PORT (
		clock : IN STD_LOGIC;
		input : IN STD_LOGIC;
		load : IN STD_LOGIC;
		output : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE arch OF BinaryDigit IS

	COMPONENT FlipFlopD IS
		PORT (
			clock : IN std_logic;
			d : IN std_logic;
			clear : IN std_logic;
			preset : IN std_logic;
			q : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Mux2Way IS
		PORT (
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			sel : IN STD_LOGIC;
			q : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL dffout, muxout : std_logic;

BEGIN

	mux2 : Mux2Way PORT MAP(dffout, input, load, muxout);
	ffd : FlipFlopD PORT MAP(clock, muxout, '0', '0', dffout);

	output <= dffout;

END ARCHITECTURE;
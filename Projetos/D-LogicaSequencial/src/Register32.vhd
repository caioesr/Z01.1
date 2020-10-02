-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture arch of Register32 is

	component Register16 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(15 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(15 downto 0)
      );
	end component;

signal signalInput: STD_LOGIC_VECTOR(31 downto 0);
signal signalLoad: STD_LOGIC;
signal signalOutput: STD_LOGIC_VECTOR(31 downto 0);

begin

	signalInput <= input;
	signalLoad <= load;

	q0 : Register16 port map(
		clock,
		signalInput(31 downto 16),
		load,
		signalOutput(31 downto 16)
	);

	q1 : Register16 port map(
		clock,
		signalInput(15 downto 0),
		load,
		signalOutput(15 downto 0)
	);

	output <= signalOutput;

end architecture;

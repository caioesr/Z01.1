-- Elementos de Sistemas
-- by Luciano Soares
-- Register16.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Register16 is

	component Register8 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(7 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component;

	signal sinalinput: STD_LOGIC_VECTOR(15 downto 0);
	signal sinalload: STD_LOGIC;
	signal sinalout: STD_LOGIC_VECTOR(15 downto 0);

begin

	sinalinput <= input;
	sinalload <= load;

	q0: Register8 port map(
							
		clock,
		sinalinput(15 downto 8),
		load,
		sinalout(15 downto 8)
	);
		
	q1: Register8 port map(
						
		clock,
		sinalinput(7 downto 0),
		load,
		sinalout(7 downto 0)
	);

	output <= sinalout;	

end architecture;

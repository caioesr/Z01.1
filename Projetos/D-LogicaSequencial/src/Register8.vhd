-- Elementos de Sistemas
-- by Luciano Soares
-- Register8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture arch of Register8 is

	component BinaryDigit is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC;
			load:    in STD_LOGIC;
			output: out STD_LOGIC
		);
	end component;
	

signal sinalinput: STD_LOGIC_VECTOR(7 downto 0);
signal sinalload: STD_LOGIC;
signal sinalout: STD_LOGIC_VECTOR(7 downto 0);

begin


sinalinput <= input;
sinalload <= load; 


		q0: BinaryDigit port map(
							
							clock,
							sinalinput(0),
							load,
							sinalout(0)
		);
		
		q1: BinaryDigit port map(
							
							clock,
							sinalinput(1),
							load,
							sinalout(1)
		);
		q2: BinaryDigit port map(
							
							clock,
							sinalinput(2),
							load,
							sinalout(2)
		);
		q3: BinaryDigit port map(
							
							clock,
							sinalinput(3),
							load,
							sinalout(3)
		);
		q4: BinaryDigit port map(
							
							clock,
							sinalinput(4),
							load ,
							sinalout(4) 
		);
		q5: BinaryDigit port map(
							
							clock ,
							 sinalinput(5),
							load,
							sinalout(5) 
		);
		q6: BinaryDigit port map(
							
							clock ,
							sinalinput(6),
							load ,
							sinalout(6)
		);	
		
		q7: BinaryDigit port map(
							
							clock ,
							sinalinput(7),
							load ,
							sinalout(7)
		);	
		
	output <= sinalout;	

end architecture;

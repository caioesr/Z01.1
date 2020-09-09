--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin
          
	LEDR(0) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(1) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(2) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(3) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(4) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(5) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(6) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(7) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(8) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	LEDR(9) <= SW(9) and not SW(8) and not SW(7) and SW(6) and SW(5) and not SW(4) and SW(3) and not SW(2) and SW(1) and not SW(0);
	
end rtl;

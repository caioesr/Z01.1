-- Elementos de Sistemas
-- by Luciano Soares
-- Ram8.vhd

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Ram8 IS
    PORT (
        clock : IN STD_LOGIC;
        input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        load : IN STD_LOGIC;
        address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch OF Ram8 IS

    COMPONENT Register16 IS
        PORT (
            clock : IN STD_LOGIC;
            input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            load : IN STD_LOGIC;
            output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Mux8Way16 IS
        PORT (
            a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            c : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            e : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            f : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            g : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            h : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    END COMPONENT;

    COMPONENT DMux8Way IS
        PORT (
            a : IN STD_LOGIC;
            sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            q0 : OUT STD_LOGIC;
            q1 : OUT STD_LOGIC;
            q2 : OUT STD_LOGIC;
            q3 : OUT STD_LOGIC;
            q4 : OUT STD_LOGIC;
            q5 : OUT STD_LOGIC;
            q6 : OUT STD_LOGIC;
            q7 : OUT STD_LOGIC);
    END COMPONENT;

    SIGNAL load0, load1, load2, load3, load4, load5, load6, load7 : STD_LOGIC;
    SIGNAL output0, output1, output2, output3, output4, output5, output6, output7 : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN

    _input : DMux8Way PORT MAP(
        load, address, load0, load1, load2,
        load3, load4, load5, load6, load7
    );

    reg0 : Register16 PORT MAP(clock, input, load0, output0);
    reg1 : Register16 PORT MAP(clock, input, load1, output1);
    reg2 : Register16 PORT MAP(clock, input, load2, output2);
    reg3 : Register16 PORT MAP(clock, input, load3, output3);
    reg4 : Register16 PORT MAP(clock, input, load4, output4);
    reg5 : Register16 PORT MAP(clock, input, load5, output5);
    reg6 : Register16 PORT MAP(clock, input, load6, output6);
    reg7 : Register16 PORT MAP(clock, input, load7, output7);

    _output : Mux8Way16 PORT MAP(
        outpu0, output1, output2, output3, output4,
        output5, output6, output7, address, output
    );

END ARCHITECTURE;
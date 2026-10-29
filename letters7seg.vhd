library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity letters7seg is
    port (
        sel : in STD_LOGIC_VECTOR(2 downto 0);
        sa, sb, sc, sd, se, sf, sg : out STD_LOGIC
    );
end letters7seg;

architecture Behavioral of letters7seg is
    -- Segment order: a b c d e f g; 1 = ON.
    signal segments : STD_LOGIC_VECTOR(6 downto 0);
begin
    with sel select
        segments <= "1111101" when "000", -- a
                    "0011111" when "001", -- b
                    "0001101" when "010", -- c
                    "0111101" when "011", -- d
                    "1000111" when "100", -- f
                    "1111011" when "101", -- g
                    "0000000" when others;

    sa <= segments(6);
    sb <= segments(5);
    sc <= segments(4);
    sd <= segments(3);
    se <= segments(2);
    sf <= segments(1);
    sg <= segments(0);
end Behavioral;
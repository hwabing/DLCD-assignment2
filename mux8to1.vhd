library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1 is
    port (
        d   : in  STD_LOGIC_VECTOR(7 downto 0);
        sel : in  STD_LOGIC_VECTOR(2 downto 0);
        y   : out STD_LOGIC
    );
end mux8to1;

architecture Behavioral of mux8to1 is
begin
    with sel select
        y <= d(0) when "000",
             d(1) when "001",
             d(2) when "010",
             d(3) when "011",
             d(4) when "100",
             d(5) when "101",
             d(6) when "110",
             d(7) when "111",
             '0'  when others;
end Behavioral;
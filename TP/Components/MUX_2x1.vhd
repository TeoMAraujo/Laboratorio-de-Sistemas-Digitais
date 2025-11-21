library ieee; 
use ieee.std_logic_1164.all;

entity Mux_2x1 is
    port(  
        A, B : in std_logic;
        S    : in std_logic;
        Y    : out std_logic  
    );
end Mux_2x1;

architecture data_flow of Mux_2x1 is
begin
    with S select
        Y <= A when "1",
             B when "0",
             '0' when others;
end data_flow;

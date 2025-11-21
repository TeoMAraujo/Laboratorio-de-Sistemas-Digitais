library ieee; 
use ieee.std_logic_1164.all;

entity Demux_2x1 is
    port(  
        A      : in std_logic;
        S      : in std_logic;
        Y0, Y1 : out std_logic  
    );
end Demux_2x1;

architecture data_flow of Demux_2x1 is
begin
    Y0 <= A when S = '0' else '0';
    Y1 <= A when S = '1' else '0';
end data_flow;

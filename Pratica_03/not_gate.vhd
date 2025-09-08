library IEEE;
use IEEE.std_logic_1164.all;

entity not_gate is
port (
    a : in std_logic;
    b : in std_logic;
    y : out std_logic
);
end entity;
architecture rtl of not_gate is
begin
    y <= not(a);
end architecture;


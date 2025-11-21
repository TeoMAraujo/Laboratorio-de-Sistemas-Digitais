library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
    port(  
        D     : in std_logic;
        CLK   : in std_logic;
        Q, Qn : out std_logic 
    );
end d_flip_flop;

architecture behavourial of d_flip_flop is
begin
    ffd_process : process (CLK)
    begin
        if rising_edge(CLK) then 
            Q <=D;
            Qn <= not(D);
        end if;
    end process ffd_process;

end architecture behavourial;

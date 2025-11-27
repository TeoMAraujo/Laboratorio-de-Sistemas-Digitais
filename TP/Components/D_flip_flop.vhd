library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
    generic( 
        W : positive := 1
    );
    port(  
        D     : in  std_logic_vector(W-1 downto 0);
        CLK   : in  std_logic;
        Q, Qn : out std_logic_vector(W-1 downto 0) 
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

library ieee; 
use ieee.std_logic_1164.all;

entity comparator is
    generic (
        W : positive := 1
    );
    port( 
        A, B  : in std_logic_vector(W downto 0);
        equal : out std_logic
    );
end comparator;

architecture structural of comparator is
    signal and_s : std_logic_vector(W downto 0)
begin
    XNOR_loop : for I in 0 to W generate 
        and_s (I) <= A(I) XNOR B(I); 
    end generate;
    And_reduction : process(and_s)
        variable temp : std_logic;
    begin
        temp := 1;
        and_loop : for I in 0 to W loop    
            temp := and_s(I) AND equal;
        end loop;
    equal <=temp;
end structural;





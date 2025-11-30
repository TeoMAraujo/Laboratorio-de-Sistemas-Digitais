 library ieee;
use ieee.std_logic_1164.all;

entity tb_comparator is
end entity;

architecture tb_arch of tb_comparator is
 
    component Comparator
        port (
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            Igual: out std_logic
        );
    end component;
   
    signal s_A    : std_logic_vector(3 downto 0) := (others => '0');
    signal s_B    : std_logic_vector(3 downto 0) := (others => '0');
    signal s_Igual: std_logic;

begin
    
    DUT : Comparador
        port map (
            A     => s_A,
            B     => s_B,
            Igual => s_Igual
        );

    -- Processo de geração de estímulos
    stim_proc : process
    begin
        
        s_A <= "0101";
        s_B <= "0101";
        wait for 10 ns;

        s_A <= "0101";
        s_B <= "1010";
        wait for 10 ns;
        
        s_A <= "1111";
        s_B <= "1111";
        wait for 10 ns;
        
        s_A <= "1000";
        s_B <= "0000";
        wait for 10 ns;
        
        s_A <= "0000";
        s_B <= "0000";
        wait for 10 ns;

        wait;
    end process;

end architecture;

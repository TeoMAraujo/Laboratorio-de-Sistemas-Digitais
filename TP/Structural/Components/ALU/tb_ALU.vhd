 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_tb is
end ALU_tb;

architecture behavior of ALU_tb is

    -- Component Declaration
    component ALU
    generic( W : positive := 8 );
    port(
        A, B   : in  std_logic_vector(W-1 downto 0);
        opcode : in  std_logic_vector(2 downto 0);
        Y      : out std_logic_vector(W-1 downto 0)
    );
    end component;

    -- Signals
    constant W_tb : positive := 8;
    signal s_A      : std_logic_vector(W_tb-1 downto 0) := (others => '0');
    signal s_B      : std_logic_vector(W_tb-1 downto 0) := (others => '0');
    signal s_opcode : std_logic_vector(2 downto 0) := (others => '0');
    signal s_Y      : std_logic_vector(W_tb-1 downto 0);

begin

    -- Instantiate UUT
    uut: ALU generic map (W => W_tb)
    port map (A => s_A, B => s_B, opcode => s_opcode, Y => s_Y);

    -- Test Process
    stim_proc: process
    begin
        report "Starting Simulation..." severity note;

        -- TEST VALUES: A = 10, B = -5
        s_A <= std_logic_vector(to_signed(10, W_tb)); 
        s_B <= std_logic_vector(to_signed(-5, W_tb));
        
        -- 000: Pass B
        s_opcode <= "000"; wait for 10 ns;
        assert(signed(s_Y) = -5) report "Error: 000 failed" severity error;

        -- 001: Pass B
        s_opcode <= "001"; wait for 10 ns;
        assert(signed(s_Y) = -5) report "Error: 001 failed" severity error;

        -- 010: NOT A (NOT 00001010)
        s_opcode <= "010"; wait for 10 ns;
        assert(s_Y = not s_A) report "Error: 010 failed" severity error;

        -- 100: ADD (10 + -5 = 5)
        s_opcode <= "100"; wait for 10 ns;
        assert(signed(s_Y) = 5) report "Error: Add failed" severity error;

        -- 101: SUB (10 - -5 = 15)
        s_opcode <= "101"; wait for 10 ns;
        assert(signed(s_Y) = 15) report "Error: Sub failed" severity error;

        -- 110: Shift Left (10 << 1 = 20)
        s_opcode <= "110"; wait for 10 ns;
        assert(signed(s_Y) = 20) report "Error: Shift Left failed" severity error;

        report "Success! All tests passed." severity note;
        wait;
    end process;

end behavior;

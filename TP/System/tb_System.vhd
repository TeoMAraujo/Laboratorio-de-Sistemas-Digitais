library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity tb_System is
    -- Testbench entity is always empty
end tb_System;

architecture behavior of tb_System is

    -- Component Declaration for the Unit Under Test (UUT)
    component System
        port(
            OPCODE   : in  std_logic_vector(2 downto 0);
            OPERAND1 : in  std_logic_vector(7 downto 0);
            OPERAND2 : in  std_logic_vector(2 downto 0);
            CLK      : in  std_logic;
            RST      : in  std_logic; -- 1. FIX: Added RST port to component
            OUTP     : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Inputs
    signal tb_OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal tb_OPERAND1 : std_logic_vector(7 downto 0) := (others => '0');
    signal tb_OPERAND2 : std_logic_vector(2 downto 0) := (others => '0');
    signal tb_CLK      : std_logic := '0';
    signal tb_RST      : std_logic := '1'; -- 2. FIX: Signal for Reset (Start active)

    -- Outputs
    signal tb_OUTP     : std_logic_vector(7 downto 0);

    -- Clock period definitions
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: System port map (
        OPCODE   => tb_OPCODE,
        OPERAND1 => tb_OPERAND1,
        OPERAND2 => tb_OPERAND2,
        CLK      => tb_CLK,
        RST      => tb_RST,     -- 3. FIX: Connect Reset
        OUTP     => tb_OUTP
    );

    -- Clock process definitions
    clk_process : process
    begin
        tb_CLK <= '0';
        wait for CLK_PERIOD/2;
        tb_CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- 4. FIX: RESET SEQUENCE
        -- Hold reset for a few cycles to clear all registers (DFFs)
        tb_RST <= '1';
        wait for 40 ns; 
        tb_RST <= '0'; -- Release Reset
        wait for CLK_PERIOD;

        -- Test Case 1: Sequential Write 1 (Addr 000)
        tb_OPCODE   <= "000";       -- Write Opcode
        tb_OPERAND2 <= "000";       -- Address 0
        tb_OPERAND1 <= "10101010";  -- Value 1 (0xAA)
        wait for CLK_PERIOD * 2;

        -- Test Case 2: Sequential Write 2 (Addr 001)
        tb_OPCODE   <= "000";
        tb_OPERAND2 <= "001";       -- Address 1
        tb_OPERAND1 <= "01010101";  -- Value 2 (0x55)
        wait for CLK_PERIOD * 2;

        -- Test Case 3: Sequential Write 3 (Addr 010)
        tb_OPCODE   <= "000";
        tb_OPERAND2 <= "010";       -- Address 2
        tb_OPERAND1 <= "11110000";  -- Value 3 (0xF0)
        wait for CLK_PERIOD * 2;

        -- Test Case 4: Sequential Write 4 (Addr 011)
        tb_OPCODE   <= "000";
        tb_OPERAND2 <= "011";       -- Address 3
        tb_OPERAND1 <= "00001111";  -- Value 4 (0x0F)
        wait for CLK_PERIOD * 2;

        -- Test Case 5: Iterate through all possible OPCODES
        
        -- Opcode 0 -> Address 000
        tb_OPCODE   <= "000";
        tb_OPERAND2 <= "000";
        tb_OPERAND1 <= "00000001";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 1 -> Address 001
        tb_OPCODE   <= "001";
        tb_OPERAND2 <= "001";
        tb_OPERAND1 <= "00000010";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 2 -> Address 010
        tb_OPCODE   <= "010";
        tb_OPERAND2 <= "010";
        tb_OPERAND1 <= "00000011";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 3 -> Address 011
        tb_OPCODE   <= "011";
        tb_OPERAND2 <= "011";
        tb_OPERAND1 <= "00000100";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 4 -> Address 000
        tb_OPCODE   <= "100";
        tb_OPERAND2 <= "000";
        tb_OPERAND1 <= "00000101";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 5 -> Address 001
        tb_OPCODE   <= "101";
        tb_OPERAND2 <= "001";
        tb_OPERAND1 <= "00000110";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 6 -> Address 010
        tb_OPCODE   <= "110";
        tb_OPERAND2 <= "010";
        tb_OPERAND1 <= "00000111";
        wait for CLK_PERIOD * 2;
        
        -- Opcode 7 -> Address 011
        tb_OPCODE   <= "111";
        tb_OPERAND2 <= "011";
        tb_OPERAND1 <= "00001000";
        wait for CLK_PERIOD * 2;

        -- End simulation
        report "Simulation Finished" severity note;
        wait;
    end process;

end behavior;
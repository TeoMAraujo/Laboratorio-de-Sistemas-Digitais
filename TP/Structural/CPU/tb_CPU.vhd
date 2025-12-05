library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_CPU is
    -- Testbench has no ports
end tb_CPU;

architecture behavior of tb_CPU is

    -- Component Declaration for the Unit Under Test (UUT)
    component CPU
    port(
        OPCODE   : in  std_logic_vector(2 downto 0);
        OPERAND1 : in  std_logic_vector(7 downto 0);
        OPERAND2 : in  std_logic_vector(2 downto 0);
        CLK      : in  std_logic;
        RST      : in  std_logic;
        OUTP     : out std_logic_vector(7 downto 0)
    );
    end component;

    -- Inputs
    signal OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal OPERAND1 : std_logic_vector(7 downto 0) := (others => '0');
    signal OPERAND2 : std_logic_vector(2 downto 0) := (others => '0');
    signal CLK      : std_logic := '0';
    signal RST      : std_logic := '0';

    -- Outputs
    signal OUTP     : std_logic_vector(7 downto 0);

    -- Clock period definitions
    constant CLK_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: CPU PORT MAP (
        OPCODE   => OPCODE,
        OPERAND1 => OPERAND1,
        OPERAND2 => OPERAND2,
        CLK      => CLK,
        RST      => RST,
        OUTP     => OUTP
    );

    -- Clock process definitions
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- 1. Hold reset state for 100 ns.
        RST <= '1';
        wait for 100 ns;

        -- 2. Release reset and wait for global reset to finish
        RST <= '0';
        wait for CLK_period*2;

        ------------------------------------------------------------------
        -- Test Case 1: Example Operation (e.g., LOAD or ADD)
        -- Modify inputs based on your specific arithmetic_control logic
        ------------------------------------------------------------------
        OPCODE   <= "001";      -- Example Opcode
        OPERAND1 <= "00000101"; -- 5
        OPERAND2 <= "000";      -- Address 0 or Value 0
        wait for CLK_period;

        ------------------------------------------------------------------
        -- Test Case 2: Change Operands
        ------------------------------------------------------------------
        OPCODE   <= "010";      -- Example Opcode
        OPERAND1 <= "00001010"; -- 10
        OPERAND2 <= "001";      -- Address 1 or Value 1
        wait for CLK_period;

        ------------------------------------------------------------------
        -- Test Case 3: Zero Inputs
        ------------------------------------------------------------------
        OPCODE   <= "000";
        OPERAND1 <= "00000000";
        OPERAND2 <= "000";
        wait for CLK_period;

        ------------------------------------------------------------------
        -- Test Case 4: Max Values
        ------------------------------------------------------------------
        OPCODE   <= "111";
        OPERAND1 <= "11111111";
        OPERAND2 <= "111";
        wait for CLK_period;

        -- Wait indefinitely to stop the process looping
        wait;
    end process;

end behavior;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_arithmetic_opcodes is
    -- No ports for a testbench
end tb_arithmetic_opcodes;

architecture behavior of tb_arithmetic_opcodes is

    -- Component Declaration (The Unit Under Test)
    component arithmetic_control
    port(
        OPCODE   : in    std_logic_vector(2 downto 0);
        OPERAND1 : in    std_logic_vector(7 downto 0);
        OPERAND2 : in    std_logic_vector(2 downto 0);
        CLK      : in    std_logic;
        RST      : in    std_logic;
        OUTP     : out   std_logic_vector(7 downto 0);
        ADDR     : out   std_logic_vector(2 downto 0);
        DATA     : inout std_logic_vector(7 downto 0);
        READW    : out   std_logic
    );
    end component;

    -- Inputs
    signal tb_OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal tb_OPERAND1 : std_logic_vector(7 downto 0) := (others => '0'); -- Addr Source for Read
    signal tb_OPERAND2 : std_logic_vector(2 downto 0) := (others => '0'); -- Addr Source for Write
    signal tb_CLK      : std_logic := '0';
    signal tb_RST      : std_logic := '0';

    -- Outputs
    signal tb_OUTP     : std_logic_vector(7 downto 0);
    signal tb_ADDR     : std_logic_vector(2 downto 0);
    signal tb_READW    : std_logic;

    -- Bidirectional Bus
    signal tb_DATA     : std_logic_vector(7 downto 0);

    -- Testbench Internal Drivers
    signal mem_data_drive : std_logic_vector(7 downto 0) := (others => 'Z'); 
    
    -- Clock Period
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the UUT
    uut: arithmetic_control port map (
        OPCODE   => tb_OPCODE,
        OPERAND1 => tb_OPERAND1,
        OPERAND2 => tb_OPERAND2,
        CLK      => tb_CLK,
        RST      => tb_RST,
        OUTP     => tb_OUTP,
        ADDR     => tb_ADDR,
        DATA     => tb_DATA,
        READW    => tb_READW
    );

    -- Clock Generation
    clk_process : process
    begin
        tb_CLK <= '0';
        wait for CLK_PERIOD/2;
        tb_CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- =========================================================
    -- MEMORY SIMULATION (Always returns x"02" if Reading)
    -- =========================================================
    tb_DATA <= mem_data_drive when tb_READW = '0' else (others => 'Z');

    -- =========================================================
    -- STIMULUS PROCESS
    -- =========================================================
    stim_proc: process
    begin
        -- 1. Reset
        tb_RST <= '1';
        wait for CLK_PERIOD * 2;
        tb_RST <= '0';
        wait for CLK_PERIOD;

        -- FIXED INPUTS FOR ALL TESTS
        -- We will always read from Address 5
        -- We will always have Memory return Value 2
        tb_OPERAND1 <= x"05"; 
        
        ------------------------------------------------------------
        -- STEP 1: INITIALIZE ACCUMULATOR
        -- Operation: PASS A ("001")
        -- We force Memory to provide 6 temporarily to load the Acc
        ------------------------------------------------------------
        report "STEP 1: Load Accumulator with 6";
        tb_OPCODE      <= "001"; -- Pass Memory Data to Out
        mem_data_drive <= x"06"; -- Value 6
        
        wait for CLK_PERIOD; -- Latch
        wait for CLK_PERIOD; -- Execute
        
        assert tb_OUTP = x"06" report "Failed to Load 6" severity failure;

        ------------------------------------------------------------
        -- SETUP FOR REMAINING TESTS
        -- Memory will now always return 2
        ------------------------------------------------------------
        mem_data_drive <= x"02"; 

        ------------------------------------------------------------
        -- STEP 2: ADD
        -- Opcode: "100"
        -- Math: Acc(6) + Mem(2) = 8
        ------------------------------------------------------------
        report "STEP 2: ADD (6 + 2 = 8)";
        tb_OPCODE <= "100";
        
        wait for CLK_PERIOD; -- Latch inputs
        wait for CLK_PERIOD; -- Pipeline delay / Execute
        
        assert tb_OUTP = x"08" report "ADD Failed. Expected 8." severity failure;

        ------------------------------------------------------------
        -- STEP 3: SUBTRACT
        -- Opcode: "101"
        -- Math: Acc(8) - Mem(2) = 6
        ------------------------------------------------------------
        report "STEP 3: SUB (8 - 2 = 6)";
        tb_OPCODE <= "101";
        
        wait for CLK_PERIOD; 
        wait for CLK_PERIOD;
        
        assert tb_OUTP = x"06" report "SUB Failed. Expected 6." severity failure;

        ------------------------------------------------------------
        -- STEP 4: AND
        -- Opcode: "011"
        -- Math: Acc(6) AND Mem(2) -> 0110 AND 0010 = 0010 (2)
        ------------------------------------------------------------
        report "STEP 4: AND (6 & 2 = 2)";
        tb_OPCODE <= "011";
        
        wait for CLK_PERIOD; 
        wait for CLK_PERIOD;
        
        assert tb_OUTP = x"02" report "AND Failed. Expected 2." severity failure;

        ------------------------------------------------------------
        -- STEP 5: SHIFT LEFT (SLL)
        -- Opcode: "110"
        -- Math: Shift Acc(2) Left by 1 -> 4
        -- (Note: SLL ignores Memory Input in your ALU logic)
        ------------------------------------------------------------
        report "STEP 5: SLL (2 << 1 = 4)";
        tb_OPCODE <= "110";
        
        wait for CLK_PERIOD; 
        wait for CLK_PERIOD;
        
        assert tb_OUTP = x"04" report "SLL Failed. Expected 4." severity failure;

        ------------------------------------------------------------
        -- STEP 6: SHIFT RIGHT (SRL)
        -- Opcode: "111"
        -- Math: Shift Acc(4) Right by 1 -> 2
        ------------------------------------------------------------
        report "STEP 6: SRL (4 >> 1 = 2)";
        tb_OPCODE <= "111";
        
        wait for CLK_PERIOD; 
        wait for CLK_PERIOD;
        
        assert tb_OUTP = x"02" report "SRL Failed. Expected 2." severity failure;

        report "ALL OPCODE TESTS PASSED";
        wait;
    end process;

end behavior;
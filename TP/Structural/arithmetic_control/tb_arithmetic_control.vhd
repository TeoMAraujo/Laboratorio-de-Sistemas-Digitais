library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arithmetic_control_tb is
end arithmetic_control_tb;

architecture sim of arithmetic_control_tb is

    component arithmetic_control
    port (
        OPCODE   : in    std_logic_vector(2 downto 0);
        OPERAND1 : in    std_logic_vector(7 downto 0);
        OPERAND2 : in    std_logic_vector(2 downto 0);
        CLK      : in    std_logic;
        RST      : in    std_logic; -- FIXED: Added missing RST port
        OUTP     : out   std_logic_vector(7 downto 0);
        ADDR     : out   std_logic_vector(2 downto 0);
        DATA     : inout std_logic_vector(7 downto 0);
        READW    : out   std_logic
    );
    end component;

    signal s_OPCODE   : std_logic_vector(2 downto 0) := (others => '0');
    signal s_OPERAND1 : std_logic_vector(7 downto 0) := (others => '0');
    signal s_OPERAND2 : std_logic_vector(2 downto 0) := (others => '0');
    signal s_CLK      : std_logic := '0';
    signal s_RST      : std_logic := '0'; -- FIXED: Signal for Reset
    
    signal s_OUTP     : std_logic_vector(7 downto 0);
    signal s_ADDR     : std_logic_vector(2 downto 0);
    signal s_READW    : std_logic;

    signal s_DATA     : std_logic_vector(7 downto 0);
    signal s_TB_DATA  : std_logic_vector(7 downto 0) := (others => '0'); 

    constant clk_period : time := 20 ns;

begin

    uut: arithmetic_control
    port map (
        OPCODE   => s_OPCODE,
        OPERAND1 => s_OPERAND1,
        OPERAND2 => s_OPERAND2,
        CLK      => s_CLK,
        RST      => s_RST,    -- FIXED: Connected Reset
        OUTP     => s_OUTP,
        ADDR     => s_ADDR,
        DATA     => s_DATA,
        READW    => s_READW
    );

    -- Bidirectional Bus Logic: TB drives when READW='0' (Read by DUT), releases (Z) when READW='1' (Write by DUT)
    s_DATA <= s_TB_DATA when s_READW = '0' else (others => 'Z');

    clk_process: process
    begin
        s_CLK <= '0';
        wait for clk_period/2;
        s_CLK <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        report "Starting Arithmetic Control Testbench..." severity note;
        
        -- 1. Reset Generation
        s_RST <= '1';
        wait for clk_period * 2;
        s_RST <= '0';
        wait for clk_period;

        -- Initialize Inputs
        s_OPCODE   <= "111"; 
        s_OPERAND1 <= x"00";
        s_OPERAND2 <= "000";
        s_TB_DATA  <= x"00";
        wait for clk_period;

        -- ---------------------------------------------------------
        -- Test 1: Opcode 000 (Write Mode - DUT drives bus)
        -- ---------------------------------------------------------
        report "Test 1: Check Write Mode (Opcode 000)";
        s_OPCODE   <= "000";
        s_OPERAND1 <= x"AA"; 
        s_OPERAND2 <= "011";
        
        wait for clk_period; -- Wait for Cycle 1 to latch OPCODE
        
        assert (s_READW = '1') 
            report "Error Test 1: READW should be '1' for Opcode 000" severity error;
            
        -- Allow small delta time for bidirectional bus to resolve
        wait for 1 ns; 
        
        if s_DATA = x"AA" then
            report "Test 1 Passed: Bus correctly driven with xAA by DUT";
        else
            report "Error Test 1: Bus Value Mismatch. Expected AA, got " & 
                   integer'image(to_integer(unsigned(s_DATA))) severity error;
        end if;
        
        -- Align back to clock edge
        wait until falling_edge(s_CLK);

        -- ---------------------------------------------------------
        -- Test 2: Opcode 100 (ALU Mode - TB drives bus)
        -- ---------------------------------------------------------
        report "Test 2: Check ALU Mode (Opcode 100)";
        s_OPCODE   <= "100"; -- Assume this is ADD or similar
        s_TB_DATA  <= x"55"; -- Data provided by TB on bus
        
        wait for clk_period; -- Wait for Cycle 1 Latch (Opcode latch)
        
        assert (s_READW = '0') 
            report "Error Test 2: READW should be '0' for Opcode 100" severity error;

        assert (s_DATA = x"55")
            report "Error Test 2: Bus contention or mismatch" severity error;

        -- CRITICAL: The design is pipelined. 
        -- Cycle 1: Opcode detected, Bus direction set to Input.
        -- Cycle 2: Data from Bus (x55) is latched into 'toALUB' (U_DFF5).
        -- Cycle 3: ALU produces result at OUTP.
        
        wait for clk_period; -- Wait for Cycle 2 Latch (Data latch)
        
        report "ALU Output at Cycle 2 (valid): " & integer'image(to_integer(unsigned(s_OUTP)));

        wait for clk_period * 2;

        report "Testbench Completed";
        wait;
    end process;

end sim;
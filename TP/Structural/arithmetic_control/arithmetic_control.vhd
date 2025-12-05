library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arithmetic_control is
    port (
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
end arithmetic_control;

architecture structural of arithmetic_control is
    -- Signals for Pipeline Stage 1 (Inputs)
    signal toALUS_Comparator   : std_logic_vector(2 downto 0); -- Latched Opcode
    signal toDemuxA            : std_logic_vector(7 downto 0); -- Latched Operand 1 (Data/Addr Source)
    signal toMuxA              : std_logic_vector(2 downto 0); -- Latched Operand 2 (Write Address)
    
    -- Signals for Control Logic
    signal toDemuxSel_read_dff : std_logic;
    signal demux_select_inv    : std_logic;
    signal toMuxS              : std_logic;

    -- Signals for Demux/Mux Interconnect
    signal demux_to_data_bus   : std_logic_vector(7 downto 0); -- Path for WRITE Data
    signal demux_to_pipe       : std_logic_vector(7 downto 0); -- Path for READ Address (needs delay)
    signal pipe_to_mux         : std_logic_vector(7 downto 0); -- Delayed Address Source
    alias  pipe_to_mux_addr is pipe_to_mux(2 downto 0);        -- Just the 3 address bits

    -- Signals for Pipeline Stage 2 (ALU/Accumulator)
    signal opcode_pipe1        : std_logic_vector(2 downto 0); -- Delayed Opcode for ALU
    signal alu_result          : std_logic_vector(7 downto 0); -- Result from ALU
    signal accumulator_val     : std_logic_vector(7 downto 0); -- Value stored in Accumulator (Input B)

begin

    -- ==========================================
    -- STAGE 1: Latch Inputs & Decode
    -- ==========================================
    
    -- 1. Latch Opcode
    U_DFF1: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => OPCODE, CLK => CLK, RST => RST, Q => toALUS_Comparator, Qn => open);

    -- 2. Latch Operand 1 (Data for Write, or Address for Read)
    U_DFF2: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => OPERAND1, CLK => CLK, RST => RST, Q => toDemuxA, Qn => open);

    -- 3. Latch Operand 2 (Address for Write)
    U_DFF3: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => OPERAND2, CLK => CLK, RST => RST, Q => toMuxA, Qn => open);

    -- 4. Comparator: Check for WRITE Opcode ("000")
    U_COMP: entity work.comparator
        generic map (W => 3)
        port map (A => toALUS_Comparator, B => "000", equal => toDemuxSel_Read_dff);

    demux_select_inv <= not toDemuxSel_Read_dff;

    -- 5. Demux: Splits path based on Read vs Write
    --    If Write (000): Send Oper1 to Data Bus.
    --    If Read (ALU):  Send Oper1 to Address Pipeline.
    U_DEMUX: entity work.Demux_1x2
        generic map (W => 8)
        port map (
            A  => toDemuxA, 
            S  => demux_select_inv, 
            Y0 => demux_to_data_bus, -- To Data Bus (Write Mode)
            Y1 => demux_to_pipe      -- To Address Mux (Read Mode)
        );

    -- 6. Drive Data Bus (Write Mode Only)
    DATA <= demux_to_data_bus when toDemuxSel_Read_dff = '1' else (others => 'Z');

    -- ==========================================
    -- PIPELINE REGISTER (The Missing Piece)
    -- ==========================================
    
    -- This DFF delays the Read Address by 1 cycle.
    -- This ensures Memory Read happens in Cycle 2, aligned with the ALU.
    U_DFF_PIPE: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => demux_to_pipe, CLK => CLK, RST => RST, Q => pipe_to_mux, Qn => open);

    -- ==========================================
    -- ADDRESS SELECTION
    -- ==========================================
    
    toMuxS <= toDemuxSel_Read_dff; -- '1' for Write, '0' for Read/ALU

    -- Mux Selects Address:
    -- S=1 (Write): Use toMuxA (Operand 2) -> Immediate Address
    -- S=0 (Read):  Use pipe_to_mux_addr (Operand 1 Delayed) -> Cycle 2 Address
    U_MUX: entity work.Mux_2x1
        generic map(W => 3)
        port map (A => pipe_to_mux_addr, B => toMuxA, S => toMuxS, Y => ADDR);

    -- ==========================================
    -- STAGE 2: ALU & Accumulator
    -- ==========================================

    -- 7. Delay Opcode to align with Cycle 2
    U_DFFALU1: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => toALUS_Comparator, CLK => CLK, RST => RST, Q => opcode_pipe1, Qn => open);

    -- 8. The ALU
    --    Input A: DATA (arriving from Memory in Cycle 2)
    --    Input B: accumulator_val (Feedback from previous result)
    U_ALU: entity work.ALU
        generic map (W => 8)
        port map (
            A      => DATA,            
            B      => accumulator_val,         
            opcode => opcode_pipe1, 
            Y      => alu_result
        );

    -- 9. The ACCUMULATOR
    --    Stores the ALU result for the next operation.
    U_DFF_ACC: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => alu_result, CLK => CLK, RST => RST, Q => accumulator_val, Qn => open);

    -- Outputs
    READW <= toDemuxSel_Read_dff;
    OUTP  <= alu_result;

end structural;
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
    -- data path signals
    signal toALUB              : std_logic_vector(7 downto 0);
    signal toMuxA              : std_logic_vector(2 downto 0);
    signal toMuxB              : std_logic_vector(7 downto 0);
    alias  toMuxBAddr is toMuxB (2 downto 0);
    
    -- control signals
    signal toMuxS              : std_logic;
    signal toDemuxA            : std_logic_vector(7 downto 0);
    signal toDemuxSel_read_dff : std_logic;
    signal demux_to_data_bus   : std_logic_vector(7 downto 0); 
    
    -- pipeline signals
    signal op_stage1           : std_logic_vector(2 downto 0); 
    signal op_stage2           : std_logic_vector(2 downto 0); 
    signal op_stage3           : std_logic_vector(2 downto 0); 
    signal op_stage4           : std_logic_vector(2 downto 0); 

    -- data pipeline
    signal data_stage3         : std_logic_vector(7 downto 0); -- ALU Input A

begin
-- stage 1
    U_DFF1: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => OPCODE, CLK => CLK, RST => RST, Q => op_stage1, Qn => open);
 
    U_DFF2: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => OPERAND1, CLK => CLK, RST => RST, Q => toDemuxA, Qn => open);

    U_DFF3: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => OPERAND2, CLK => CLK, RST => RST, Q => toMuxA, Qn => open);
          
    U_COMP: entity work.comparator
        generic map (W => 3)
        port map (A => op_stage1, B => "000", equal => toDemuxSel_Read_dff);

    U_DEMUX: entity work.Demux_1x2
        generic map (W => 8)
        port map (A => toDemuxA, S => not(toDemuxSel_Read_dff), Y0 => demux_to_data_bus, Y1 => toMuxB);
    
    -- tri-state logic
    DATA <= demux_to_data_bus when toDemuxSel_Read_dff = '1' else (others => 'Z');
    
    U_DFF4: entity work.D_flip_flop
        generic map (W => 1)
        port map (D(0) => toDemuxSel_Read_dff, CLK => CLK, RST => RST, Q(0) => toMuxS, Qn => open);

    U_MUX: entity work.Mux_2x1
        generic map(W => 3)
        port map (A => toMuxA, B => toMuxBAddr, S => toMuxS, Y => ADDR);
    
-- stage 2
    U_DFFALU1: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => op_stage1, CLK => CLK, RST => RST, Q => op_stage2, Qn => open);

 -- stage 3
    U_DFFALU2: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => op_stage2, CLK => CLK, RST => RST, Q => op_stage3, Qn => open);
    
    -- data capture (latest data)
    U_DFF5: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => DATA, CLK => CLK, RST => RST, Q => data_stage3, Qn => open);

    -- stage 4
    U_DFFALU3: entity work.D_flip_flop
        generic map (W => 3)
        port map (D => op_stage3, CLK => CLK, RST => RST, Q => op_stage4, Qn => open);

    -- data shift (previous data)
    U_DFF6: entity work.D_flip_flop
        generic map (W => 8)
        port map (D => data_stage3, CLK => CLK, RST => RST, Q => toALUB, Qn => open);
 
    -- ALU
    U_ALU: entity work.ALU
        generic map (W => 8)
        port map (
            A      => data_stage3, -- newest data
            B      => toALUB,      -- dld data (shifted)
            opcode => op_stage4,   
            Y      => OUTP
        );
    
    READW <= toDemuxSel_Read_dff;

end structural;

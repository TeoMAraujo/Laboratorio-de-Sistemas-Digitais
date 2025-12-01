library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arithmetic_control is
    port (
        OPCODE   : in    std_logic_vector(2 downto 0);
        OPERAND1 : in    std_logic_vector(7 downto 0);
        OPERAND2 : in    std_logic_vector(2 downto 0);
        CLK      : in    std_logic;
        OUTP     : out   std_logic_vector(7 downto 0);
        ADDR     : out   std_logic_vector(2 downto 0);
        DATA     : inout std_logic_vector(7 downto 0);
        READW    : out   std_logic
    );
end arithmetic_control;

architecture structural of arithmetic_control is
    signal toALUB                 : std_logic_vector(7 downto 0);
    signal toMuxA                 : std_logic_vector(2 downto 0);
    signal toMuxB                 : std_logic_vector(7 downto 0);

    alias toMuxBAddr is toMuxB (2 downto 0);
    
    signal toMuxS                 : std_logic;
    signal toDemuxA               : std_logic_vector(7 downto 0);
    signal toDemuxSel_read_dff    : std_logic;
    signal toALUS_Comparator      : std_logic_vector(2 downto 0);

    -- tri-state 
    signal demux_to_data_bus      : std_logic_vector(7 downto 0); 
    
    -- Pipeline 
    signal opcode_pipe1           : std_logic_vector(2 downto 0);
    signal opcode_pipe2           : std_logic_vector(2 downto 0);
    signal opcode_pipe3           : std_logic_vector(2 downto 0);

begin
    U_DFF1: entity work.D_flip_flop
        generic map (W => 3)
        port map (
            D   => OPCODE,            
            CLK => CLK,
            Q   => toALUS_Comparator, 
            Qn  => open
        );
 
    U_DFF2: entity work.D_flip_flop
        generic map (W => 8)
        port map (
            D   => OPERAND1, 
            CLK => CLK,
            Q   => toDemuxA, 
            Qn  => open
        );

    U_DFF3: entity work.D_flip_flop
        generic map (W => 3)
        port map (
            D   => OPERAND2, 
            CLK => CLK,
            Q   => toMuxA,    
            Qn  => open
        );

    U_COMP: entity work.comparator
        generic map (W => 3)
        port map (
            A     => toALUS_Comparator, 
            B     => "000",
            equal => toDemuxSel_Read_dff
        );

    U_DEMUX: entity work.Demux_1x2
        generic map (W => 8)
        port map (
            A  => toDemuxA, 
            S  => not(toDemuxSel_Read_dff),
            Y0 => demux_to_data_bus,    
            Y1 => toMuxB
        );
    
    -- tri-state
    DATA <= demux_to_data_bus when toDemuxSel_Read_dff = '0' else (others => 'Z');
    
    U_DFF4: entity work.D_flip_flop
        generic map (W => 1)
        port map (
            D(0)   => toDemuxSel_Read_dff, 
            CLK    => CLK,
            Q(0)   => toMuxS,              
            Qn     => open
        );


    U_MUX: entity work.Mux_2x1
        generic map(W => 3)
        port map (
            A => toMuxA, 
            B => toMuxBAddr,
            S => toMuxS, 
            Y => ADDR
        );

    U_DFF5: entity work.D_flip_flop
        generic map (W => 8)
        port map (
            D   => DATA,   
            CLK => CLK,
            Q   => toALUB, 
            Qn  => open
        );
 
    U_DFFALU1: entity work.D_flip_flop
        generic map (W => 3)
        port map (
            D   => toALUS_Comparator,            
            CLK => CLK,
            Q   => opcode_pipe1, 
            Qn  => open
        );

    U_DFFALU2: entity work.D_flip_flop
        generic map (W => 3)
        port map (
            D   => opcode_pipe1,            
            CLK => CLK,
            Q   => opcode_pipe2, 
            Qn  => open
        );

    U_DFFALU3: entity work.D_flip_flop
        generic map (W => 3)
        port map (
            D   => opcode_pipe2,            
            CLK => CLK,
            Q   => opcode_pipe3, 
            Qn  => open
        );

    U_ALU: entity work.ALU
        generic map (W => 8)
        port map (
            A      => DATA, 
            B      => toALUB, 
            opcode => opcode_pipe3, 
            Y      => OUTP
        );
    
    READW <= toDemuxSel_Read_dff;
end structural;

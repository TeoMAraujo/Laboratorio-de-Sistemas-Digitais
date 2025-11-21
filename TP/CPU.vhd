library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU is
    port (
        OPCODE             : in    std_logic_vector(2 downto 0);
        OPERAND1, OPERAND2 : in    std_logic_vector(7 downto 0);
        CLK                : in    std_logic;
        OUTP               : out   std_logic_vector(7 downto 0);
        ADDR               : out   std_logic_vector(7 downto 0);
        DATA               : inout std_logic_vector(7 downto 0);
        READW              : out   std_logic
    );
end CPU;

architecture structural of CPU is
-- wires    
    signal toALUB                 : std_logic_vector(7 downto 0);
    signal toMuxA                 : std_logic_vector(7 downto 0);
    signal toMuxB                 : std_logic_vector(7 downto 0);
    signal toMuxS                 : std_logic_vector(7 downto 0);
    signal toDemuxA               : std_logic_vector(7 downto 0);
    signal toDemuxSel_read_dff    : std_logic_vector(7 downto 0);
    signal toALUS_Comparator      : std_logic_vector(2 downto 0);
begin
    -- part where the inputs are stored, until the next clock
    U_DFF1: entity work.d_flip_flop
        port map (
            D   => OPCODE,
            CLK => CLK,
            Q   => toALUS_Comparator,
            Qn  => open
        );
 
    U_DFF2: entity work.d_flip_flop
        port map (
            D   => OPERAND1,
            CLK => CLK,
            Q   => toDemuxA,
            Qn  => open
        );

    U_DFF3: entity work.d_flip_flop
        port map (
            D   => OPERAND2,
            CLK => CLK,
            Q   => toMuxA,
            Qn  => open
        );

    U_COMP: entity work.comparator
        generic map (
            W => 3 
        )
        port map (
            A     => toALUS_Comparator,
            B     => '000',
            equal => toDemuxSel_Read_dff
        );
    U_DEMUX: entity work.Demux_1x2
        port map (
            A  => toDemuxA,
            S  => toDemuxSel_Read_dff,
            Y0 => toMuxB,
            Y1 => DATA
        );

    U_DFF4: entity work.d_flip_flop
        port map (
            D   => toDemuxSel_Read_dff,
            CLK => CLK,
            Q   => toMuxS,
            Qn  => open
        );


    U_MUX: entity work.Mux_2x1
        port map (
            A  => toMuxA,
            B  => toMuxB,
            S  => toMuxS,
            Y  => ADDR
        );

    U_DFF5: entity work.d_flip_flop
        port map (
            D   => DATA,
            CLK => CLK,
            Q   => toALUB,
            Qn  => open
        );


    U_ALU: entity work.ALU
        generic map (
            W => 8
        )
        port map (
            A      => DATA,
            B      => toALUB,
            opcode => toALUS_Comparator,
            Y      => OUTP
        );


end structural;

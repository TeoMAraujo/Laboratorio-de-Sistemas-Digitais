library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System is
    port(
        OPCODE      : in    std_logic_vector(2 downto 0);
        OPERAND1    : in    std_logic_vector(7 downto 0);
        OPERAND2    : in    std_logic_vector(2 downto 0);
        CLK         : in    std_logic;
        OUTP        : out   std_logic_vector(7 downto 0)
    );
end System;

architecture structural of System is 
    signal fsm_WRITE     : std_logic;
    signal fake_opcode   : std_logic_vector(2 downto 0);
begin

    fake_opcode <= "000" when fsm_WRITE = '1' else OPCODE;

    U_FSM : entity work.FSM 
        port map (
            CLK    => CLK,
            Opcode => OPCODE,
            READW  => fsm_WRITE
        );

    U_CPU : entity work.CPU 
        port map (
            OPCODE    => fake_opcode,
            OPERAND1  => OPERAND1,
            OPERAND2  => OPERAND2,
            CLK       => CLK,
            OUTP      => OUTP 
        );
    
end structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity somador_3bits is
    Port (
        SW    : in  std_logic_vector(6 downto 0); -- Input switches
        LEDR  : out std_logic_vector(3 downto 0)  -- Output LEDs
    );
end entity;

architecture Behavioral of somador_3bits is

    procedure full_adder(
        A     : in  std_logic;
        B     : in  std_logic;
        CIN   : in  std_logic;
        S     : out std_logic;
        COUT  : out std_logic
    ) is
    begin
        S    := A xor B xor CIN;
        COUT := (A and B) or (A and CIN) or (B and CIN);
    end procedure;

begin

    process(SW)
        -- Variables are used for temporary storage inside a process
        variable c       : std_logic_vector(3 downto 0); -- Internal carry signals
        variable temp_s  : std_logic_vector(2 downto 0); -- Internal sum signals
    begin
        -- The carry-in for the first bit is the value of SW(6)
        c(0) := SW(6);

        -- Loop to implement the 3-bit adder using the full_adder procedure
        for i in 0 to 2 loop
            -- Connects inputs to the procedure:
            -- A(i) -> SW(i)
            -- B(i) -> SW(i+3)
            -- CIN -> c(i)
            -- S -> temp_s(i)

            -- COUT -> c(i+1)
            full_adder(SW(i), SW(i+3), c(i), temp_s(i), c(i+1));
        end loop;

        -- Assign the final results from the temporary variables to the output ports
        -- The 3-bit sum (S) is mapped to LEDs(2 downto 0)
        LEDR (2 downto 0)<= temp_s;
        -- The final carry-out (COUT) is mapped to LEDs(3)
        LEDR(3)          <= c(3);
    end process;

end architecture;




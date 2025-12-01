-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/30/2025 23:57:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	arithmetic_control IS
    PORT (
	OPCODE : IN std_logic_vector(2 DOWNTO 0);
	OPERAND1 : IN std_logic_vector(7 DOWNTO 0);
	OPERAND2 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	OUTP : OUT std_logic_vector(7 DOWNTO 0);
	ADDR : OUT std_logic_vector(2 DOWNTO 0);
	DATA : INOUT std_logic_vector(7 DOWNTO 0);
	READW : OUT std_logic
	);
END arithmetic_control;

-- Design Ports Information
-- OUTP[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READW	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arithmetic_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPCODE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OPERAND1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OPERAND2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OUTP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_READW : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \OUTP[0]~output_o\ : std_logic;
SIGNAL \OUTP[1]~output_o\ : std_logic;
SIGNAL \OUTP[2]~output_o\ : std_logic;
SIGNAL \OUTP[3]~output_o\ : std_logic;
SIGNAL \OUTP[4]~output_o\ : std_logic;
SIGNAL \OUTP[5]~output_o\ : std_logic;
SIGNAL \OUTP[6]~output_o\ : std_logic;
SIGNAL \OUTP[7]~output_o\ : std_logic;
SIGNAL \ADDR[0]~output_o\ : std_logic;
SIGNAL \ADDR[1]~output_o\ : std_logic;
SIGNAL \ADDR[2]~output_o\ : std_logic;
SIGNAL \READW~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \U_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~7_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Add0~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~3_cout\ : std_logic;
SIGNAL \U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_ALU|Add0~13_combout\ : std_logic;
SIGNAL \U_ALU|Add0~9_combout\ : std_logic;
SIGNAL \U_ALU|Add0~5\ : std_logic;
SIGNAL \U_ALU|Add0~10_combout\ : std_logic;
SIGNAL \U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~16_combout\ : std_logic;
SIGNAL \U_ALU|Add0~11\ : std_logic;
SIGNAL \U_ALU|Add0~17_combout\ : std_logic;
SIGNAL \U_ALU|Add0~19_combout\ : std_logic;
SIGNAL \U_ALU|Add0~20_combout\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_ALU|Add0~25_combout\ : std_logic;
SIGNAL \U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_ALU|Add0~18\ : std_logic;
SIGNAL \U_ALU|Add0~22_combout\ : std_logic;
SIGNAL \U_ALU|Add0~26_combout\ : std_logic;
SIGNAL \U_ALU|Add0~27_combout\ : std_logic;
SIGNAL \U_ALU|Add0~28_combout\ : std_logic;
SIGNAL \U_ALU|Add0~23\ : std_logic;
SIGNAL \U_ALU|Add0~29_combout\ : std_logic;
SIGNAL \U_ALU|Add0~31_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~32_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~36_combout\ : std_logic;
SIGNAL \U_ALU|Add0~38_combout\ : std_logic;
SIGNAL \U_ALU|Add0~37_combout\ : std_logic;
SIGNAL \U_ALU|Add0~33_combout\ : std_logic;
SIGNAL \U_ALU|Add0~30\ : std_logic;
SIGNAL \U_ALU|Add0~34_combout\ : std_logic;
SIGNAL \U_ALU|Add0~39_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~40_combout\ : std_logic;
SIGNAL \U_ALU|Add0~35\ : std_logic;
SIGNAL \U_ALU|Add0~41_combout\ : std_logic;
SIGNAL \U_ALU|Add0~43_combout\ : std_logic;
SIGNAL \U_ALU|Add0~44_combout\ : std_logic;
SIGNAL \U_ALU|Add0~45_combout\ : std_logic;
SIGNAL \U_ALU|Add0~42\ : std_logic;
SIGNAL \U_ALU|Add0~46_combout\ : std_logic;
SIGNAL \U_ALU|Add0~48_combout\ : std_logic;
SIGNAL \U_ALU|Add0~49_combout\ : std_logic;
SIGNAL \U_ALU|Add0~50_combout\ : std_logic;
SIGNAL \U_ALU|Add0~51_combout\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \U_DFF3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector2~0_combout\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector1~0_combout\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \U_DFF3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \U_MUX|Selector0~0_combout\ : std_logic;
SIGNAL \U_DFF2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_DFF4|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_DFF3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_DFF5|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_COMP|ALT_INV_Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OPCODE <= OPCODE;
ww_OPERAND1 <= OPERAND1;
ww_OPERAND2 <= OPERAND2;
ww_CLK <= CLK;
OUTP <= ww_OUTP;
ADDR <= ww_ADDR;
READW <= ww_READW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U_COMP|ALT_INV_Equal0~0_combout\ <= NOT \U_COMP|Equal0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X56_Y54_N30
\DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \U_COMP|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\OUTP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~8_combout\,
	devoe => ww_devoe,
	o => \OUTP[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\OUTP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~15_combout\,
	devoe => ww_devoe,
	o => \OUTP[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\OUTP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~20_combout\,
	devoe => ww_devoe,
	o => \OUTP[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\OUTP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~27_combout\,
	devoe => ww_devoe,
	o => \OUTP[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\OUTP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~32_combout\,
	devoe => ww_devoe,
	o => \OUTP[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\OUTP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~39_combout\,
	devoe => ww_devoe,
	o => \OUTP[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\OUTP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~44_combout\,
	devoe => ww_devoe,
	o => \OUTP[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\OUTP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|Add0~51_combout\,
	devoe => ww_devoe,
	o => \OUTP[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\READW~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_COMP|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \READW~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N15
\OPCODE[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: FF_X57_Y52_N11
\U_DFF1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|Q\(0));

-- Location: IOIBUF_X56_Y54_N8
\OPCODE[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: FF_X57_Y52_N31
\U_DFF1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|Q\(1));

-- Location: IOIBUF_X60_Y54_N8
\OPCODE[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: FF_X57_Y52_N1
\U_DFF1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF1|Q\(2));

-- Location: LCCOMB_X57_Y52_N30
\U_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COMP|Equal0~0_combout\ = (!\U_DFF1|Q\(0) & (!\U_DFF1|Q\(1) & !\U_DFF1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(0),
	datac => \U_DFF1|Q\(1),
	datad => \U_DFF1|Q\(2),
	combout => \U_COMP|Equal0~0_combout\);

-- Location: IOIBUF_X56_Y54_N29
\DATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

-- Location: LCCOMB_X56_Y52_N16
\U_ALU|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~7_combout\ = (!\U_DFF1|Q\(2) & (((\DATA[0]~input_o\ & \U_DFF1|Q\(0))) # (!\U_DFF1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(1),
	datab => \U_DFF1|Q\(2),
	datac => \DATA[0]~input_o\,
	datad => \U_DFF1|Q\(0),
	combout => \U_ALU|Add0~7_combout\);

-- Location: FF_X56_Y52_N5
\U_DFF5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(0));

-- Location: IOIBUF_X58_Y54_N22
\DATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: LCCOMB_X57_Y52_N4
\U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~0_combout\ = (\U_DFF1|Q\(0) & (((\U_DFF1|Q\(2) & \DATA[1]~input_o\)))) # (!\U_DFF1|Q\(0) & (!\DATA[0]~input_o\ & (!\U_DFF1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[0]~input_o\,
	datab => \U_DFF1|Q\(0),
	datac => \U_DFF1|Q\(2),
	datad => \DATA[1]~input_o\,
	combout => \U_ALU|Add0~0_combout\);

-- Location: LCCOMB_X56_Y52_N22
\U_ALU|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~1_combout\ = \U_DFF5|Q\(0) $ (\U_DFF1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFF5|Q\(0),
	datac => \U_DFF1|Q\(0),
	combout => \U_ALU|Add0~1_combout\);

-- Location: LCCOMB_X57_Y52_N12
\U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~3_cout\ = CARRY(\U_DFF1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFF1|Q\(0),
	datad => VCC,
	cout => \U_ALU|Add0~3_cout\);

-- Location: LCCOMB_X57_Y52_N14
\U_ALU|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~4_combout\ = (\DATA[0]~input_o\ & ((\U_ALU|Add0~1_combout\ & (\U_ALU|Add0~3_cout\ & VCC)) # (!\U_ALU|Add0~1_combout\ & (!\U_ALU|Add0~3_cout\)))) # (!\DATA[0]~input_o\ & ((\U_ALU|Add0~1_combout\ & (!\U_ALU|Add0~3_cout\)) # 
-- (!\U_ALU|Add0~1_combout\ & ((\U_ALU|Add0~3_cout\) # (GND)))))
-- \U_ALU|Add0~5\ = CARRY((\DATA[0]~input_o\ & (!\U_ALU|Add0~1_combout\ & !\U_ALU|Add0~3_cout\)) # (!\DATA[0]~input_o\ & ((!\U_ALU|Add0~3_cout\) # (!\U_ALU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[0]~input_o\,
	datab => \U_ALU|Add0~1_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~3_cout\,
	combout => \U_ALU|Add0~4_combout\,
	cout => \U_ALU|Add0~5\);

-- Location: LCCOMB_X57_Y52_N0
\U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~6_combout\ = (\U_DFF1|Q\(1) & (\U_ALU|Add0~0_combout\)) # (!\U_DFF1|Q\(1) & (((\U_ALU|Add0~4_combout\ & \U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~0_combout\,
	datab => \U_ALU|Add0~4_combout\,
	datac => \U_DFF1|Q\(2),
	datad => \U_DFF1|Q\(1),
	combout => \U_ALU|Add0~6_combout\);

-- Location: LCCOMB_X56_Y52_N4
\U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~8_combout\ = (\U_ALU|Add0~6_combout\) # ((\U_ALU|Add0~7_combout\ & \U_DFF5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~7_combout\,
	datac => \U_DFF5|Q\(0),
	datad => \U_ALU|Add0~6_combout\,
	combout => \U_ALU|Add0~8_combout\);

-- Location: IOIBUF_X58_Y54_N1
\DATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: LCCOMB_X57_Y52_N8
\U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~12_combout\ = (\U_DFF1|Q\(0) & ((\DATA[2]~input_o\) # ((!\U_DFF1|Q\(2))))) # (!\U_DFF1|Q\(0) & (((\U_DFF1|Q\(2) & \DATA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[2]~input_o\,
	datab => \U_DFF1|Q\(0),
	datac => \U_DFF1|Q\(2),
	datad => \DATA[0]~input_o\,
	combout => \U_ALU|Add0~12_combout\);

-- Location: LCCOMB_X58_Y52_N22
\U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~14_combout\ = (\U_DFF1|Q\(1) & (\U_ALU|Add0~12_combout\ $ (((\DATA[1]~input_o\) # (\U_DFF1|Q\(2)))))) # (!\U_DFF1|Q\(1) & (((\U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~12_combout\,
	datab => \U_DFF1|Q\(1),
	datac => \DATA[1]~input_o\,
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X58_Y52_N20
\U_ALU|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~13_combout\ = (\U_ALU|Add0~12_combout\ & (((\U_DFF1|Q\(2))))) # (!\U_ALU|Add0~12_combout\ & ((\U_DFF1|Q\(1) & (!\DATA[1]~input_o\ & !\U_DFF1|Q\(2))) # (!\U_DFF1|Q\(1) & ((\U_DFF1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~12_combout\,
	datab => \U_DFF1|Q\(1),
	datac => \DATA[1]~input_o\,
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Add0~13_combout\);

-- Location: FF_X58_Y52_N1
\U_DFF5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(1));

-- Location: LCCOMB_X58_Y52_N6
\U_ALU|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~9_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(1),
	combout => \U_ALU|Add0~9_combout\);

-- Location: LCCOMB_X57_Y52_N16
\U_ALU|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~10_combout\ = ((\U_ALU|Add0~9_combout\ $ (\DATA[1]~input_o\ $ (!\U_ALU|Add0~5\)))) # (GND)
-- \U_ALU|Add0~11\ = CARRY((\U_ALU|Add0~9_combout\ & ((\DATA[1]~input_o\) # (!\U_ALU|Add0~5\))) # (!\U_ALU|Add0~9_combout\ & (\DATA[1]~input_o\ & !\U_ALU|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~9_combout\,
	datab => \DATA[1]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~5\,
	combout => \U_ALU|Add0~10_combout\,
	cout => \U_ALU|Add0~11\);

-- Location: LCCOMB_X58_Y52_N0
\U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~15_combout\ = (\U_ALU|Add0~14_combout\ & (\U_ALU|Add0~13_combout\ & ((\U_ALU|Add0~10_combout\)))) # (!\U_ALU|Add0~14_combout\ & ((\U_ALU|Add0~13_combout\) # ((\U_DFF5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~14_combout\,
	datab => \U_ALU|Add0~13_combout\,
	datac => \U_DFF5|Q\(1),
	datad => \U_ALU|Add0~10_combout\,
	combout => \U_ALU|Add0~15_combout\);

-- Location: IOIBUF_X58_Y54_N29
\DATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X58_Y52_N25
\U_DFF5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(2));

-- Location: LCCOMB_X58_Y52_N24
\U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux5~0_combout\ = (\U_DFF1|Q\(0) & ((\U_DFF1|Q\(2)) # ((\DATA[2]~input_o\ & \U_DFF5|Q\(2))))) # (!\U_DFF1|Q\(0) & (!\DATA[2]~input_o\ & ((!\U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(0),
	datab => \DATA[2]~input_o\,
	datac => \U_DFF5|Q\(2),
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y52_N8
\U_ALU|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux5~1_combout\ = (\U_ALU|Mux5~0_combout\ & ((\DATA[3]~input_o\) # ((!\U_DFF1|Q\(2))))) # (!\U_ALU|Mux5~0_combout\ & (((\DATA[1]~input_o\ & \U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[3]~input_o\,
	datab => \U_ALU|Mux5~0_combout\,
	datac => \DATA[1]~input_o\,
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y52_N18
\U_ALU|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~16_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(2),
	combout => \U_ALU|Add0~16_combout\);

-- Location: LCCOMB_X57_Y52_N18
\U_ALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~17_combout\ = (\DATA[2]~input_o\ & ((\U_ALU|Add0~16_combout\ & (\U_ALU|Add0~11\ & VCC)) # (!\U_ALU|Add0~16_combout\ & (!\U_ALU|Add0~11\)))) # (!\DATA[2]~input_o\ & ((\U_ALU|Add0~16_combout\ & (!\U_ALU|Add0~11\)) # (!\U_ALU|Add0~16_combout\ & 
-- ((\U_ALU|Add0~11\) # (GND)))))
-- \U_ALU|Add0~18\ = CARRY((\DATA[2]~input_o\ & (!\U_ALU|Add0~16_combout\ & !\U_ALU|Add0~11\)) # (!\DATA[2]~input_o\ & ((!\U_ALU|Add0~11\) # (!\U_ALU|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[2]~input_o\,
	datab => \U_ALU|Add0~16_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~11\,
	combout => \U_ALU|Add0~17_combout\,
	cout => \U_ALU|Add0~18\);

-- Location: LCCOMB_X58_Y52_N10
\U_ALU|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~19_combout\ = (!\U_DFF1|Q\(1) & ((\U_DFF1|Q\(2) & (\U_ALU|Add0~17_combout\)) # (!\U_DFF1|Q\(2) & ((\U_DFF5|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(2),
	datab => \U_ALU|Add0~17_combout\,
	datac => \U_DFF5|Q\(2),
	datad => \U_DFF1|Q\(1),
	combout => \U_ALU|Add0~19_combout\);

-- Location: LCCOMB_X58_Y52_N18
\U_ALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~20_combout\ = (\U_ALU|Add0~19_combout\) # ((\U_DFF1|Q\(1) & \U_ALU|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFF1|Q\(1),
	datac => \U_ALU|Mux5~1_combout\,
	datad => \U_ALU|Add0~19_combout\,
	combout => \U_ALU|Add0~20_combout\);

-- Location: IOIBUF_X58_Y54_N8
\DATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: LCCOMB_X57_Y52_N6
\U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~24_combout\ = (\U_DFF1|Q\(0) & (((\DATA[4]~input_o\) # (!\U_DFF1|Q\(2))))) # (!\U_DFF1|Q\(0) & (\DATA[2]~input_o\ & (\U_DFF1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[2]~input_o\,
	datab => \U_DFF1|Q\(0),
	datac => \U_DFF1|Q\(2),
	datad => \DATA[4]~input_o\,
	combout => \U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X58_Y52_N30
\U_ALU|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~25_combout\ = (\U_DFF1|Q\(1) & ((\U_ALU|Add0~24_combout\ & ((\U_DFF1|Q\(2)))) # (!\U_ALU|Add0~24_combout\ & (!\DATA[3]~input_o\ & !\U_DFF1|Q\(2))))) # (!\U_DFF1|Q\(1) & (((\U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[3]~input_o\,
	datab => \U_DFF1|Q\(1),
	datac => \U_ALU|Add0~24_combout\,
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Add0~25_combout\);

-- Location: FF_X58_Y52_N17
\U_DFF5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(3));

-- Location: LCCOMB_X55_Y52_N0
\U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~21_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(3),
	combout => \U_ALU|Add0~21_combout\);

-- Location: LCCOMB_X57_Y52_N20
\U_ALU|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~22_combout\ = ((\U_ALU|Add0~21_combout\ $ (\DATA[3]~input_o\ $ (!\U_ALU|Add0~18\)))) # (GND)
-- \U_ALU|Add0~23\ = CARRY((\U_ALU|Add0~21_combout\ & ((\DATA[3]~input_o\) # (!\U_ALU|Add0~18\))) # (!\U_ALU|Add0~21_combout\ & (\DATA[3]~input_o\ & !\U_ALU|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~21_combout\,
	datab => \DATA[3]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~18\,
	combout => \U_ALU|Add0~22_combout\,
	cout => \U_ALU|Add0~23\);

-- Location: LCCOMB_X58_Y52_N12
\U_ALU|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~26_combout\ = (\U_DFF1|Q\(1) & (\U_ALU|Add0~24_combout\ $ (((\DATA[3]~input_o\) # (\U_DFF1|Q\(2)))))) # (!\U_DFF1|Q\(1) & (((\U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[3]~input_o\,
	datab => \U_DFF1|Q\(1),
	datac => \U_ALU|Add0~24_combout\,
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Add0~26_combout\);

-- Location: LCCOMB_X58_Y52_N16
\U_ALU|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~27_combout\ = (\U_ALU|Add0~25_combout\ & ((\U_ALU|Add0~22_combout\) # ((!\U_ALU|Add0~26_combout\)))) # (!\U_ALU|Add0~25_combout\ & (((\U_DFF5|Q\(3) & !\U_ALU|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~25_combout\,
	datab => \U_ALU|Add0~22_combout\,
	datac => \U_DFF5|Q\(3),
	datad => \U_ALU|Add0~26_combout\,
	combout => \U_ALU|Add0~27_combout\);

-- Location: FF_X58_Y52_N3
\U_DFF5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(4));

-- Location: LCCOMB_X58_Y52_N4
\U_ALU|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~28_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(4),
	combout => \U_ALU|Add0~28_combout\);

-- Location: LCCOMB_X57_Y52_N22
\U_ALU|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~29_combout\ = (\U_ALU|Add0~28_combout\ & ((\DATA[4]~input_o\ & (\U_ALU|Add0~23\ & VCC)) # (!\DATA[4]~input_o\ & (!\U_ALU|Add0~23\)))) # (!\U_ALU|Add0~28_combout\ & ((\DATA[4]~input_o\ & (!\U_ALU|Add0~23\)) # (!\DATA[4]~input_o\ & 
-- ((\U_ALU|Add0~23\) # (GND)))))
-- \U_ALU|Add0~30\ = CARRY((\U_ALU|Add0~28_combout\ & (!\DATA[4]~input_o\ & !\U_ALU|Add0~23\)) # (!\U_ALU|Add0~28_combout\ & ((!\U_ALU|Add0~23\) # (!\DATA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~28_combout\,
	datab => \DATA[4]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~23\,
	combout => \U_ALU|Add0~29_combout\,
	cout => \U_ALU|Add0~30\);

-- Location: LCCOMB_X58_Y52_N14
\U_ALU|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~31_combout\ = (!\U_DFF1|Q\(1) & ((\U_DFF1|Q\(2) & ((\U_ALU|Add0~29_combout\))) # (!\U_DFF1|Q\(2) & (\U_DFF5|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(2),
	datab => \U_DFF5|Q\(4),
	datac => \U_ALU|Add0~29_combout\,
	datad => \U_DFF1|Q\(1),
	combout => \U_ALU|Add0~31_combout\);

-- Location: LCCOMB_X58_Y52_N2
\U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\DATA[4]~input_o\ & (\U_DFF1|Q\(0) & ((\U_DFF5|Q\(4)) # (\U_DFF1|Q\(2))))) # (!\DATA[4]~input_o\ & (\U_DFF1|Q\(0) $ (((!\U_DFF1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[4]~input_o\,
	datab => \U_DFF1|Q\(0),
	datac => \U_DFF5|Q\(4),
	datad => \U_DFF1|Q\(2),
	combout => \U_ALU|Mux3~0_combout\);

-- Location: IOIBUF_X56_Y54_N22
\DATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: LCCOMB_X58_Y52_N28
\U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\U_DFF1|Q\(2) & ((\U_ALU|Mux3~0_combout\ & (\DATA[5]~input_o\)) # (!\U_ALU|Mux3~0_combout\ & ((\DATA[3]~input_o\))))) # (!\U_DFF1|Q\(2) & (\U_ALU|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(2),
	datab => \U_ALU|Mux3~0_combout\,
	datac => \DATA[5]~input_o\,
	datad => \DATA[3]~input_o\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X58_Y52_N26
\U_ALU|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~32_combout\ = (\U_ALU|Add0~31_combout\) # ((\U_DFF1|Q\(1) & \U_ALU|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DFF1|Q\(1),
	datac => \U_ALU|Add0~31_combout\,
	datad => \U_ALU|Mux3~1_combout\,
	combout => \U_ALU|Add0~32_combout\);

-- Location: IOIBUF_X56_Y54_N1
\DATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

-- Location: LCCOMB_X57_Y52_N2
\U_ALU|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~36_combout\ = (\U_DFF1|Q\(0) & ((\DATA[6]~input_o\) # ((!\U_DFF1|Q\(2))))) # (!\U_DFF1|Q\(0) & (((\U_DFF1|Q\(2) & \DATA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \U_DFF1|Q\(0),
	datac => \U_DFF1|Q\(2),
	datad => \DATA[4]~input_o\,
	combout => \U_ALU|Add0~36_combout\);

-- Location: LCCOMB_X56_Y52_N26
\U_ALU|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~38_combout\ = (\U_DFF1|Q\(1) & (\U_ALU|Add0~36_combout\ $ (((\U_DFF1|Q\(2)) # (\DATA[5]~input_o\))))) # (!\U_DFF1|Q\(1) & (((\U_DFF1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~36_combout\,
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF1|Q\(1),
	datad => \DATA[5]~input_o\,
	combout => \U_ALU|Add0~38_combout\);

-- Location: LCCOMB_X56_Y52_N20
\U_ALU|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~37_combout\ = (\U_ALU|Add0~36_combout\ & (\U_DFF1|Q\(2))) # (!\U_ALU|Add0~36_combout\ & ((\U_DFF1|Q\(2) & (!\U_DFF1|Q\(1))) # (!\U_DFF1|Q\(2) & (\U_DFF1|Q\(1) & !\DATA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~36_combout\,
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF1|Q\(1),
	datad => \DATA[5]~input_o\,
	combout => \U_ALU|Add0~37_combout\);

-- Location: FF_X56_Y52_N13
\U_DFF5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(5));

-- Location: LCCOMB_X56_Y52_N6
\U_ALU|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~33_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(5),
	combout => \U_ALU|Add0~33_combout\);

-- Location: LCCOMB_X57_Y52_N24
\U_ALU|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~34_combout\ = ((\DATA[5]~input_o\ $ (\U_ALU|Add0~33_combout\ $ (!\U_ALU|Add0~30\)))) # (GND)
-- \U_ALU|Add0~35\ = CARRY((\DATA[5]~input_o\ & ((\U_ALU|Add0~33_combout\) # (!\U_ALU|Add0~30\))) # (!\DATA[5]~input_o\ & (\U_ALU|Add0~33_combout\ & !\U_ALU|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[5]~input_o\,
	datab => \U_ALU|Add0~33_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~30\,
	combout => \U_ALU|Add0~34_combout\,
	cout => \U_ALU|Add0~35\);

-- Location: LCCOMB_X56_Y52_N12
\U_ALU|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~39_combout\ = (\U_ALU|Add0~38_combout\ & (\U_ALU|Add0~37_combout\ & ((\U_ALU|Add0~34_combout\)))) # (!\U_ALU|Add0~38_combout\ & ((\U_ALU|Add0~37_combout\) # ((\U_DFF5|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~38_combout\,
	datab => \U_ALU|Add0~37_combout\,
	datac => \U_DFF5|Q\(5),
	datad => \U_ALU|Add0~34_combout\,
	combout => \U_ALU|Add0~39_combout\);

-- Location: IOIBUF_X56_Y54_N15
\DATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: FF_X56_Y52_N1
\U_DFF5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(6));

-- Location: LCCOMB_X56_Y52_N0
\U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\DATA[6]~input_o\ & (\U_DFF1|Q\(0) & ((\U_DFF1|Q\(2)) # (\U_DFF5|Q\(6))))) # (!\DATA[6]~input_o\ & (\U_DFF1|Q\(2) $ (((!\U_DFF1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF5|Q\(6),
	datad => \U_DFF1|Q\(0),
	combout => \U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y52_N2
\U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\U_DFF1|Q\(2) & ((\U_ALU|Mux1~0_combout\ & (\DATA[7]~input_o\)) # (!\U_ALU|Mux1~0_combout\ & ((\DATA[5]~input_o\))))) # (!\U_DFF1|Q\(2) & (((\U_ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[7]~input_o\,
	datab => \U_DFF1|Q\(2),
	datac => \DATA[5]~input_o\,
	datad => \U_ALU|Mux1~0_combout\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X56_Y52_N10
\U_ALU|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~40_combout\ = \U_DFF1|Q\(0) $ (\U_DFF5|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DFF1|Q\(0),
	datad => \U_DFF5|Q\(6),
	combout => \U_ALU|Add0~40_combout\);

-- Location: LCCOMB_X57_Y52_N26
\U_ALU|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~41_combout\ = (\DATA[6]~input_o\ & ((\U_ALU|Add0~40_combout\ & (\U_ALU|Add0~35\ & VCC)) # (!\U_ALU|Add0~40_combout\ & (!\U_ALU|Add0~35\)))) # (!\DATA[6]~input_o\ & ((\U_ALU|Add0~40_combout\ & (!\U_ALU|Add0~35\)) # (!\U_ALU|Add0~40_combout\ & 
-- ((\U_ALU|Add0~35\) # (GND)))))
-- \U_ALU|Add0~42\ = CARRY((\DATA[6]~input_o\ & (!\U_ALU|Add0~40_combout\ & !\U_ALU|Add0~35\)) # (!\DATA[6]~input_o\ & ((!\U_ALU|Add0~35\) # (!\U_ALU|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \U_ALU|Add0~40_combout\,
	datad => VCC,
	cin => \U_ALU|Add0~35\,
	combout => \U_ALU|Add0~41_combout\,
	cout => \U_ALU|Add0~42\);

-- Location: LCCOMB_X56_Y52_N8
\U_ALU|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~43_combout\ = (!\U_DFF1|Q\(1) & ((\U_DFF1|Q\(2) & ((\U_ALU|Add0~41_combout\))) # (!\U_DFF1|Q\(2) & (\U_DFF5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(1),
	datab => \U_DFF5|Q\(6),
	datac => \U_DFF1|Q\(2),
	datad => \U_ALU|Add0~41_combout\,
	combout => \U_ALU|Add0~43_combout\);

-- Location: LCCOMB_X55_Y52_N2
\U_ALU|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~44_combout\ = (\U_ALU|Add0~43_combout\) # ((\U_ALU|Mux1~1_combout\ & \U_DFF1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~1_combout\,
	datac => \U_ALU|Add0~43_combout\,
	datad => \U_DFF1|Q\(1),
	combout => \U_ALU|Add0~44_combout\);

-- Location: FF_X56_Y52_N29
\U_DFF5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF5|Q\(7));

-- Location: LCCOMB_X56_Y52_N14
\U_ALU|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~45_combout\ = \U_DFF5|Q\(7) $ (\U_DFF1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF5|Q\(7),
	datac => \U_DFF1|Q\(0),
	combout => \U_ALU|Add0~45_combout\);

-- Location: LCCOMB_X57_Y52_N28
\U_ALU|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~46_combout\ = \U_ALU|Add0~45_combout\ $ (\U_ALU|Add0~42\ $ (!\DATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~45_combout\,
	datad => \DATA[7]~input_o\,
	cin => \U_ALU|Add0~42\,
	combout => \U_ALU|Add0~46_combout\);

-- Location: LCCOMB_X56_Y52_N24
\U_ALU|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~48_combout\ = (!\U_DFF1|Q\(1) & ((\U_DFF1|Q\(2) & ((\U_ALU|Add0~46_combout\))) # (!\U_DFF1|Q\(2) & (\U_DFF5|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(1),
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF5|Q\(7),
	datad => \U_ALU|Add0~46_combout\,
	combout => \U_ALU|Add0~48_combout\);

-- Location: LCCOMB_X57_Y52_N10
\U_ALU|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~49_combout\ = (!\U_DFF1|Q\(0) & ((\U_DFF1|Q\(2) & (\DATA[6]~input_o\)) # (!\U_DFF1|Q\(2) & ((!\DATA[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[6]~input_o\,
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF1|Q\(0),
	datad => \DATA[7]~input_o\,
	combout => \U_ALU|Add0~49_combout\);

-- Location: LCCOMB_X56_Y52_N28
\U_ALU|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~50_combout\ = (\DATA[7]~input_o\ & (\U_DFF1|Q\(0) & ((\U_DFF1|Q\(2)) # (\U_DFF5|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA[7]~input_o\,
	datab => \U_DFF1|Q\(2),
	datac => \U_DFF5|Q\(7),
	datad => \U_DFF1|Q\(0),
	combout => \U_ALU|Add0~50_combout\);

-- Location: LCCOMB_X56_Y52_N30
\U_ALU|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~51_combout\ = (\U_ALU|Add0~48_combout\) # ((\U_DFF1|Q\(1) & ((\U_ALU|Add0~49_combout\) # (\U_ALU|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF1|Q\(1),
	datab => \U_ALU|Add0~48_combout\,
	datac => \U_ALU|Add0~49_combout\,
	datad => \U_ALU|Add0~50_combout\,
	combout => \U_ALU|Add0~51_combout\);

-- Location: IOIBUF_X51_Y54_N1
\OPERAND2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(0),
	o => \OPERAND2[0]~input_o\);

-- Location: LCCOMB_X50_Y52_N12
\U_DFF3|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF3|Q[0]~feeder_combout\ = \OPERAND2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND2[0]~input_o\,
	combout => \U_DFF3|Q[0]~feeder_combout\);

-- Location: FF_X50_Y52_N13
\U_DFF3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF3|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|Q\(0));

-- Location: IOIBUF_X51_Y54_N29
\OPERAND1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(0),
	o => \OPERAND1[0]~input_o\);

-- Location: FF_X50_Y52_N27
\U_DFF2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|Q\(0));

-- Location: FF_X57_Y52_N25
\U_DFF4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_COMP|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF4|Q\(0));

-- Location: LCCOMB_X50_Y52_N26
\U_MUX|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector2~0_combout\ = (\U_DFF4|Q\(0) & (((!\U_COMP|Equal0~0_combout\ & \U_DFF2|Q\(0))))) # (!\U_DFF4|Q\(0) & (\U_DFF3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF3|Q\(0),
	datab => \U_COMP|Equal0~0_combout\,
	datac => \U_DFF2|Q\(0),
	datad => \U_DFF4|Q\(0),
	combout => \U_MUX|Selector2~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\OPERAND2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(1),
	o => \OPERAND2[1]~input_o\);

-- Location: FF_X50_Y52_N29
\U_DFF3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|Q\(1));

-- Location: IOIBUF_X51_Y54_N8
\OPERAND1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(1),
	o => \OPERAND1[1]~input_o\);

-- Location: FF_X50_Y52_N3
\U_DFF2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|Q\(1));

-- Location: LCCOMB_X50_Y52_N2
\U_MUX|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector1~0_combout\ = (\U_DFF4|Q\(0) & (((!\U_COMP|Equal0~0_combout\ & \U_DFF2|Q\(1))))) # (!\U_DFF4|Q\(0) & (\U_DFF3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF3|Q\(1),
	datab => \U_COMP|Equal0~0_combout\,
	datac => \U_DFF2|Q\(1),
	datad => \U_DFF4|Q\(0),
	combout => \U_MUX|Selector1~0_combout\);

-- Location: IOIBUF_X49_Y54_N22
\OPERAND2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND2(2),
	o => \OPERAND2[2]~input_o\);

-- Location: LCCOMB_X50_Y52_N8
\U_DFF3|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_DFF3|Q[2]~feeder_combout\ = \OPERAND2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND2[2]~input_o\,
	combout => \U_DFF3|Q[2]~feeder_combout\);

-- Location: FF_X50_Y52_N9
\U_DFF3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DFF3|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF3|Q\(2));

-- Location: IOIBUF_X51_Y54_N22
\OPERAND1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(2),
	o => \OPERAND1[2]~input_o\);

-- Location: FF_X50_Y52_N11
\U_DFF2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DFF2|Q\(2));

-- Location: LCCOMB_X50_Y52_N10
\U_MUX|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MUX|Selector0~0_combout\ = (\U_DFF4|Q\(0) & (((!\U_COMP|Equal0~0_combout\ & \U_DFF2|Q\(2))))) # (!\U_DFF4|Q\(0) & (\U_DFF3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DFF3|Q\(2),
	datab => \U_COMP|Equal0~0_combout\,
	datac => \U_DFF2|Q\(2),
	datad => \U_DFF4|Q\(0),
	combout => \U_MUX|Selector0~0_combout\);

-- Location: IOIBUF_X69_Y0_N22
\OPERAND1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(3),
	o => \OPERAND1[3]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\OPERAND1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(4),
	o => \OPERAND1[4]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\OPERAND1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(5),
	o => \OPERAND1[5]~input_o\);

-- Location: IOIBUF_X74_Y54_N22
\OPERAND1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(6),
	o => \OPERAND1[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\OPERAND1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPERAND1(7),
	o => \OPERAND1[7]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_OUTP(0) <= \OUTP[0]~output_o\;

ww_OUTP(1) <= \OUTP[1]~output_o\;

ww_OUTP(2) <= \OUTP[2]~output_o\;

ww_OUTP(3) <= \OUTP[3]~output_o\;

ww_OUTP(4) <= \OUTP[4]~output_o\;

ww_OUTP(5) <= \OUTP[5]~output_o\;

ww_OUTP(6) <= \OUTP[6]~output_o\;

ww_OUTP(7) <= \OUTP[7]~output_o\;

ww_ADDR(0) <= \ADDR[0]~output_o\;

ww_ADDR(1) <= \ADDR[1]~output_o\;

ww_ADDR(2) <= \ADDR[2]~output_o\;

ww_READW <= \READW~output_o\;

DATA(0) <= \DATA[0]~output_o\;

DATA(1) <= \DATA[1]~output_o\;

DATA(2) <= \DATA[2]~output_o\;

DATA(3) <= \DATA[3]~output_o\;

DATA(4) <= \DATA[4]~output_o\;

DATA(5) <= \DATA[5]~output_o\;

DATA(6) <= \DATA[6]~output_o\;

DATA(7) <= \DATA[7]~output_o\;
END structure;



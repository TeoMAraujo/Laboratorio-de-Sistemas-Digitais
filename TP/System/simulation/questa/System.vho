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

-- DATE "12/01/2025 13:09:36"

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

ENTITY 	System IS
    PORT (
	OPCODE : IN std_logic_vector(2 DOWNTO 0);
	OPERAND1 : IN std_logic_vector(7 DOWNTO 0);
	OPERAND2 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	OUTP : OUT std_logic_vector(7 DOWNTO 0)
	);
END System;

-- Design Ports Information
-- OUTP[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF System IS
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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OUTP[0]~output_o\ : std_logic;
SIGNAL \OUTP[1]~output_o\ : std_logic;
SIGNAL \OUTP[2]~output_o\ : std_logic;
SIGNAL \OUTP[3]~output_o\ : std_logic;
SIGNAL \OUTP[4]~output_o\ : std_logic;
SIGNAL \OUTP[5]~output_o\ : std_logic;
SIGNAL \OUTP[6]~output_o\ : std_logic;
SIGNAL \OUTP[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \U_FSM|CS.DECODE~0_combout\ : std_logic;
SIGNAL \U_FSM|CS.DECODE~q\ : std_logic;
SIGNAL \U_FSM|NS.STORE~0_combout\ : std_logic;
SIGNAL \U_FSM|CS.STORE~q\ : std_logic;
SIGNAL \fake_opcode[1]~1_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \fake_opcode[0]~0_combout\ : std_logic;
SIGNAL \fake_opcode[2]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~2_cout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~3_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~5_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~7_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~4\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~11_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~9\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~13\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~16_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~18_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~17\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~19_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~20\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~22_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~23\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~25_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~27_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~31_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~26\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~28_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~30_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_ALU|Add0~32_combout\ : std_logic;
SIGNAL \U_CPU|U_AC|U_DFFALU2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_CPU|U_AC|U_DFFALU1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_CPU|U_AC|U_DFF1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_CPU|U_AC|U_DFFALU3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_CPU|U_AC|U_DFF5|Q\ : std_logic_vector(7 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X24_Y0_N30
\OUTP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~7_combout\,
	devoe => ww_devoe,
	o => \OUTP[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\OUTP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~11_combout\,
	devoe => ww_devoe,
	o => \OUTP[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\OUTP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~15_combout\,
	devoe => ww_devoe,
	o => \OUTP[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\OUTP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~18_combout\,
	devoe => ww_devoe,
	o => \OUTP[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\OUTP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~21_combout\,
	devoe => ww_devoe,
	o => \OUTP[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\OUTP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~24_combout\,
	devoe => ww_devoe,
	o => \OUTP[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\OUTP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~27_combout\,
	devoe => ww_devoe,
	o => \OUTP[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\OUTP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CPU|U_AC|U_ALU|Add0~32_combout\,
	devoe => ww_devoe,
	o => \OUTP[7]~output_o\);

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

-- Location: IOIBUF_X22_Y0_N15
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

-- Location: IOIBUF_X22_Y0_N29
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

-- Location: IOIBUF_X22_Y0_N8
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

-- Location: LCCOMB_X23_Y3_N10
\U_FSM|CS.DECODE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FSM|CS.DECODE~0_combout\ = !\U_FSM|CS.DECODE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|CS.DECODE~q\,
	combout => \U_FSM|CS.DECODE~0_combout\);

-- Location: FF_X23_Y3_N11
\U_FSM|CS.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_FSM|CS.DECODE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|CS.DECODE~q\);

-- Location: LCCOMB_X23_Y3_N28
\U_FSM|NS.STORE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_FSM|NS.STORE~0_combout\ = (!\OPCODE[1]~input_o\ & (!\OPCODE[2]~input_o\ & (!\OPCODE[0]~input_o\ & !\U_FSM|CS.DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[1]~input_o\,
	datab => \OPCODE[2]~input_o\,
	datac => \OPCODE[0]~input_o\,
	datad => \U_FSM|CS.DECODE~q\,
	combout => \U_FSM|NS.STORE~0_combout\);

-- Location: FF_X23_Y3_N29
\U_FSM|CS.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_FSM|NS.STORE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|CS.STORE~q\);

-- Location: LCCOMB_X23_Y3_N16
\fake_opcode[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fake_opcode[1]~1_combout\ = (\OPCODE[1]~input_o\ & !\U_FSM|CS.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[1]~input_o\,
	datad => \U_FSM|CS.STORE~q\,
	combout => \fake_opcode[1]~1_combout\);

-- Location: FF_X23_Y3_N17
\U_CPU|U_AC|U_DFF1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fake_opcode[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFF1|Q\(1));

-- Location: LCCOMB_X23_Y3_N18
\U_CPU|U_AC|U_DFFALU1|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU1|Q[1]~feeder_combout\ = \U_CPU|U_AC|U_DFF1|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFF1|Q\(1),
	combout => \U_CPU|U_AC|U_DFFALU1|Q[1]~feeder_combout\);

-- Location: FF_X23_Y3_N19
\U_CPU|U_AC|U_DFFALU1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU1|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU1|Q\(1));

-- Location: LCCOMB_X23_Y3_N12
\U_CPU|U_AC|U_DFFALU2|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU2|Q[1]~feeder_combout\ = \U_CPU|U_AC|U_DFFALU1|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFFALU1|Q\(1),
	combout => \U_CPU|U_AC|U_DFFALU2|Q[1]~feeder_combout\);

-- Location: FF_X23_Y3_N13
\U_CPU|U_AC|U_DFFALU2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU2|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU2|Q\(1));

-- Location: LCCOMB_X23_Y3_N26
\U_CPU|U_AC|U_DFFALU3|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU3|Q[1]~feeder_combout\ = \U_CPU|U_AC|U_DFFALU2|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFFALU2|Q\(1),
	combout => \U_CPU|U_AC|U_DFFALU3|Q[1]~feeder_combout\);

-- Location: FF_X23_Y3_N27
\U_CPU|U_AC|U_DFFALU3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU3|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU3|Q\(1));

-- Location: LCCOMB_X23_Y3_N14
\fake_opcode[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fake_opcode[0]~0_combout\ = (\OPCODE[0]~input_o\ & !\U_FSM|CS.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[0]~input_o\,
	datad => \U_FSM|CS.STORE~q\,
	combout => \fake_opcode[0]~0_combout\);

-- Location: FF_X23_Y3_N15
\U_CPU|U_AC|U_DFF1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fake_opcode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFF1|Q\(0));

-- Location: LCCOMB_X23_Y3_N6
\fake_opcode[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fake_opcode[2]~2_combout\ = (\OPCODE[2]~input_o\ & !\U_FSM|CS.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPCODE[2]~input_o\,
	datad => \U_FSM|CS.STORE~q\,
	combout => \fake_opcode[2]~2_combout\);

-- Location: FF_X23_Y3_N7
\U_CPU|U_AC|U_DFF1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fake_opcode[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFF1|Q\(2));

-- Location: LCCOMB_X23_Y3_N0
\U_CPU|U_AC|U_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_COMP|Equal0~0_combout\ = (!\U_CPU|U_AC|U_DFF1|Q\(1) & (!\U_CPU|U_AC|U_DFF1|Q\(0) & !\U_CPU|U_AC|U_DFF1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_AC|U_DFF1|Q\(1),
	datac => \U_CPU|U_AC|U_DFF1|Q\(0),
	datad => \U_CPU|U_AC|U_DFF1|Q\(2),
	combout => \U_CPU|U_AC|U_COMP|Equal0~0_combout\);

-- Location: FF_X23_Y3_N1
\U_CPU|U_AC|U_DFF5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFF5|Q\(0));

-- Location: LCCOMB_X23_Y3_N24
\U_CPU|U_AC|U_DFFALU1|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU1|Q[0]~feeder_combout\ = \U_CPU|U_AC|U_DFF1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_AC|U_DFF1|Q\(0),
	combout => \U_CPU|U_AC|U_DFFALU1|Q[0]~feeder_combout\);

-- Location: FF_X23_Y3_N25
\U_CPU|U_AC|U_DFFALU1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU1|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU1|Q\(0));

-- Location: LCCOMB_X23_Y3_N30
\U_CPU|U_AC|U_DFFALU2|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU2|Q[0]~feeder_combout\ = \U_CPU|U_AC|U_DFFALU1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFFALU1|Q\(0),
	combout => \U_CPU|U_AC|U_DFFALU2|Q[0]~feeder_combout\);

-- Location: FF_X23_Y3_N31
\U_CPU|U_AC|U_DFFALU2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU2|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU2|Q\(0));

-- Location: FF_X23_Y3_N23
\U_CPU|U_AC|U_DFFALU3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_CPU|U_AC|U_DFFALU2|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU3|Q\(0));

-- Location: LCCOMB_X24_Y3_N0
\U_CPU|U_AC|U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~0_combout\ = \U_CPU|U_AC|U_DFF5|Q\(0) $ (\U_CPU|U_AC|U_DFFALU3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFF5|Q\(0),
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	combout => \U_CPU|U_AC|U_ALU|Add0~0_combout\);

-- Location: LCCOMB_X24_Y3_N12
\U_CPU|U_AC|U_ALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~2_cout\ = CARRY(\U_CPU|U_AC|U_DFFALU3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	datad => VCC,
	cout => \U_CPU|U_AC|U_ALU|Add0~2_cout\);

-- Location: LCCOMB_X24_Y3_N14
\U_CPU|U_AC|U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~3_combout\ = (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~2_cout\ & VCC)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~2_cout\)))) # 
-- (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~2_cout\)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~2_cout\) # (GND)))))
-- \U_CPU|U_AC|U_ALU|Add0~4\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & !\U_CPU|U_AC|U_ALU|Add0~2_cout\)) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((!\U_CPU|U_AC|U_ALU|Add0~2_cout\) # 
-- (!\U_CPU|U_AC|U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~2_cout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~3_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~4\);

-- Location: LCCOMB_X23_Y3_N20
\U_CPU|U_AC|U_DFFALU1|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU1|Q[2]~feeder_combout\ = \U_CPU|U_AC|U_DFF1|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFF1|Q\(2),
	combout => \U_CPU|U_AC|U_DFFALU1|Q[2]~feeder_combout\);

-- Location: FF_X23_Y3_N21
\U_CPU|U_AC|U_DFFALU1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU1|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU1|Q\(2));

-- Location: LCCOMB_X23_Y3_N8
\U_CPU|U_AC|U_DFFALU2|Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_DFFALU2|Q[2]~feeder_combout\ = \U_CPU|U_AC|U_DFFALU1|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_AC|U_DFFALU1|Q\(2),
	combout => \U_CPU|U_AC|U_DFFALU2|Q[2]~feeder_combout\);

-- Location: FF_X23_Y3_N9
\U_CPU|U_AC|U_DFFALU2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_CPU|U_AC|U_DFFALU2|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU2|Q\(2));

-- Location: FF_X23_Y3_N5
\U_CPU|U_AC|U_DFFALU3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_CPU|U_AC|U_DFFALU2|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_AC|U_DFFALU3|Q\(2));

-- Location: LCCOMB_X24_Y3_N2
\U_CPU|U_AC|U_ALU|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~5_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(2) & ((\U_CPU|U_AC|U_ALU|Add0~3_combout\))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(2) & (\U_CPU|U_AC|U_DFF5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFF5|Q\(0),
	datac => \U_CPU|U_AC|U_ALU|Add0~3_combout\,
	datad => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	combout => \U_CPU|U_AC|U_ALU|Add0~5_combout\);

-- Location: LCCOMB_X24_Y3_N4
\U_CPU|U_AC|U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~6_combout\ = (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (((!\U_CPU|U_AC|U_DFFALU3|Q\(2) & !\U_CPU|U_AC|U_ALU|Add0~5_combout\)) # (!\U_CPU|U_AC|U_DFFALU3|Q\(0)))) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_DFFALU3|Q\(2)) 
-- # ((\U_CPU|U_AC|U_DFFALU3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datab => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	datad => \U_CPU|U_AC|U_ALU|Add0~5_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~6_combout\);

-- Location: LCCOMB_X24_Y3_N10
\U_CPU|U_AC|U_ALU|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~7_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(1) & ((!\U_CPU|U_AC|U_ALU|Add0~6_combout\))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (\U_CPU|U_AC|U_ALU|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_ALU|Add0~5_combout\,
	datac => \U_CPU|U_AC|U_ALU|Add0~6_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~7_combout\);

-- Location: LCCOMB_X24_Y3_N16
\U_CPU|U_AC|U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~8_combout\ = ((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ $ (\U_CPU|U_AC|U_ALU|Add0~0_combout\ $ (!\U_CPU|U_AC|U_ALU|Add0~4\)))) # (GND)
-- \U_CPU|U_AC|U_ALU|Add0~9\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\) # (!\U_CPU|U_AC|U_ALU|Add0~4\))) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~0_combout\ & !\U_CPU|U_AC|U_ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~4\,
	combout => \U_CPU|U_AC|U_ALU|Add0~8_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~9\);

-- Location: LCCOMB_X26_Y3_N24
\U_CPU|U_AC|U_ALU|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Mux6~0_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(0) & (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_DFFALU3|Q\(2)) # (\U_CPU|U_AC|U_DFF5|Q\(0))))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(0) & (\U_CPU|U_AC|U_DFFALU3|Q\(2) $ 
-- (((!\U_CPU|U_AC|U_COMP|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	datab => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datac => \U_CPU|U_AC|U_DFF5|Q\(0),
	datad => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	combout => \U_CPU|U_AC|U_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y3_N28
\U_CPU|U_AC|U_ALU|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~10_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(1) & (((!\U_CPU|U_AC|U_ALU|Mux6~0_combout\)))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (((\U_CPU|U_AC|U_DFFALU3|Q\(2))) # (!\U_CPU|U_AC|U_DFF5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_DFF5|Q\(0),
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datad => \U_CPU|U_AC|U_ALU|Mux6~0_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~10_combout\);

-- Location: LCCOMB_X25_Y3_N14
\U_CPU|U_AC|U_ALU|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~11_combout\ = ((!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (\U_CPU|U_AC|U_DFFALU3|Q\(2) & \U_CPU|U_AC|U_ALU|Add0~8_combout\))) # (!\U_CPU|U_AC|U_ALU|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datac => \U_CPU|U_AC|U_ALU|Add0~8_combout\,
	datad => \U_CPU|U_AC|U_ALU|Add0~10_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~11_combout\);

-- Location: LCCOMB_X26_Y3_N2
\U_CPU|U_AC|U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Mux5~0_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(0) & (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_DFFALU3|Q\(2)) # (\U_CPU|U_AC|U_DFF5|Q\(0))))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(0) & (\U_CPU|U_AC|U_DFFALU3|Q\(2) $ 
-- (((!\U_CPU|U_AC|U_COMP|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	datab => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datac => \U_CPU|U_AC|U_DFF5|Q\(0),
	datad => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	combout => \U_CPU|U_AC|U_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y3_N24
\U_CPU|U_AC|U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~14_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(1) & (((!\U_CPU|U_AC|U_ALU|Mux5~0_combout\)))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (((\U_CPU|U_AC|U_DFFALU3|Q\(2))) # (!\U_CPU|U_AC|U_DFF5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_DFF5|Q\(0),
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datad => \U_CPU|U_AC|U_ALU|Mux5~0_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X24_Y3_N18
\U_CPU|U_AC|U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~12_combout\ = (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~9\ & VCC)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~9\)))) # 
-- (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~9\)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~9\) # (GND)))))
-- \U_CPU|U_AC|U_ALU|Add0~13\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & !\U_CPU|U_AC|U_ALU|Add0~9\)) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((!\U_CPU|U_AC|U_ALU|Add0~9\) # 
-- (!\U_CPU|U_AC|U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~9\,
	combout => \U_CPU|U_AC|U_ALU|Add0~12_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~13\);

-- Location: LCCOMB_X24_Y3_N8
\U_CPU|U_AC|U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~15_combout\ = ((\U_CPU|U_AC|U_DFFALU3|Q\(2) & (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & \U_CPU|U_AC|U_ALU|Add0~12_combout\))) # (!\U_CPU|U_AC|U_ALU|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datab => \U_CPU|U_AC|U_ALU|Add0~14_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datad => \U_CPU|U_AC|U_ALU|Add0~12_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~15_combout\);

-- Location: LCCOMB_X24_Y3_N20
\U_CPU|U_AC|U_ALU|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~16_combout\ = ((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ $ (\U_CPU|U_AC|U_ALU|Add0~0_combout\ $ (!\U_CPU|U_AC|U_ALU|Add0~13\)))) # (GND)
-- \U_CPU|U_AC|U_ALU|Add0~17\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\) # (!\U_CPU|U_AC|U_ALU|Add0~13\))) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~0_combout\ & 
-- !\U_CPU|U_AC|U_ALU|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~13\,
	combout => \U_CPU|U_AC|U_ALU|Add0~16_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~17\);

-- Location: LCCOMB_X25_Y3_N26
\U_CPU|U_AC|U_ALU|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~18_combout\ = ((!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (\U_CPU|U_AC|U_ALU|Add0~16_combout\ & \U_CPU|U_AC|U_DFFALU3|Q\(2)))) # (!\U_CPU|U_AC|U_ALU|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_ALU|Add0~16_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datad => \U_CPU|U_AC|U_ALU|Add0~10_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~18_combout\);

-- Location: LCCOMB_X24_Y3_N22
\U_CPU|U_AC|U_ALU|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~19_combout\ = (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~17\ & VCC)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~17\)))) # 
-- (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~17\)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~17\) # (GND)))))
-- \U_CPU|U_AC|U_ALU|Add0~20\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & !\U_CPU|U_AC|U_ALU|Add0~17\)) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((!\U_CPU|U_AC|U_ALU|Add0~17\) # 
-- (!\U_CPU|U_AC|U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~17\,
	combout => \U_CPU|U_AC|U_ALU|Add0~19_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~20\);

-- Location: LCCOMB_X24_Y3_N30
\U_CPU|U_AC|U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~21_combout\ = ((\U_CPU|U_AC|U_DFFALU3|Q\(2) & (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & \U_CPU|U_AC|U_ALU|Add0~19_combout\))) # (!\U_CPU|U_AC|U_ALU|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datab => \U_CPU|U_AC|U_ALU|Add0~14_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datad => \U_CPU|U_AC|U_ALU|Add0~19_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~21_combout\);

-- Location: LCCOMB_X24_Y3_N24
\U_CPU|U_AC|U_ALU|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~22_combout\ = ((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ $ (\U_CPU|U_AC|U_ALU|Add0~0_combout\ $ (!\U_CPU|U_AC|U_ALU|Add0~20\)))) # (GND)
-- \U_CPU|U_AC|U_ALU|Add0~23\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\) # (!\U_CPU|U_AC|U_ALU|Add0~20\))) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~0_combout\ & 
-- !\U_CPU|U_AC|U_ALU|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~20\,
	combout => \U_CPU|U_AC|U_ALU|Add0~22_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~23\);

-- Location: LCCOMB_X25_Y3_N12
\U_CPU|U_AC|U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~24_combout\ = ((!\U_CPU|U_AC|U_DFFALU3|Q\(1) & (\U_CPU|U_AC|U_ALU|Add0~22_combout\ & \U_CPU|U_AC|U_DFFALU3|Q\(2)))) # (!\U_CPU|U_AC|U_ALU|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datab => \U_CPU|U_AC|U_ALU|Add0~22_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datad => \U_CPU|U_AC|U_ALU|Add0~10_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X24_Y3_N26
\U_CPU|U_AC|U_ALU|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~25_combout\ = (\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (\U_CPU|U_AC|U_ALU|Add0~23\ & VCC)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~23\)))) # 
-- (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~23\)) # (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & ((\U_CPU|U_AC|U_ALU|Add0~23\) # (GND)))))
-- \U_CPU|U_AC|U_ALU|Add0~26\ = CARRY((\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & (!\U_CPU|U_AC|U_ALU|Add0~0_combout\ & !\U_CPU|U_AC|U_ALU|Add0~23\)) # (!\U_CPU|U_AC|U_COMP|Equal0~0_combout\ & ((!\U_CPU|U_AC|U_ALU|Add0~23\) # 
-- (!\U_CPU|U_AC|U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	datad => VCC,
	cin => \U_CPU|U_AC|U_ALU|Add0~23\,
	combout => \U_CPU|U_AC|U_ALU|Add0~25_combout\,
	cout => \U_CPU|U_AC|U_ALU|Add0~26\);

-- Location: LCCOMB_X24_Y3_N6
\U_CPU|U_AC|U_ALU|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~27_combout\ = ((\U_CPU|U_AC|U_DFFALU3|Q\(2) & (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & \U_CPU|U_AC|U_ALU|Add0~25_combout\))) # (!\U_CPU|U_AC|U_ALU|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datab => \U_CPU|U_AC|U_ALU|Add0~14_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datad => \U_CPU|U_AC|U_ALU|Add0~25_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~27_combout\);

-- Location: LCCOMB_X23_Y3_N22
\U_CPU|U_AC|U_ALU|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~31_combout\ = (\U_CPU|U_AC|U_DFFALU3|Q\(2) & (((\U_CPU|U_AC|U_COMP|Equal0~0_combout\)))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(2) & ((\U_CPU|U_AC|U_DFFALU3|Q\(0) & (\U_CPU|U_AC|U_DFF5|Q\(0) & \U_CPU|U_AC|U_COMP|Equal0~0_combout\)) # 
-- (!\U_CPU|U_AC|U_DFFALU3|Q\(0) & ((!\U_CPU|U_AC|U_COMP|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFF5|Q\(0),
	datab => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(0),
	datad => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~31_combout\);

-- Location: LCCOMB_X24_Y3_N28
\U_CPU|U_AC|U_ALU|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~28_combout\ = \U_CPU|U_AC|U_COMP|Equal0~0_combout\ $ (\U_CPU|U_AC|U_ALU|Add0~26\ $ (!\U_CPU|U_AC|U_ALU|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_COMP|Equal0~0_combout\,
	datad => \U_CPU|U_AC|U_ALU|Add0~0_combout\,
	cin => \U_CPU|U_AC|U_ALU|Add0~26\,
	combout => \U_CPU|U_AC|U_ALU|Add0~28_combout\);

-- Location: LCCOMB_X23_Y3_N4
\U_CPU|U_AC|U_ALU|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~30_combout\ = (!\U_CPU|U_AC|U_DFFALU3|Q\(1) & ((\U_CPU|U_AC|U_DFFALU3|Q\(2) & ((\U_CPU|U_AC|U_ALU|Add0~28_combout\))) # (!\U_CPU|U_AC|U_DFFALU3|Q\(2) & (\U_CPU|U_AC|U_DFF5|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_DFF5|Q\(0),
	datab => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(2),
	datad => \U_CPU|U_AC|U_ALU|Add0~28_combout\,
	combout => \U_CPU|U_AC|U_ALU|Add0~30_combout\);

-- Location: LCCOMB_X23_Y3_N2
\U_CPU|U_AC|U_ALU|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CPU|U_AC|U_ALU|Add0~32_combout\ = (\U_CPU|U_AC|U_ALU|Add0~30_combout\) # ((\U_CPU|U_AC|U_ALU|Add0~31_combout\ & \U_CPU|U_AC|U_DFFALU3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_AC|U_ALU|Add0~31_combout\,
	datab => \U_CPU|U_AC|U_ALU|Add0~30_combout\,
	datac => \U_CPU|U_AC|U_DFFALU3|Q\(1),
	combout => \U_CPU|U_AC|U_ALU|Add0~32_combout\);

-- Location: IOIBUF_X49_Y0_N29
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

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: IOIBUF_X78_Y3_N15
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

-- Location: IOIBUF_X62_Y0_N15
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

-- Location: IOIBUF_X38_Y0_N1
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

-- Location: IOIBUF_X31_Y39_N8
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

-- Location: IOIBUF_X36_Y0_N1
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

-- Location: IOIBUF_X34_Y0_N8
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

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: IOIBUF_X58_Y0_N8
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

-- Location: IOIBUF_X78_Y45_N15
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
END structure;



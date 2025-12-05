-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/04/2025 19:21:00"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	CPU IS
    PORT (
	OPCODE : IN std_logic_vector(2 DOWNTO 0);
	OPERAND1 : IN std_logic_vector(7 DOWNTO 0);
	OPERAND2 : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RST : IN std_logic;
	OUTP : OUT std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- OUTP[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTP[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND1[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPERAND2[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_OUTP : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPERAND2[1]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX|Selector1~0_combout\ : std_logic;
SIGNAL \OPERAND2[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX|Selector2~0_combout\ : std_logic;
SIGNAL \OPERAND1[0]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX|Selector2~1_combout\ : std_logic;
SIGNAL \OPERAND1[1]~input_o\ : std_logic;
SIGNAL \U_AC|U_MUX|Selector1~1_combout\ : std_logic;
SIGNAL \U_REG|P1|process_0~0_combout\ : std_logic;
SIGNAL \OPERAND1[2]~input_o\ : std_logic;
SIGNAL \U_REG|P0|data~2_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~7_combout\ : std_logic;
SIGNAL \OPERAND2[2]~input_o\ : std_logic;
SIGNAL \U_AC|U_DFF3|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \U_REG|P0|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P0|process_0~1_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~8_combout\ : std_logic;
SIGNAL \U_REG|P1|process_0~1_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~9_combout\ : std_logic;
SIGNAL \U_REG|P5|data~0_combout\ : std_logic;
SIGNAL \U_REG|P4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P4|process_0~0_combout\ : std_logic;
SIGNAL \U_AC|U_MUX|Selector2~2_combout\ : std_logic;
SIGNAL \U_REG|P5|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P4|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~11_combout\ : std_logic;
SIGNAL \U_REG|P2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P2|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P2|process_0~1_combout\ : std_logic;
SIGNAL \U_REG|P3|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P3|data~0_combout\ : std_logic;
SIGNAL \U_REG|P3|process_0~1_combout\ : std_logic;
SIGNAL \U_REG|P2|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~10_combout\ : std_logic;
SIGNAL \U_REG|P7|data~0_combout\ : std_logic;
SIGNAL \U_REG|P6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P6|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P7|process_0~0_combout\ : std_logic;
SIGNAL \U_REG|P6|data~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~12_combout\ : std_logic;
SIGNAL \U_AC|DATA[0]~13_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU1|internal_Q[0]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU1|internal_Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~7_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~3_cout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_REG|P3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~3_combout\ : std_logic;
SIGNAL \U_REG|P5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~4_combout\ : std_logic;
SIGNAL \U_REG|P7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~5_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~0_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~1_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~2_combout\ : std_logic;
SIGNAL \U_AC|DATA[1]~6_combout\ : std_logic;
SIGNAL \U_AC|U_DFFALU1|internal_Q[2]~feeder_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~14_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~15_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~16_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~19_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~18_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~17_combout\ : std_logic;
SIGNAL \U_AC|DATA[2]~20_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~13_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~9_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~5\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~10_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~15_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \OPERAND1[3]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[3]~21_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~22_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~23_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~26_combout\ : std_logic;
SIGNAL \U_REG|P4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_REG|P5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~25_combout\ : std_logic;
SIGNAL \U_REG|P3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~24_combout\ : std_logic;
SIGNAL \U_AC|DATA[3]~27_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~16_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~11\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~17_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~19_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~20_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~21_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~18\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~22_combout\ : std_logic;
SIGNAL \U_REG|P7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~33_combout\ : std_logic;
SIGNAL \OPERAND1[4]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[4]~28_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~29_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~30_combout\ : std_logic;
SIGNAL \U_REG|P3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~31_combout\ : std_logic;
SIGNAL \U_REG|P4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~32_combout\ : std_logic;
SIGNAL \U_AC|DATA[4]~34_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~24_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~26_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~25_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~27_combout\ : std_logic;
SIGNAL \U_REG|P3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~38_combout\ : std_logic;
SIGNAL \U_REG|P7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~40_combout\ : std_logic;
SIGNAL \U_REG|P5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~39_combout\ : std_logic;
SIGNAL \OPERAND1[5]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[5]~35_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~36_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~37_combout\ : std_logic;
SIGNAL \U_AC|DATA[5]~41_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~28_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~23\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~29_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~31_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~32_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~47_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~45_combout\ : std_logic;
SIGNAL \OPERAND1[6]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[6]~42_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~43_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~44_combout\ : std_logic;
SIGNAL \U_REG|P5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~46_combout\ : std_logic;
SIGNAL \U_AC|DATA[6]~48_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~36_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~38_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~37_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~33_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~30\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~34_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~39_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~40_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~35\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~41_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~43_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_REG|P7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~54_combout\ : std_logic;
SIGNAL \OPERAND1[7]~input_o\ : std_logic;
SIGNAL \U_AC|DATA[7]~49_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~50_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~51_combout\ : std_logic;
SIGNAL \U_REG|P5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~53_combout\ : std_logic;
SIGNAL \U_REG|P3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~52_combout\ : std_logic;
SIGNAL \U_AC|DATA[7]~55_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~44_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~49_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~50_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~45_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~42\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~46_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~48_combout\ : std_logic;
SIGNAL \U_AC|U_ALU|Add0~51_combout\ : std_logic;
SIGNAL \U_REG|P2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_REG|P5|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF2|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P4|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFF3|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_REG|P1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P7|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG|P6|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_AC|U_DFFALU1|internal_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_AC|U_DFF5|internal_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

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
ww_RST <= RST;
OUTP <= ww_OUTP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X29_Y39_N16
\OUTP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~8_combout\,
	devoe => ww_devoe,
	o => \OUTP[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\OUTP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~15_combout\,
	devoe => ww_devoe,
	o => \OUTP[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\OUTP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~20_combout\,
	devoe => ww_devoe,
	o => \OUTP[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\OUTP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~27_combout\,
	devoe => ww_devoe,
	o => \OUTP[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\OUTP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~32_combout\,
	devoe => ww_devoe,
	o => \OUTP[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\OUTP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~39_combout\,
	devoe => ww_devoe,
	o => \OUTP[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\OUTP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~44_combout\,
	devoe => ww_devoe,
	o => \OUTP[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\OUTP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_AC|U_ALU|Add0~51_combout\,
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

-- Location: IOIBUF_X31_Y39_N15
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

-- Location: IOIBUF_X0_Y18_N22
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X35_Y36_N13
\U_AC|U_DFF1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(2));

-- Location: IOIBUF_X31_Y39_N29
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

-- Location: FF_X35_Y36_N23
\U_AC|U_DFF1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(1));

-- Location: IOIBUF_X31_Y39_N1
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

-- Location: FF_X35_Y36_N27
\U_AC|U_DFF3|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(1));

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: FF_X35_Y36_N17
\U_AC|U_DFF1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPCODE[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF1|internal_Q\(0));

-- Location: LCCOMB_X35_Y36_N26
\U_AC|U_MUX|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX|Selector1~0_combout\ = (!\U_AC|U_DFF1|internal_Q\(2) & (!\U_AC|U_DFF1|internal_Q\(1) & (\U_AC|U_DFF3|internal_Q\(1) & !\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF3|internal_Q\(1),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_MUX|Selector1~0_combout\);

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: FF_X35_Y36_N5
\U_AC|U_DFF3|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND2[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(0));

-- Location: LCCOMB_X35_Y36_N10
\U_AC|U_MUX|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX|Selector2~0_combout\ = (!\U_AC|U_DFF1|internal_Q\(2) & (\U_AC|U_DFF3|internal_Q\(0) & (!\U_AC|U_DFF1|internal_Q\(1) & !\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF3|internal_Q\(0),
	datac => \U_AC|U_DFF1|internal_Q\(1),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_MUX|Selector2~0_combout\);

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: FF_X35_Y36_N9
\U_AC|U_DFF2|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[0]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(0));

-- Location: LCCOMB_X35_Y36_N8
\U_AC|U_MUX|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX|Selector2~1_combout\ = (\U_AC|U_DFF2|internal_Q\(0) & ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF1|internal_Q\(2)) # (\U_AC|U_DFF1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(1),
	datab => \U_AC|U_DFF1|internal_Q\(2),
	datac => \U_AC|U_DFF2|internal_Q\(0),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_MUX|Selector2~1_combout\);

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: FF_X35_Y36_N19
\U_AC|U_DFF2|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[1]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(1));

-- Location: LCCOMB_X35_Y36_N18
\U_AC|U_MUX|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX|Selector1~1_combout\ = (\U_AC|U_DFF2|internal_Q\(1) & ((\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # (\U_AC|U_DFF1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(1),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_MUX|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y36_N0
\U_REG|P1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|process_0~0_combout\ = (!\U_AC|U_MUX|Selector1~0_combout\ & (!\U_AC|U_MUX|Selector1~1_combout\ & ((\U_AC|U_MUX|Selector2~0_combout\) # (\U_AC|U_MUX|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX|Selector1~0_combout\,
	datab => \U_AC|U_MUX|Selector2~0_combout\,
	datac => \U_AC|U_MUX|Selector2~1_combout\,
	datad => \U_AC|U_MUX|Selector1~1_combout\,
	combout => \U_REG|P1|process_0~0_combout\);

-- Location: IOIBUF_X34_Y39_N8
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

-- Location: FF_X35_Y36_N25
\U_AC|U_DFF2|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[2]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(2));

-- Location: LCCOMB_X35_Y36_N12
\U_REG|P0|data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|data~2_combout\ = (!\U_AC|U_DFF2|internal_Q\(2) & ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF1|internal_Q\(2)) # (\U_AC|U_DFF1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(1),
	datab => \U_AC|U_DFF2|internal_Q\(2),
	datac => \U_AC|U_DFF1|internal_Q\(2),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_REG|P0|data~2_combout\);

-- Location: LCCOMB_X35_Y36_N22
\U_AC|DATA[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~7_combout\ = (\U_AC|U_DFF2|internal_Q\(0)) # ((\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # (\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF2|internal_Q\(0),
	datab => \U_AC|U_DFF1|internal_Q\(2),
	datac => \U_AC|U_DFF1|internal_Q\(1),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|DATA[0]~7_combout\);

-- Location: IOIBUF_X26_Y39_N22
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

-- Location: LCCOMB_X29_Y36_N16
\U_AC|U_DFF3|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFF3|internal_Q[2]~feeder_combout\ = \OPERAND2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERAND2[2]~input_o\,
	combout => \U_AC|U_DFF3|internal_Q[2]~feeder_combout\);

-- Location: FF_X29_Y36_N17
\U_AC|U_DFF3|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|U_DFF3|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF3|internal_Q\(2));

-- Location: LCCOMB_X35_Y36_N24
\U_AC|U_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_COMP|Equal0~0_combout\ = (!\U_AC|U_DFF1|internal_Q\(1) & (!\U_AC|U_DFF1|internal_Q\(2) & !\U_AC|U_DFF1|internal_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(1),
	datab => \U_AC|U_DFF1|internal_Q\(2),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_COMP|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y36_N30
\U_REG|P0|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|process_0~0_combout\ = (!\U_AC|U_MUX|Selector2~0_combout\ & (!\U_AC|U_MUX|Selector1~1_combout\ & (!\U_AC|U_MUX|Selector2~1_combout\ & !\U_AC|U_MUX|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX|Selector2~0_combout\,
	datab => \U_AC|U_MUX|Selector1~1_combout\,
	datac => \U_AC|U_MUX|Selector2~1_combout\,
	datad => \U_AC|U_MUX|Selector1~0_combout\,
	combout => \U_REG|P0|process_0~0_combout\);

-- Location: LCCOMB_X31_Y36_N4
\U_REG|P0|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P0|process_0~1_combout\ = (!\U_AC|U_DFF3|internal_Q\(2) & (\U_AC|U_COMP|Equal0~0_combout\ & \U_REG|P0|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF3|internal_Q\(2),
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_REG|P0|process_0~1_combout\);

-- Location: FF_X31_Y36_N17
\U_REG|P0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[0]~13_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(0));

-- Location: LCCOMB_X31_Y36_N16
\U_AC|DATA[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~8_combout\ = (\U_AC|DATA[0]~7_combout\ & (((\U_REG|P0|Q\(0)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_AC|DATA[0]~7_combout\,
	datac => \U_REG|P0|Q\(0),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[0]~8_combout\);

-- Location: LCCOMB_X31_Y36_N18
\U_REG|P1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P1|process_0~1_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (\U_REG|P1|process_0~0_combout\ & !\U_AC|U_DFF3|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datac => \U_REG|P1|process_0~0_combout\,
	datad => \U_AC|U_DFF3|internal_Q\(2),
	combout => \U_REG|P1|process_0~1_combout\);

-- Location: FF_X31_Y36_N31
\U_REG|P1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[0]~13_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(0));

-- Location: LCCOMB_X31_Y36_N30
\U_AC|DATA[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~9_combout\ = (\U_AC|DATA[0]~8_combout\ & (((\U_REG|P1|Q\(0)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|process_0~0_combout\,
	datab => \U_AC|DATA[0]~8_combout\,
	datac => \U_REG|P1|Q\(0),
	datad => \U_REG|P0|data~2_combout\,
	combout => \U_AC|DATA[0]~9_combout\);

-- Location: LCCOMB_X35_Y36_N20
\U_REG|P5|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|data~0_combout\ = (!\U_AC|U_COMP|Equal0~0_combout\ & (\U_AC|U_DFF2|internal_Q\(2) & \U_REG|P1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_AC|U_DFF2|internal_Q\(2),
	datad => \U_REG|P1|process_0~0_combout\,
	combout => \U_REG|P5|data~0_combout\);

-- Location: LCCOMB_X32_Y35_N26
\U_REG|P4|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|Q[0]~feeder_combout\ = \U_AC|DATA[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[0]~13_combout\,
	combout => \U_REG|P4|Q[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y35_N14
\U_REG|P4|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|process_0~0_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (\U_REG|P0|process_0~0_combout\ & \U_AC|U_DFF3|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datac => \U_REG|P0|process_0~0_combout\,
	datad => \U_AC|U_DFF3|internal_Q\(2),
	combout => \U_REG|P4|process_0~0_combout\);

-- Location: FF_X32_Y35_N27
\U_REG|P4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P4|Q[0]~feeder_combout\,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(0));

-- Location: LCCOMB_X34_Y36_N28
\U_AC|U_MUX|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_MUX|Selector2~2_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (\U_AC|U_DFF3|internal_Q\(0))) # (!\U_AC|U_COMP|Equal0~0_combout\ & ((\U_AC|U_DFF2|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datac => \U_AC|U_DFF3|internal_Q\(0),
	datad => \U_AC|U_DFF2|internal_Q\(0),
	combout => \U_AC|U_MUX|Selector2~2_combout\);

-- Location: LCCOMB_X35_Y35_N28
\U_REG|P5|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|process_0~0_combout\ = (\U_AC|U_DFF3|internal_Q\(2) & (\U_AC|U_MUX|Selector2~2_combout\ & (!\U_AC|U_DFF3|internal_Q\(1) & \U_AC|U_COMP|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF3|internal_Q\(2),
	datab => \U_AC|U_MUX|Selector2~2_combout\,
	datac => \U_AC|U_DFF3|internal_Q\(1),
	datad => \U_AC|U_COMP|Equal0~0_combout\,
	combout => \U_REG|P5|process_0~0_combout\);

-- Location: FF_X31_Y35_N1
\U_REG|P5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[0]~13_combout\,
	sload => VCC,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(0));

-- Location: LCCOMB_X35_Y35_N26
\U_REG|P4|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|data~0_combout\ = (\U_REG|P0|process_0~0_combout\ & (!\U_AC|U_COMP|Equal0~0_combout\ & \U_AC|U_DFF2|internal_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|process_0~0_combout\,
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datad => \U_AC|U_DFF2|internal_Q\(2),
	combout => \U_REG|P4|data~0_combout\);

-- Location: LCCOMB_X31_Y35_N0
\U_AC|DATA[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~11_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(0) & ((\U_REG|P4|Q\(0)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & ((\U_REG|P4|Q\(0)) # ((!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P4|Q\(0),
	datac => \U_REG|P5|Q\(0),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[0]~11_combout\);

-- Location: LCCOMB_X30_Y36_N10
\U_REG|P2|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|Q[0]~feeder_combout\ = \U_AC|DATA[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[0]~13_combout\,
	combout => \U_REG|P2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y36_N6
\U_REG|P2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|process_0~0_combout\ = (!\U_AC|U_MUX|Selector2~0_combout\ & (!\U_AC|U_MUX|Selector2~1_combout\ & ((\U_AC|U_MUX|Selector1~1_combout\) # (\U_AC|U_MUX|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX|Selector2~0_combout\,
	datab => \U_AC|U_MUX|Selector1~1_combout\,
	datac => \U_AC|U_MUX|Selector2~1_combout\,
	datad => \U_AC|U_MUX|Selector1~0_combout\,
	combout => \U_REG|P2|process_0~0_combout\);

-- Location: LCCOMB_X30_Y36_N18
\U_REG|P2|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|process_0~1_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (!\U_AC|U_DFF3|internal_Q\(2) & \U_REG|P2|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_AC|U_DFF3|internal_Q\(2),
	datad => \U_REG|P2|process_0~0_combout\,
	combout => \U_REG|P2|process_0~1_combout\);

-- Location: FF_X30_Y36_N11
\U_REG|P2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P2|Q[0]~feeder_combout\,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(0));

-- Location: LCCOMB_X35_Y36_N28
\U_REG|P3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|process_0~0_combout\ = (\U_AC|U_MUX|Selector2~0_combout\ & ((\U_AC|U_MUX|Selector1~1_combout\) # ((\U_AC|U_MUX|Selector1~0_combout\)))) # (!\U_AC|U_MUX|Selector2~0_combout\ & (\U_AC|U_MUX|Selector2~1_combout\ & 
-- ((\U_AC|U_MUX|Selector1~1_combout\) # (\U_AC|U_MUX|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_MUX|Selector2~0_combout\,
	datab => \U_AC|U_MUX|Selector1~1_combout\,
	datac => \U_AC|U_MUX|Selector2~1_combout\,
	datad => \U_AC|U_MUX|Selector1~0_combout\,
	combout => \U_REG|P3|process_0~0_combout\);

-- Location: LCCOMB_X35_Y36_N14
\U_REG|P3|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|data~0_combout\ = (\U_REG|P0|data~2_combout\ & \U_REG|P3|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|P0|data~2_combout\,
	datad => \U_REG|P3|process_0~0_combout\,
	combout => \U_REG|P3|data~0_combout\);

-- Location: LCCOMB_X30_Y36_N30
\U_REG|P3|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|process_0~1_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (!\U_AC|U_DFF3|internal_Q\(2) & \U_REG|P3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_AC|U_DFF3|internal_Q\(2),
	datad => \U_REG|P3|process_0~0_combout\,
	combout => \U_REG|P3|process_0~1_combout\);

-- Location: FF_X30_Y36_N13
\U_REG|P3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[0]~13_combout\,
	sload => VCC,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(0));

-- Location: LCCOMB_X30_Y36_N28
\U_REG|P2|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P2|data~0_combout\ = (\U_REG|P0|data~2_combout\ & \U_REG|P2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG|P0|data~2_combout\,
	datad => \U_REG|P2|process_0~0_combout\,
	combout => \U_REG|P2|data~0_combout\);

-- Location: LCCOMB_X30_Y36_N12
\U_AC|DATA[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~10_combout\ = (\U_REG|P2|Q\(0) & (((\U_REG|P3|Q\(0))) # (!\U_REG|P3|data~0_combout\))) # (!\U_REG|P2|Q\(0) & (!\U_REG|P2|data~0_combout\ & ((\U_REG|P3|Q\(0)) # (!\U_REG|P3|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P2|Q\(0),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P3|Q\(0),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[0]~10_combout\);

-- Location: LCCOMB_X35_Y36_N4
\U_REG|P7|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|data~0_combout\ = (!\U_AC|U_COMP|Equal0~0_combout\ & (\U_AC|U_DFF2|internal_Q\(2) & \U_REG|P3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_AC|U_DFF2|internal_Q\(2),
	datad => \U_REG|P3|process_0~0_combout\,
	combout => \U_REG|P7|data~0_combout\);

-- Location: LCCOMB_X34_Y36_N14
\U_REG|P6|Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|Q[0]~feeder_combout\ = \U_AC|DATA[0]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[0]~13_combout\,
	combout => \U_REG|P6|Q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y36_N4
\U_REG|P6|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|process_0~0_combout\ = (\U_AC|U_DFF3|internal_Q\(2) & (\U_AC|U_COMP|Equal0~0_combout\ & \U_REG|P2|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF3|internal_Q\(2),
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datad => \U_REG|P2|process_0~0_combout\,
	combout => \U_REG|P6|process_0~0_combout\);

-- Location: FF_X34_Y36_N15
\U_REG|P6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P6|Q[0]~feeder_combout\,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(0));

-- Location: LCCOMB_X34_Y36_N10
\U_REG|P7|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|process_0~0_combout\ = (\U_AC|U_COMP|Equal0~0_combout\ & (\U_AC|U_DFF3|internal_Q\(1) & (\U_AC|U_DFF3|internal_Q\(2) & \U_AC|U_MUX|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_COMP|Equal0~0_combout\,
	datab => \U_AC|U_DFF3|internal_Q\(1),
	datac => \U_AC|U_DFF3|internal_Q\(2),
	datad => \U_AC|U_MUX|Selector2~2_combout\,
	combout => \U_REG|P7|process_0~0_combout\);

-- Location: FF_X34_Y36_N25
\U_REG|P7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[0]~13_combout\,
	sload => VCC,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(0));

-- Location: LCCOMB_X34_Y36_N8
\U_REG|P6|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P6|data~0_combout\ = (!\U_AC|U_COMP|Equal0~0_combout\ & (\U_AC|U_DFF2|internal_Q\(2) & \U_REG|P2|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_COMP|Equal0~0_combout\,
	datac => \U_AC|U_DFF2|internal_Q\(2),
	datad => \U_REG|P2|process_0~0_combout\,
	combout => \U_REG|P6|data~0_combout\);

-- Location: LCCOMB_X34_Y36_N24
\U_AC|DATA[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~12_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|Q\(0) & ((\U_REG|P6|Q\(0)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & ((\U_REG|P6|Q\(0)) # ((!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P6|Q\(0),
	datac => \U_REG|P7|Q\(0),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[0]~12_combout\);

-- Location: LCCOMB_X31_Y35_N4
\U_AC|DATA[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[0]~13_combout\ = (\U_AC|DATA[0]~9_combout\ & (\U_AC|DATA[0]~11_combout\ & (\U_AC|DATA[0]~10_combout\ & \U_AC|DATA[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~9_combout\,
	datab => \U_AC|DATA[0]~11_combout\,
	datac => \U_AC|DATA[0]~10_combout\,
	datad => \U_AC|DATA[0]~12_combout\,
	combout => \U_AC|DATA[0]~13_combout\);

-- Location: LCCOMB_X36_Y36_N24
\U_AC|U_DFFALU1|internal_Q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFFALU1|internal_Q[0]~feeder_combout\ = \U_AC|U_DFF1|internal_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|U_DFFALU1|internal_Q[0]~feeder_combout\);

-- Location: FF_X36_Y36_N25
\U_AC|U_DFFALU1|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|U_DFFALU1|internal_Q[0]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU1|internal_Q\(0));

-- Location: LCCOMB_X36_Y36_N28
\U_AC|U_DFFALU1|internal_Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFFALU1|internal_Q[1]~feeder_combout\ = \U_AC|U_DFF1|internal_Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF1|internal_Q\(1),
	combout => \U_AC|U_DFFALU1|internal_Q[1]~feeder_combout\);

-- Location: FF_X36_Y36_N29
\U_AC|U_DFFALU1|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|U_DFFALU1|internal_Q[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU1|internal_Q\(1));

-- Location: LCCOMB_X34_Y35_N10
\U_AC|U_ALU|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~7_combout\ = ((\U_AC|DATA[0]~13_combout\ & \U_AC|U_DFFALU1|internal_Q\(0))) # (!\U_AC|U_DFFALU1|internal_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~13_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(0),
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~7_combout\);

-- Location: FF_X31_Y35_N5
\U_AC|U_DFF5|internal_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[0]~13_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(0));

-- Location: LCCOMB_X31_Y35_N2
\U_AC|U_ALU|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~1_combout\ = \U_AC|U_DFF5|internal_Q\(0) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF5|internal_Q\(0),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~1_combout\);

-- Location: LCCOMB_X31_Y35_N6
\U_AC|U_ALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~3_cout\ = CARRY(\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(0),
	datad => VCC,
	cout => \U_AC|U_ALU|Add0~3_cout\);

-- Location: LCCOMB_X31_Y35_N8
\U_AC|U_ALU|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~4_combout\ = (\U_AC|DATA[0]~13_combout\ & ((\U_AC|U_ALU|Add0~1_combout\ & (\U_AC|U_ALU|Add0~3_cout\ & VCC)) # (!\U_AC|U_ALU|Add0~1_combout\ & (!\U_AC|U_ALU|Add0~3_cout\)))) # (!\U_AC|DATA[0]~13_combout\ & ((\U_AC|U_ALU|Add0~1_combout\ & 
-- (!\U_AC|U_ALU|Add0~3_cout\)) # (!\U_AC|U_ALU|Add0~1_combout\ & ((\U_AC|U_ALU|Add0~3_cout\) # (GND)))))
-- \U_AC|U_ALU|Add0~5\ = CARRY((\U_AC|DATA[0]~13_combout\ & (!\U_AC|U_ALU|Add0~1_combout\ & !\U_AC|U_ALU|Add0~3_cout\)) # (!\U_AC|DATA[0]~13_combout\ & ((!\U_AC|U_ALU|Add0~3_cout\) # (!\U_AC|U_ALU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~13_combout\,
	datab => \U_AC|U_ALU|Add0~1_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~3_cout\,
	combout => \U_AC|U_ALU|Add0~4_combout\,
	cout => \U_AC|U_ALU|Add0~5\);

-- Location: LCCOMB_X30_Y36_N20
\U_REG|P3|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|Q[1]~feeder_combout\ = \U_AC|DATA[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~6_combout\,
	combout => \U_REG|P3|Q[1]~feeder_combout\);

-- Location: FF_X30_Y36_N21
\U_REG|P3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P3|Q[1]~feeder_combout\,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(1));

-- Location: FF_X30_Y36_N3
\U_REG|P2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[1]~6_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(1));

-- Location: LCCOMB_X30_Y36_N2
\U_AC|DATA[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~3_combout\ = (\U_REG|P3|Q\(1) & (((\U_REG|P2|Q\(1)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(1) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(1)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(1),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(1),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[1]~3_combout\);

-- Location: LCCOMB_X31_Y35_N24
\U_REG|P5|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|Q[1]~feeder_combout\ = \U_AC|DATA[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~6_combout\,
	combout => \U_REG|P5|Q[1]~feeder_combout\);

-- Location: FF_X31_Y35_N25
\U_REG|P5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P5|Q[1]~feeder_combout\,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(1));

-- Location: FF_X35_Y35_N5
\U_REG|P4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[1]~6_combout\,
	sload => VCC,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(1));

-- Location: LCCOMB_X35_Y35_N4
\U_AC|DATA[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~4_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(1) & ((\U_REG|P4|Q\(1)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & (((\U_REG|P4|Q\(1)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|Q\(1),
	datac => \U_REG|P4|Q\(1),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[1]~4_combout\);

-- Location: LCCOMB_X32_Y35_N8
\U_REG|P7|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|Q[1]~feeder_combout\ = \U_AC|DATA[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[1]~6_combout\,
	combout => \U_REG|P7|Q[1]~feeder_combout\);

-- Location: FF_X32_Y35_N9
\U_REG|P7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P7|Q[1]~feeder_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(1));

-- Location: FF_X34_Y35_N29
\U_REG|P6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[1]~6_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(1));

-- Location: LCCOMB_X34_Y35_N28
\U_AC|DATA[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~5_combout\ = (\U_REG|P7|Q\(1) & (((\U_REG|P6|Q\(1))) # (!\U_REG|P6|data~0_combout\))) # (!\U_REG|P7|Q\(1) & (!\U_REG|P7|data~0_combout\ & ((\U_REG|P6|Q\(1)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|Q\(1),
	datab => \U_REG|P6|data~0_combout\,
	datac => \U_REG|P6|Q\(1),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[1]~5_combout\);

-- Location: FF_X31_Y36_N11
\U_REG|P1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[1]~6_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(1));

-- Location: LCCOMB_X35_Y36_N16
\U_AC|DATA[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~0_combout\ = (\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(0)) # (\U_AC|U_DFF2|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(1),
	datab => \U_AC|U_DFF1|internal_Q\(2),
	datac => \U_AC|U_DFF1|internal_Q\(0),
	datad => \U_AC|U_DFF2|internal_Q\(1),
	combout => \U_AC|DATA[1]~0_combout\);

-- Location: FF_X31_Y36_N13
\U_REG|P0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[1]~6_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(1));

-- Location: LCCOMB_X31_Y36_N12
\U_AC|DATA[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~1_combout\ = (\U_AC|DATA[1]~0_combout\ & (((\U_REG|P0|Q\(1)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P0|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~0_combout\,
	datab => \U_REG|P0|process_0~0_combout\,
	datac => \U_REG|P0|Q\(1),
	datad => \U_REG|P0|data~2_combout\,
	combout => \U_AC|DATA[1]~1_combout\);

-- Location: LCCOMB_X31_Y36_N10
\U_AC|DATA[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~2_combout\ = (\U_AC|DATA[1]~1_combout\ & (((\U_REG|P1|Q\(1)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|process_0~0_combout\,
	datab => \U_REG|P0|data~2_combout\,
	datac => \U_REG|P1|Q\(1),
	datad => \U_AC|DATA[1]~1_combout\,
	combout => \U_AC|DATA[1]~2_combout\);

-- Location: LCCOMB_X31_Y35_N26
\U_AC|DATA[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[1]~6_combout\ = (\U_AC|DATA[1]~3_combout\ & (\U_AC|DATA[1]~4_combout\ & (\U_AC|DATA[1]~5_combout\ & \U_AC|DATA[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~3_combout\,
	datab => \U_AC|DATA[1]~4_combout\,
	datac => \U_AC|DATA[1]~5_combout\,
	datad => \U_AC|DATA[1]~2_combout\,
	combout => \U_AC|DATA[1]~6_combout\);

-- Location: LCCOMB_X36_Y36_N30
\U_AC|U_DFFALU1|internal_Q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_DFFALU1|internal_Q[2]~feeder_combout\ = \U_AC|U_DFF1|internal_Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|U_DFF1|internal_Q\(2),
	combout => \U_AC|U_DFFALU1|internal_Q[2]~feeder_combout\);

-- Location: FF_X36_Y36_N31
\U_AC|U_DFFALU1|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|U_DFFALU1|internal_Q[2]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFFALU1|internal_Q\(2));

-- Location: LCCOMB_X34_Y35_N26
\U_AC|U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~0_combout\ = (\U_AC|U_DFFALU1|internal_Q\(0) & (((\U_AC|DATA[1]~6_combout\ & \U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|U_DFFALU1|internal_Q\(0) & (!\U_AC|DATA[0]~13_combout\ & ((!\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~13_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(0),
	datac => \U_AC|DATA[1]~6_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~0_combout\);

-- Location: LCCOMB_X34_Y35_N4
\U_AC|U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~6_combout\ = (\U_AC|U_DFFALU1|internal_Q\(1) & (((\U_AC|U_ALU|Add0~0_combout\)))) # (!\U_AC|U_DFFALU1|internal_Q\(1) & (\U_AC|U_ALU|Add0~4_combout\ & ((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~4_combout\,
	datab => \U_AC|U_ALU|Add0~0_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(1),
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~6_combout\);

-- Location: LCCOMB_X34_Y35_N12
\U_AC|U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~8_combout\ = (\U_AC|U_ALU|Add0~6_combout\) # ((\U_AC|U_ALU|Add0~7_combout\ & (\U_AC|U_DFF5|internal_Q\(0) & !\U_AC|U_DFFALU1|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~7_combout\,
	datab => \U_AC|U_ALU|Add0~6_combout\,
	datac => \U_AC|U_DFF5|internal_Q\(0),
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X36_Y36_N26
\U_AC|DATA[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~14_combout\ = (\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF1|internal_Q\(0)) # (\U_AC|U_DFF2|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF1|internal_Q\(0),
	datad => \U_AC|U_DFF2|internal_Q\(2),
	combout => \U_AC|DATA[2]~14_combout\);

-- Location: FF_X31_Y36_N9
\U_REG|P0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(2));

-- Location: LCCOMB_X31_Y36_N8
\U_AC|DATA[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~15_combout\ = (\U_AC|DATA[2]~14_combout\ & (((\U_REG|P0|Q\(2)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_AC|DATA[2]~14_combout\,
	datac => \U_REG|P0|Q\(2),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[2]~15_combout\);

-- Location: FF_X31_Y36_N23
\U_REG|P1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(2));

-- Location: LCCOMB_X31_Y36_N22
\U_AC|DATA[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~16_combout\ = (\U_AC|DATA[2]~15_combout\ & (((\U_REG|P1|Q\(2)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|process_0~0_combout\,
	datab => \U_AC|DATA[2]~15_combout\,
	datac => \U_REG|P1|Q\(2),
	datad => \U_REG|P0|data~2_combout\,
	combout => \U_AC|DATA[2]~16_combout\);

-- Location: FF_X34_Y36_N7
\U_REG|P7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[2]~20_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(2));

-- Location: FF_X34_Y36_N21
\U_REG|P6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(2));

-- Location: LCCOMB_X34_Y36_N20
\U_AC|DATA[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~19_combout\ = (\U_REG|P7|Q\(2) & (((\U_REG|P6|Q\(2))) # (!\U_REG|P6|data~0_combout\))) # (!\U_REG|P7|Q\(2) & (!\U_REG|P7|data~0_combout\ & ((\U_REG|P6|Q\(2)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|Q\(2),
	datab => \U_REG|P6|data~0_combout\,
	datac => \U_REG|P6|Q\(2),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[2]~19_combout\);

-- Location: FF_X35_Y35_N27
\U_REG|P5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(2));

-- Location: FF_X35_Y35_N25
\U_REG|P4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(2));

-- Location: LCCOMB_X35_Y35_N24
\U_AC|DATA[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~18_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(2) & ((\U_REG|P4|Q\(2)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & (((\U_REG|P4|Q\(2)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|Q\(2),
	datac => \U_REG|P4|Q\(2),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[2]~18_combout\);

-- Location: FF_X30_Y36_N29
\U_REG|P3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(2));

-- Location: FF_X30_Y36_N7
\U_REG|P2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(2));

-- Location: LCCOMB_X30_Y36_N6
\U_AC|DATA[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~17_combout\ = (\U_REG|P3|Q\(2) & (((\U_REG|P2|Q\(2)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(2) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(2)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(2),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(2),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[2]~17_combout\);

-- Location: LCCOMB_X34_Y36_N6
\U_AC|DATA[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[2]~20_combout\ = (\U_AC|DATA[2]~16_combout\ & (\U_AC|DATA[2]~19_combout\ & (\U_AC|DATA[2]~18_combout\ & \U_AC|DATA[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~16_combout\,
	datab => \U_AC|DATA[2]~19_combout\,
	datac => \U_AC|DATA[2]~18_combout\,
	datad => \U_AC|DATA[2]~17_combout\,
	combout => \U_AC|DATA[2]~20_combout\);

-- Location: LCCOMB_X32_Y35_N18
\U_AC|U_ALU|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~12_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|DATA[2]~20_combout\))) # (!\U_AC|U_DFFALU1|internal_Q\(0) & (\U_AC|DATA[0]~13_combout\)))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & 
-- (((\U_AC|U_DFFALU1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[0]~13_combout\,
	datab => \U_AC|DATA[2]~20_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~12_combout\);

-- Location: LCCOMB_X32_Y35_N30
\U_AC|U_ALU|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~14_combout\ = (\U_AC|U_DFFALU1|internal_Q\(1) & (\U_AC|U_ALU|Add0~12_combout\ $ (((\U_AC|DATA[1]~6_combout\) # (\U_AC|U_DFFALU1|internal_Q\(2)))))) # (!\U_AC|U_DFFALU1|internal_Q\(1) & (((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~6_combout\,
	datab => \U_AC|U_ALU|Add0~12_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~14_combout\);

-- Location: LCCOMB_X32_Y35_N24
\U_AC|U_ALU|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~13_combout\ = (\U_AC|U_ALU|Add0~12_combout\ & (((\U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|U_ALU|Add0~12_combout\ & ((\U_AC|U_DFFALU1|internal_Q\(2) & ((!\U_AC|U_DFFALU1|internal_Q\(1)))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & 
-- (!\U_AC|DATA[1]~6_combout\ & \U_AC|U_DFFALU1|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~6_combout\,
	datab => \U_AC|U_ALU|Add0~12_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~13_combout\);

-- Location: FF_X31_Y35_N27
\U_AC|U_DFF5|internal_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[1]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(1));

-- Location: LCCOMB_X32_Y35_N28
\U_AC|U_ALU|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~9_combout\ = \U_AC|U_DFF5|internal_Q\(1) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF5|internal_Q\(1),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~9_combout\);

-- Location: LCCOMB_X31_Y35_N10
\U_AC|U_ALU|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~10_combout\ = ((\U_AC|DATA[1]~6_combout\ $ (\U_AC|U_ALU|Add0~9_combout\ $ (!\U_AC|U_ALU|Add0~5\)))) # (GND)
-- \U_AC|U_ALU|Add0~11\ = CARRY((\U_AC|DATA[1]~6_combout\ & ((\U_AC|U_ALU|Add0~9_combout\) # (!\U_AC|U_ALU|Add0~5\))) # (!\U_AC|DATA[1]~6_combout\ & (\U_AC|U_ALU|Add0~9_combout\ & !\U_AC|U_ALU|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[1]~6_combout\,
	datab => \U_AC|U_ALU|Add0~9_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~5\,
	combout => \U_AC|U_ALU|Add0~10_combout\,
	cout => \U_AC|U_ALU|Add0~11\);

-- Location: LCCOMB_X32_Y35_N4
\U_AC|U_ALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~15_combout\ = (\U_AC|U_ALU|Add0~14_combout\ & (\U_AC|U_ALU|Add0~13_combout\ & ((\U_AC|U_ALU|Add0~10_combout\)))) # (!\U_AC|U_ALU|Add0~14_combout\ & ((\U_AC|U_ALU|Add0~13_combout\) # ((\U_AC|U_DFF5|internal_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~14_combout\,
	datab => \U_AC|U_ALU|Add0~13_combout\,
	datac => \U_AC|U_DFF5|internal_Q\(1),
	datad => \U_AC|U_ALU|Add0~10_combout\,
	combout => \U_AC|U_ALU|Add0~15_combout\);

-- Location: FF_X35_Y36_N15
\U_AC|U_DFF5|internal_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[2]~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(2));

-- Location: LCCOMB_X32_Y36_N26
\U_AC|U_ALU|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~0_combout\ = (\U_AC|DATA[2]~20_combout\ & (\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|U_DFF5|internal_Q\(2)) # (\U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|DATA[2]~20_combout\ & ((\U_AC|U_DFFALU1|internal_Q\(2) $ 
-- (!\U_AC|U_DFFALU1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~20_combout\,
	datab => \U_AC|U_DFF5|internal_Q\(2),
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux5~0_combout\);

-- Location: IOIBUF_X46_Y54_N15
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

-- Location: FF_X36_Y36_N3
\U_AC|U_DFF2|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[3]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(3));

-- Location: LCCOMB_X36_Y36_N2
\U_AC|DATA[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~21_combout\ = (\U_AC|U_DFF1|internal_Q\(0)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF2|internal_Q\(3)) # (\U_AC|U_DFF1|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(0),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(3),
	datad => \U_AC|U_DFF1|internal_Q\(2),
	combout => \U_AC|DATA[3]~21_combout\);

-- Location: FF_X31_Y36_N21
\U_REG|P0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[3]~27_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(3));

-- Location: LCCOMB_X31_Y36_N20
\U_AC|DATA[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~22_combout\ = (\U_AC|DATA[3]~21_combout\ & (((\U_REG|P0|Q\(3)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[3]~21_combout\,
	datab => \U_REG|P0|data~2_combout\,
	datac => \U_REG|P0|Q\(3),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[3]~22_combout\);

-- Location: FF_X31_Y36_N15
\U_REG|P1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[3]~27_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(3));

-- Location: LCCOMB_X31_Y36_N14
\U_AC|DATA[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~23_combout\ = (\U_AC|DATA[3]~22_combout\ & (((\U_REG|P1|Q\(3)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|process_0~0_combout\,
	datab => \U_AC|DATA[3]~22_combout\,
	datac => \U_REG|P1|Q\(3),
	datad => \U_REG|P0|data~2_combout\,
	combout => \U_AC|DATA[3]~23_combout\);

-- Location: FF_X32_Y36_N13
\U_REG|P7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[3]~27_combout\,
	sload => VCC,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(3));

-- Location: FF_X35_Y36_N3
\U_REG|P6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[3]~27_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(3));

-- Location: LCCOMB_X35_Y36_N2
\U_AC|DATA[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~26_combout\ = (\U_REG|P7|Q\(3) & (((\U_REG|P6|Q\(3)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|Q\(3) & (!\U_REG|P7|data~0_combout\ & ((\U_REG|P6|Q\(3)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|Q\(3),
	datab => \U_REG|P7|data~0_combout\,
	datac => \U_REG|P6|Q\(3),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[3]~26_combout\);

-- Location: LCCOMB_X32_Y35_N6
\U_REG|P4|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|Q[3]~feeder_combout\ = \U_AC|DATA[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~27_combout\,
	combout => \U_REG|P4|Q[3]~feeder_combout\);

-- Location: FF_X32_Y35_N7
\U_REG|P4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P4|Q[3]~feeder_combout\,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(3));

-- Location: LCCOMB_X35_Y35_N30
\U_REG|P5|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|Q[3]~feeder_combout\ = \U_AC|DATA[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[3]~27_combout\,
	combout => \U_REG|P5|Q[3]~feeder_combout\);

-- Location: FF_X35_Y35_N31
\U_REG|P5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P5|Q[3]~feeder_combout\,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(3));

-- Location: LCCOMB_X35_Y35_N0
\U_AC|DATA[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~25_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(3) & ((\U_REG|P4|Q\(3)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & ((\U_REG|P4|Q\(3)) # ((!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P4|Q\(3),
	datac => \U_REG|P5|Q\(3),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[3]~25_combout\);

-- Location: LCCOMB_X30_Y36_N24
\U_REG|P3|Q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|Q[3]~feeder_combout\ = \U_AC|DATA[3]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[3]~27_combout\,
	combout => \U_REG|P3|Q[3]~feeder_combout\);

-- Location: FF_X30_Y36_N25
\U_REG|P3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P3|Q[3]~feeder_combout\,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(3));

-- Location: FF_X30_Y36_N15
\U_REG|P2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[3]~27_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(3));

-- Location: LCCOMB_X30_Y36_N14
\U_AC|DATA[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~24_combout\ = (\U_REG|P3|Q\(3) & (((\U_REG|P2|Q\(3)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(3) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(3)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(3),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(3),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[3]~24_combout\);

-- Location: LCCOMB_X32_Y36_N30
\U_AC|DATA[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[3]~27_combout\ = (\U_AC|DATA[3]~23_combout\ & (\U_AC|DATA[3]~26_combout\ & (\U_AC|DATA[3]~25_combout\ & \U_AC|DATA[3]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[3]~23_combout\,
	datab => \U_AC|DATA[3]~26_combout\,
	datac => \U_AC|DATA[3]~25_combout\,
	datad => \U_AC|DATA[3]~24_combout\,
	combout => \U_AC|DATA[3]~27_combout\);

-- Location: LCCOMB_X32_Y36_N20
\U_AC|U_ALU|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux5~1_combout\ = (\U_AC|U_ALU|Mux5~0_combout\ & (((\U_AC|DATA[3]~27_combout\) # (!\U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|U_ALU|Mux5~0_combout\ & (\U_AC|DATA[1]~6_combout\ & (\U_AC|U_DFFALU1|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux5~0_combout\,
	datab => \U_AC|DATA[1]~6_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|DATA[3]~27_combout\,
	combout => \U_AC|U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X32_Y36_N24
\U_AC|U_ALU|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~16_combout\ = \U_AC|U_DFF5|internal_Q\(2) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF5|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~16_combout\);

-- Location: LCCOMB_X31_Y35_N12
\U_AC|U_ALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~17_combout\ = (\U_AC|U_ALU|Add0~16_combout\ & ((\U_AC|DATA[2]~20_combout\ & (\U_AC|U_ALU|Add0~11\ & VCC)) # (!\U_AC|DATA[2]~20_combout\ & (!\U_AC|U_ALU|Add0~11\)))) # (!\U_AC|U_ALU|Add0~16_combout\ & ((\U_AC|DATA[2]~20_combout\ & 
-- (!\U_AC|U_ALU|Add0~11\)) # (!\U_AC|DATA[2]~20_combout\ & ((\U_AC|U_ALU|Add0~11\) # (GND)))))
-- \U_AC|U_ALU|Add0~18\ = CARRY((\U_AC|U_ALU|Add0~16_combout\ & (!\U_AC|DATA[2]~20_combout\ & !\U_AC|U_ALU|Add0~11\)) # (!\U_AC|U_ALU|Add0~16_combout\ & ((!\U_AC|U_ALU|Add0~11\) # (!\U_AC|DATA[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~16_combout\,
	datab => \U_AC|DATA[2]~20_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~11\,
	combout => \U_AC|U_ALU|Add0~17_combout\,
	cout => \U_AC|U_ALU|Add0~18\);

-- Location: LCCOMB_X36_Y36_N16
\U_AC|U_ALU|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~19_combout\ = (!\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_ALU|Add0~17_combout\))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & (\U_AC|U_DFF5|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_DFF5|internal_Q\(2),
	datad => \U_AC|U_ALU|Add0~17_combout\,
	combout => \U_AC|U_ALU|Add0~19_combout\);

-- Location: LCCOMB_X36_Y36_N4
\U_AC|U_ALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~20_combout\ = (\U_AC|U_ALU|Add0~19_combout\) # ((\U_AC|U_DFFALU1|internal_Q\(1) & \U_AC|U_ALU|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_ALU|Mux5~1_combout\,
	datad => \U_AC|U_ALU|Add0~19_combout\,
	combout => \U_AC|U_ALU|Add0~20_combout\);

-- Location: FF_X32_Y36_N31
\U_AC|U_DFF5|internal_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[3]~27_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(3));

-- Location: LCCOMB_X32_Y35_N20
\U_AC|U_ALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~21_combout\ = \U_AC|U_DFF5|internal_Q\(3) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF5|internal_Q\(3),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~21_combout\);

-- Location: LCCOMB_X31_Y35_N14
\U_AC|U_ALU|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~22_combout\ = ((\U_AC|U_ALU|Add0~21_combout\ $ (\U_AC|DATA[3]~27_combout\ $ (!\U_AC|U_ALU|Add0~18\)))) # (GND)
-- \U_AC|U_ALU|Add0~23\ = CARRY((\U_AC|U_ALU|Add0~21_combout\ & ((\U_AC|DATA[3]~27_combout\) # (!\U_AC|U_ALU|Add0~18\))) # (!\U_AC|U_ALU|Add0~21_combout\ & (\U_AC|DATA[3]~27_combout\ & !\U_AC|U_ALU|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~21_combout\,
	datab => \U_AC|DATA[3]~27_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~18\,
	combout => \U_AC|U_ALU|Add0~22_combout\,
	cout => \U_AC|U_ALU|Add0~23\);

-- Location: LCCOMB_X32_Y36_N22
\U_REG|P7|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|Q[4]~feeder_combout\ = \U_AC|DATA[4]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~34_combout\,
	combout => \U_REG|P7|Q[4]~feeder_combout\);

-- Location: FF_X32_Y36_N23
\U_REG|P7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P7|Q[4]~feeder_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(4));

-- Location: FF_X34_Y36_N27
\U_REG|P6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[4]~34_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(4));

-- Location: LCCOMB_X34_Y36_N26
\U_AC|DATA[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~33_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|Q\(4) & ((\U_REG|P6|Q\(4)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & (((\U_REG|P6|Q\(4)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P7|Q\(4),
	datac => \U_REG|P6|Q\(4),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[4]~33_combout\);

-- Location: FF_X31_Y36_N7
\U_REG|P1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[4]~34_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(4));

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: FF_X36_Y36_N11
\U_AC|U_DFF2|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[4]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(4));

-- Location: LCCOMB_X36_Y36_N10
\U_AC|DATA[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~28_combout\ = (\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF2|internal_Q\(4)) # (\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(4),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|DATA[4]~28_combout\);

-- Location: FF_X31_Y36_N29
\U_REG|P0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[4]~34_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(4));

-- Location: LCCOMB_X31_Y36_N28
\U_AC|DATA[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~29_combout\ = (\U_AC|DATA[4]~28_combout\ & (((\U_REG|P0|Q\(4)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_AC|DATA[4]~28_combout\,
	datac => \U_REG|P0|Q\(4),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[4]~29_combout\);

-- Location: LCCOMB_X31_Y36_N6
\U_AC|DATA[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~30_combout\ = (\U_AC|DATA[4]~29_combout\ & (((\U_REG|P1|Q\(4)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P1|process_0~0_combout\,
	datab => \U_REG|P0|data~2_combout\,
	datac => \U_REG|P1|Q\(4),
	datad => \U_AC|DATA[4]~29_combout\,
	combout => \U_AC|DATA[4]~30_combout\);

-- Location: LCCOMB_X30_Y36_N4
\U_REG|P3|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|Q[4]~feeder_combout\ = \U_AC|DATA[4]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[4]~34_combout\,
	combout => \U_REG|P3|Q[4]~feeder_combout\);

-- Location: FF_X30_Y36_N5
\U_REG|P3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P3|Q[4]~feeder_combout\,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(4));

-- Location: FF_X30_Y36_N23
\U_REG|P2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[4]~34_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(4));

-- Location: LCCOMB_X30_Y36_N22
\U_AC|DATA[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~31_combout\ = (\U_REG|P3|Q\(4) & (((\U_REG|P2|Q\(4)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(4) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(4)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(4),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(4),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[4]~31_combout\);

-- Location: LCCOMB_X32_Y35_N10
\U_REG|P4|Q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P4|Q[4]~feeder_combout\ = \U_AC|DATA[4]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[4]~34_combout\,
	combout => \U_REG|P4|Q[4]~feeder_combout\);

-- Location: FF_X32_Y35_N11
\U_REG|P4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P4|Q[4]~feeder_combout\,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(4));

-- Location: FF_X35_Y35_N19
\U_REG|P5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[4]~34_combout\,
	sload => VCC,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(4));

-- Location: LCCOMB_X35_Y35_N18
\U_AC|DATA[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~32_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|Q\(4) & ((\U_REG|P5|Q\(4)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & (((\U_REG|P5|Q\(4)) # (!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P4|Q\(4),
	datac => \U_REG|P5|Q\(4),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[4]~32_combout\);

-- Location: LCCOMB_X32_Y36_N8
\U_AC|DATA[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[4]~34_combout\ = (\U_AC|DATA[4]~33_combout\ & (\U_AC|DATA[4]~30_combout\ & (\U_AC|DATA[4]~31_combout\ & \U_AC|DATA[4]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[4]~33_combout\,
	datab => \U_AC|DATA[4]~30_combout\,
	datac => \U_AC|DATA[4]~31_combout\,
	datad => \U_AC|DATA[4]~32_combout\,
	combout => \U_AC|DATA[4]~34_combout\);

-- Location: LCCOMB_X32_Y36_N10
\U_AC|U_ALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~24_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|DATA[4]~34_combout\))) # (!\U_AC|U_DFFALU1|internal_Q\(0) & (\U_AC|DATA[2]~20_combout\)))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & 
-- (((\U_AC|U_DFFALU1|internal_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[2]~20_combout\,
	datab => \U_AC|DATA[4]~34_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~24_combout\);

-- Location: LCCOMB_X32_Y36_N28
\U_AC|U_ALU|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~26_combout\ = (\U_AC|U_DFFALU1|internal_Q\(1) & (\U_AC|U_ALU|Add0~24_combout\ $ (((\U_AC|DATA[3]~27_combout\) # (\U_AC|U_DFFALU1|internal_Q\(2)))))) # (!\U_AC|U_DFFALU1|internal_Q\(1) & (((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~24_combout\,
	datab => \U_AC|DATA[3]~27_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~26_combout\);

-- Location: LCCOMB_X32_Y36_N12
\U_AC|U_ALU|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~25_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_ALU|Add0~24_combout\) # ((!\U_AC|U_DFFALU1|internal_Q\(1))))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & (!\U_AC|U_ALU|Add0~24_combout\ & (!\U_AC|DATA[3]~27_combout\ & 
-- \U_AC|U_DFFALU1|internal_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_ALU|Add0~24_combout\,
	datac => \U_AC|DATA[3]~27_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~25_combout\);

-- Location: LCCOMB_X32_Y36_N18
\U_AC|U_ALU|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~27_combout\ = (\U_AC|U_ALU|Add0~26_combout\ & (\U_AC|U_ALU|Add0~22_combout\ & ((\U_AC|U_ALU|Add0~25_combout\)))) # (!\U_AC|U_ALU|Add0~26_combout\ & (((\U_AC|U_DFF5|internal_Q\(3)) # (\U_AC|U_ALU|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~22_combout\,
	datab => \U_AC|U_ALU|Add0~26_combout\,
	datac => \U_AC|U_DFF5|internal_Q\(3),
	datad => \U_AC|U_ALU|Add0~25_combout\,
	combout => \U_AC|U_ALU|Add0~27_combout\);

-- Location: LCCOMB_X30_Y35_N4
\U_REG|P3|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|Q[5]~feeder_combout\ = \U_AC|DATA[5]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~41_combout\,
	combout => \U_REG|P3|Q[5]~feeder_combout\);

-- Location: FF_X30_Y35_N5
\U_REG|P3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P3|Q[5]~feeder_combout\,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(5));

-- Location: FF_X30_Y36_N1
\U_REG|P2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[5]~41_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(5));

-- Location: LCCOMB_X30_Y36_N0
\U_AC|DATA[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~38_combout\ = (\U_REG|P3|Q\(5) & (((\U_REG|P2|Q\(5)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(5) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(5)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(5),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(5),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[5]~38_combout\);

-- Location: LCCOMB_X34_Y36_N16
\U_REG|P7|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|Q[5]~feeder_combout\ = \U_AC|DATA[5]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~41_combout\,
	combout => \U_REG|P7|Q[5]~feeder_combout\);

-- Location: FF_X34_Y36_N17
\U_REG|P7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P7|Q[5]~feeder_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(5));

-- Location: FF_X34_Y36_N31
\U_REG|P6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[5]~41_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(5));

-- Location: LCCOMB_X34_Y36_N30
\U_AC|DATA[5]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~40_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|Q\(5) & ((\U_REG|P6|Q\(5)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & (((\U_REG|P6|Q\(5)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P7|Q\(5),
	datac => \U_REG|P6|Q\(5),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[5]~40_combout\);

-- Location: LCCOMB_X35_Y35_N20
\U_REG|P5|Q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|Q[5]~feeder_combout\ = \U_AC|DATA[5]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[5]~41_combout\,
	combout => \U_REG|P5|Q[5]~feeder_combout\);

-- Location: FF_X35_Y35_N21
\U_REG|P5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P5|Q[5]~feeder_combout\,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(5));

-- Location: FF_X35_Y35_N7
\U_REG|P4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[5]~41_combout\,
	sload => VCC,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(5));

-- Location: LCCOMB_X35_Y35_N6
\U_AC|DATA[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~39_combout\ = (\U_REG|P4|data~0_combout\ & (\U_REG|P4|Q\(5) & ((\U_REG|P5|Q\(5)) # (!\U_REG|P5|data~0_combout\)))) # (!\U_REG|P4|data~0_combout\ & ((\U_REG|P5|Q\(5)) # ((!\U_REG|P5|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P4|data~0_combout\,
	datab => \U_REG|P5|Q\(5),
	datac => \U_REG|P4|Q\(5),
	datad => \U_REG|P5|data~0_combout\,
	combout => \U_AC|DATA[5]~39_combout\);

-- Location: FF_X31_Y36_N3
\U_REG|P1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[5]~41_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(5));

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: FF_X36_Y36_N9
\U_AC|U_DFF2|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[5]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(5));

-- Location: LCCOMB_X36_Y36_N8
\U_AC|DATA[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~35_combout\ = (\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF2|internal_Q\(5)) # (\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(5),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|DATA[5]~35_combout\);

-- Location: FF_X31_Y36_N1
\U_REG|P0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[5]~41_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(5));

-- Location: LCCOMB_X31_Y36_N0
\U_AC|DATA[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~36_combout\ = (\U_AC|DATA[5]~35_combout\ & (((\U_REG|P0|Q\(5)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~35_combout\,
	datab => \U_REG|P0|data~2_combout\,
	datac => \U_REG|P0|Q\(5),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[5]~36_combout\);

-- Location: LCCOMB_X31_Y36_N2
\U_AC|DATA[5]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~37_combout\ = (\U_AC|DATA[5]~36_combout\ & (((\U_REG|P1|Q\(5)) # (!\U_REG|P1|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_REG|P1|process_0~0_combout\,
	datac => \U_REG|P1|Q\(5),
	datad => \U_AC|DATA[5]~36_combout\,
	combout => \U_AC|DATA[5]~37_combout\);

-- Location: LCCOMB_X30_Y35_N10
\U_AC|DATA[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[5]~41_combout\ = (\U_AC|DATA[5]~38_combout\ & (\U_AC|DATA[5]~40_combout\ & (\U_AC|DATA[5]~39_combout\ & \U_AC|DATA[5]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~38_combout\,
	datab => \U_AC|DATA[5]~40_combout\,
	datac => \U_AC|DATA[5]~39_combout\,
	datad => \U_AC|DATA[5]~37_combout\,
	combout => \U_AC|DATA[5]~41_combout\);

-- Location: FF_X32_Y36_N9
\U_AC|U_DFF5|internal_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[4]~34_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(4));

-- Location: LCCOMB_X32_Y36_N6
\U_AC|U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~0_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & (((\U_AC|U_DFFALU1|internal_Q\(0))))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|DATA[4]~34_combout\ & (\U_AC|U_DFF5|internal_Q\(4) & \U_AC|U_DFFALU1|internal_Q\(0))) # 
-- (!\U_AC|DATA[4]~34_combout\ & ((!\U_AC|U_DFFALU1|internal_Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_DFF5|internal_Q\(4),
	datac => \U_AC|DATA[4]~34_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y36_N4
\U_AC|U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux3~1_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_ALU|Mux3~0_combout\ & ((\U_AC|DATA[5]~41_combout\))) # (!\U_AC|U_ALU|Mux3~0_combout\ & (\U_AC|DATA[3]~27_combout\)))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & 
-- (((\U_AC|U_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[3]~27_combout\,
	datab => \U_AC|DATA[5]~41_combout\,
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_ALU|Mux3~0_combout\,
	combout => \U_AC|U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y35_N12
\U_AC|U_ALU|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~28_combout\ = \U_AC|U_DFF5|internal_Q\(4) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFF5|internal_Q\(4),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~28_combout\);

-- Location: LCCOMB_X31_Y35_N16
\U_AC|U_ALU|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~29_combout\ = (\U_AC|U_ALU|Add0~28_combout\ & ((\U_AC|DATA[4]~34_combout\ & (\U_AC|U_ALU|Add0~23\ & VCC)) # (!\U_AC|DATA[4]~34_combout\ & (!\U_AC|U_ALU|Add0~23\)))) # (!\U_AC|U_ALU|Add0~28_combout\ & ((\U_AC|DATA[4]~34_combout\ & 
-- (!\U_AC|U_ALU|Add0~23\)) # (!\U_AC|DATA[4]~34_combout\ & ((\U_AC|U_ALU|Add0~23\) # (GND)))))
-- \U_AC|U_ALU|Add0~30\ = CARRY((\U_AC|U_ALU|Add0~28_combout\ & (!\U_AC|DATA[4]~34_combout\ & !\U_AC|U_ALU|Add0~23\)) # (!\U_AC|U_ALU|Add0~28_combout\ & ((!\U_AC|U_ALU|Add0~23\) # (!\U_AC|DATA[4]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~28_combout\,
	datab => \U_AC|DATA[4]~34_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~23\,
	combout => \U_AC|U_ALU|Add0~29_combout\,
	cout => \U_AC|U_ALU|Add0~30\);

-- Location: LCCOMB_X32_Y36_N16
\U_AC|U_ALU|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~31_combout\ = (!\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_DFFALU1|internal_Q\(2) & (\U_AC|U_ALU|Add0~29_combout\)) # (!\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_DFF5|internal_Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~29_combout\,
	datab => \U_AC|U_DFF5|internal_Q\(4),
	datac => \U_AC|U_DFFALU1|internal_Q\(2),
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~31_combout\);

-- Location: LCCOMB_X32_Y36_N2
\U_AC|U_ALU|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~32_combout\ = (\U_AC|U_ALU|Add0~31_combout\) # ((\U_AC|U_DFFALU1|internal_Q\(1) & \U_AC|U_ALU|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_ALU|Mux3~1_combout\,
	datad => \U_AC|U_ALU|Add0~31_combout\,
	combout => \U_AC|U_ALU|Add0~32_combout\);

-- Location: FF_X30_Y35_N11
\U_AC|U_DFF5|internal_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[5]~41_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(5));

-- Location: FF_X34_Y36_N13
\U_REG|P7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[6]~48_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(6));

-- Location: FF_X34_Y36_N23
\U_REG|P6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(6));

-- Location: LCCOMB_X34_Y36_N22
\U_AC|DATA[6]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~47_combout\ = (\U_REG|P7|Q\(6) & (((\U_REG|P6|Q\(6))) # (!\U_REG|P6|data~0_combout\))) # (!\U_REG|P7|Q\(6) & (!\U_REG|P7|data~0_combout\ & ((\U_REG|P6|Q\(6)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|Q\(6),
	datab => \U_REG|P6|data~0_combout\,
	datac => \U_REG|P6|Q\(6),
	datad => \U_REG|P7|data~0_combout\,
	combout => \U_AC|DATA[6]~47_combout\);

-- Location: FF_X30_Y36_N31
\U_REG|P3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(6));

-- Location: FF_X30_Y36_N9
\U_REG|P2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(6));

-- Location: LCCOMB_X30_Y36_N8
\U_AC|DATA[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~45_combout\ = (\U_REG|P3|Q\(6) & (((\U_REG|P2|Q\(6)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(6) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(6)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(6),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(6),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[6]~45_combout\);

-- Location: FF_X31_Y36_N27
\U_REG|P1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(6));

-- Location: IOIBUF_X29_Y39_N8
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

-- Location: FF_X36_Y36_N19
\U_AC|U_DFF2|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[6]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(6));

-- Location: LCCOMB_X36_Y36_N18
\U_AC|DATA[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~42_combout\ = (\U_AC|U_DFF1|internal_Q\(2)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF2|internal_Q\(6)) # (\U_AC|U_DFF1|internal_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(2),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(6),
	datad => \U_AC|U_DFF1|internal_Q\(0),
	combout => \U_AC|DATA[6]~42_combout\);

-- Location: FF_X31_Y36_N25
\U_REG|P0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(6));

-- Location: LCCOMB_X31_Y36_N24
\U_AC|DATA[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~43_combout\ = (\U_AC|DATA[6]~42_combout\ & (((\U_REG|P0|Q\(6)) # (!\U_REG|P0|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_AC|DATA[6]~42_combout\,
	datac => \U_REG|P0|Q\(6),
	datad => \U_REG|P0|process_0~0_combout\,
	combout => \U_AC|DATA[6]~43_combout\);

-- Location: LCCOMB_X31_Y36_N26
\U_AC|DATA[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~44_combout\ = (\U_AC|DATA[6]~43_combout\ & (((\U_REG|P1|Q\(6)) # (!\U_REG|P1|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_REG|P1|process_0~0_combout\,
	datac => \U_REG|P1|Q\(6),
	datad => \U_AC|DATA[6]~43_combout\,
	combout => \U_AC|DATA[6]~44_combout\);

-- Location: LCCOMB_X35_Y35_N12
\U_REG|P5|Q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|Q[6]~feeder_combout\ = \U_AC|DATA[6]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[6]~48_combout\,
	combout => \U_REG|P5|Q[6]~feeder_combout\);

-- Location: FF_X35_Y35_N13
\U_REG|P5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P5|Q[6]~feeder_combout\,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(6));

-- Location: FF_X35_Y35_N3
\U_REG|P4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	sload => VCC,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(6));

-- Location: LCCOMB_X35_Y35_N2
\U_AC|DATA[6]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~46_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(6) & ((\U_REG|P4|Q\(6)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & (((\U_REG|P4|Q\(6)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|Q\(6),
	datac => \U_REG|P4|Q\(6),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[6]~46_combout\);

-- Location: LCCOMB_X34_Y36_N12
\U_AC|DATA[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[6]~48_combout\ = (\U_AC|DATA[6]~47_combout\ & (\U_AC|DATA[6]~45_combout\ & (\U_AC|DATA[6]~44_combout\ & \U_AC|DATA[6]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[6]~47_combout\,
	datab => \U_AC|DATA[6]~45_combout\,
	datac => \U_AC|DATA[6]~44_combout\,
	datad => \U_AC|DATA[6]~46_combout\,
	combout => \U_AC|DATA[6]~48_combout\);

-- Location: LCCOMB_X30_Y35_N12
\U_AC|U_ALU|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~36_combout\ = (\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|DATA[6]~48_combout\) # ((!\U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|U_DFFALU1|internal_Q\(0) & (((\U_AC|DATA[4]~34_combout\ & \U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[6]~48_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(0),
	datac => \U_AC|DATA[4]~34_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~36_combout\);

-- Location: LCCOMB_X30_Y35_N28
\U_AC|U_ALU|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~38_combout\ = (\U_AC|U_DFFALU1|internal_Q\(1) & (\U_AC|U_ALU|Add0~36_combout\ $ (((\U_AC|DATA[5]~41_combout\) # (\U_AC|U_DFFALU1|internal_Q\(2)))))) # (!\U_AC|U_DFFALU1|internal_Q\(1) & (((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~41_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_ALU|Add0~36_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~38_combout\);

-- Location: LCCOMB_X30_Y35_N26
\U_AC|U_ALU|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~37_combout\ = (\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_ALU|Add0~36_combout\ & ((\U_AC|U_DFFALU1|internal_Q\(2)))) # (!\U_AC|U_ALU|Add0~36_combout\ & (!\U_AC|DATA[5]~41_combout\ & !\U_AC|U_DFFALU1|internal_Q\(2))))) # 
-- (!\U_AC|U_DFFALU1|internal_Q\(1) & (((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~41_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_ALU|Add0~36_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~37_combout\);

-- Location: LCCOMB_X31_Y35_N28
\U_AC|U_ALU|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~33_combout\ = \U_AC|U_DFF5|internal_Q\(5) $ (\U_AC|U_DFFALU1|internal_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_AC|U_DFF5|internal_Q\(5),
	datad => \U_AC|U_DFFALU1|internal_Q\(0),
	combout => \U_AC|U_ALU|Add0~33_combout\);

-- Location: LCCOMB_X31_Y35_N18
\U_AC|U_ALU|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~34_combout\ = ((\U_AC|DATA[5]~41_combout\ $ (\U_AC|U_ALU|Add0~33_combout\ $ (!\U_AC|U_ALU|Add0~30\)))) # (GND)
-- \U_AC|U_ALU|Add0~35\ = CARRY((\U_AC|DATA[5]~41_combout\ & ((\U_AC|U_ALU|Add0~33_combout\) # (!\U_AC|U_ALU|Add0~30\))) # (!\U_AC|DATA[5]~41_combout\ & (\U_AC|U_ALU|Add0~33_combout\ & !\U_AC|U_ALU|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[5]~41_combout\,
	datab => \U_AC|U_ALU|Add0~33_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~30\,
	combout => \U_AC|U_ALU|Add0~34_combout\,
	cout => \U_AC|U_ALU|Add0~35\);

-- Location: LCCOMB_X30_Y35_N14
\U_AC|U_ALU|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~39_combout\ = (\U_AC|U_ALU|Add0~38_combout\ & (((\U_AC|U_ALU|Add0~37_combout\ & \U_AC|U_ALU|Add0~34_combout\)))) # (!\U_AC|U_ALU|Add0~38_combout\ & ((\U_AC|U_DFF5|internal_Q\(5)) # ((\U_AC|U_ALU|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF5|internal_Q\(5),
	datab => \U_AC|U_ALU|Add0~38_combout\,
	datac => \U_AC|U_ALU|Add0~37_combout\,
	datad => \U_AC|U_ALU|Add0~34_combout\,
	combout => \U_AC|U_ALU|Add0~39_combout\);

-- Location: FF_X35_Y36_N21
\U_AC|U_DFF5|internal_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[6]~48_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(6));

-- Location: LCCOMB_X30_Y35_N16
\U_AC|U_ALU|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~40_combout\ = \U_AC|U_DFFALU1|internal_Q\(0) $ (\U_AC|U_DFF5|internal_Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|U_DFFALU1|internal_Q\(0),
	datad => \U_AC|U_DFF5|internal_Q\(6),
	combout => \U_AC|U_ALU|Add0~40_combout\);

-- Location: LCCOMB_X31_Y35_N20
\U_AC|U_ALU|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~41_combout\ = (\U_AC|U_ALU|Add0~40_combout\ & ((\U_AC|DATA[6]~48_combout\ & (\U_AC|U_ALU|Add0~35\ & VCC)) # (!\U_AC|DATA[6]~48_combout\ & (!\U_AC|U_ALU|Add0~35\)))) # (!\U_AC|U_ALU|Add0~40_combout\ & ((\U_AC|DATA[6]~48_combout\ & 
-- (!\U_AC|U_ALU|Add0~35\)) # (!\U_AC|DATA[6]~48_combout\ & ((\U_AC|U_ALU|Add0~35\) # (GND)))))
-- \U_AC|U_ALU|Add0~42\ = CARRY((\U_AC|U_ALU|Add0~40_combout\ & (!\U_AC|DATA[6]~48_combout\ & !\U_AC|U_ALU|Add0~35\)) # (!\U_AC|U_ALU|Add0~40_combout\ & ((!\U_AC|U_ALU|Add0~35\) # (!\U_AC|DATA[6]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~40_combout\,
	datab => \U_AC|DATA[6]~48_combout\,
	datad => VCC,
	cin => \U_AC|U_ALU|Add0~35\,
	combout => \U_AC|U_ALU|Add0~41_combout\,
	cout => \U_AC|U_ALU|Add0~42\);

-- Location: LCCOMB_X30_Y35_N6
\U_AC|U_ALU|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~43_combout\ = (!\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_DFFALU1|internal_Q\(2) & (\U_AC|U_ALU|Add0~41_combout\)) # (!\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_DFF5|internal_Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datac => \U_AC|U_ALU|Add0~41_combout\,
	datad => \U_AC|U_DFF5|internal_Q\(6),
	combout => \U_AC|U_ALU|Add0~43_combout\);

-- Location: LCCOMB_X30_Y35_N0
\U_AC|U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~0_combout\ = (\U_AC|U_DFFALU1|internal_Q\(2) & (\U_AC|U_DFFALU1|internal_Q\(0))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_DFFALU1|internal_Q\(0) & (\U_AC|DATA[6]~48_combout\ & \U_AC|U_DFF5|internal_Q\(6))) # 
-- (!\U_AC|U_DFFALU1|internal_Q\(0) & (!\U_AC|DATA[6]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_DFFALU1|internal_Q\(0),
	datac => \U_AC|DATA[6]~48_combout\,
	datad => \U_AC|U_DFF5|internal_Q\(6),
	combout => \U_AC|U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y36_N0
\U_REG|P7|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P7|Q[7]~feeder_combout\ = \U_AC|DATA[7]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~55_combout\,
	combout => \U_REG|P7|Q[7]~feeder_combout\);

-- Location: FF_X34_Y36_N1
\U_REG|P7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P7|Q[7]~feeder_combout\,
	ena => \U_REG|P7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P7|Q\(7));

-- Location: FF_X34_Y36_N19
\U_REG|P6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[7]~55_combout\,
	sload => VCC,
	ena => \U_REG|P6|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P6|Q\(7));

-- Location: LCCOMB_X34_Y36_N18
\U_AC|DATA[7]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~54_combout\ = (\U_REG|P7|data~0_combout\ & (\U_REG|P7|Q\(7) & ((\U_REG|P6|Q\(7)) # (!\U_REG|P6|data~0_combout\)))) # (!\U_REG|P7|data~0_combout\ & (((\U_REG|P6|Q\(7)) # (!\U_REG|P6|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P7|data~0_combout\,
	datab => \U_REG|P7|Q\(7),
	datac => \U_REG|P6|Q\(7),
	datad => \U_REG|P6|data~0_combout\,
	combout => \U_AC|DATA[7]~54_combout\);

-- Location: FF_X36_Y36_N15
\U_REG|P1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[7]~55_combout\,
	sload => VCC,
	ena => \U_REG|P1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P1|Q\(7));

-- Location: FF_X37_Y36_N25
\U_REG|P0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[7]~55_combout\,
	sload => VCC,
	ena => \U_REG|P0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P0|Q\(7));

-- Location: IOIBUF_X36_Y39_N29
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

-- Location: FF_X36_Y36_N13
\U_AC|U_DFF2|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \OPERAND1[7]~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF2|internal_Q\(7));

-- Location: LCCOMB_X36_Y36_N12
\U_AC|DATA[7]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~49_combout\ = (\U_AC|U_DFF1|internal_Q\(0)) # ((\U_AC|U_DFF1|internal_Q\(1)) # ((\U_AC|U_DFF2|internal_Q\(7)) # (\U_AC|U_DFF1|internal_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFF1|internal_Q\(0),
	datab => \U_AC|U_DFF1|internal_Q\(1),
	datac => \U_AC|U_DFF2|internal_Q\(7),
	datad => \U_AC|U_DFF1|internal_Q\(2),
	combout => \U_AC|DATA[7]~49_combout\);

-- Location: LCCOMB_X37_Y36_N24
\U_AC|DATA[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~50_combout\ = (\U_AC|DATA[7]~49_combout\ & (((\U_REG|P0|Q\(7)) # (!\U_REG|P0|data~2_combout\)) # (!\U_REG|P0|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|process_0~0_combout\,
	datab => \U_REG|P0|data~2_combout\,
	datac => \U_REG|P0|Q\(7),
	datad => \U_AC|DATA[7]~49_combout\,
	combout => \U_AC|DATA[7]~50_combout\);

-- Location: LCCOMB_X36_Y36_N14
\U_AC|DATA[7]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~51_combout\ = (\U_AC|DATA[7]~50_combout\ & (((\U_REG|P1|Q\(7)) # (!\U_REG|P1|process_0~0_combout\)) # (!\U_REG|P0|data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P0|data~2_combout\,
	datab => \U_REG|P1|process_0~0_combout\,
	datac => \U_REG|P1|Q\(7),
	datad => \U_AC|DATA[7]~50_combout\,
	combout => \U_AC|DATA[7]~51_combout\);

-- Location: LCCOMB_X35_Y35_N16
\U_REG|P5|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P5|Q[7]~feeder_combout\ = \U_AC|DATA[7]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_AC|DATA[7]~55_combout\,
	combout => \U_REG|P5|Q[7]~feeder_combout\);

-- Location: FF_X35_Y35_N17
\U_REG|P5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P5|Q[7]~feeder_combout\,
	ena => \U_REG|P5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P5|Q\(7));

-- Location: FF_X35_Y35_N23
\U_REG|P4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[7]~55_combout\,
	sload => VCC,
	ena => \U_REG|P4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P4|Q\(7));

-- Location: LCCOMB_X35_Y35_N22
\U_AC|DATA[7]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~53_combout\ = (\U_REG|P5|data~0_combout\ & (\U_REG|P5|Q\(7) & ((\U_REG|P4|Q\(7)) # (!\U_REG|P4|data~0_combout\)))) # (!\U_REG|P5|data~0_combout\ & (((\U_REG|P4|Q\(7)) # (!\U_REG|P4|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P5|data~0_combout\,
	datab => \U_REG|P5|Q\(7),
	datac => \U_REG|P4|Q\(7),
	datad => \U_REG|P4|data~0_combout\,
	combout => \U_AC|DATA[7]~53_combout\);

-- Location: LCCOMB_X30_Y36_N26
\U_REG|P3|Q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_REG|P3|Q[7]~feeder_combout\ = \U_AC|DATA[7]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_AC|DATA[7]~55_combout\,
	combout => \U_REG|P3|Q[7]~feeder_combout\);

-- Location: FF_X30_Y36_N27
\U_REG|P3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_REG|P3|Q[7]~feeder_combout\,
	ena => \U_REG|P3|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P3|Q\(7));

-- Location: FF_X30_Y36_N17
\U_REG|P2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_AC|DATA[7]~55_combout\,
	sload => VCC,
	ena => \U_REG|P2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG|P2|Q\(7));

-- Location: LCCOMB_X30_Y36_N16
\U_AC|DATA[7]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~52_combout\ = (\U_REG|P3|Q\(7) & (((\U_REG|P2|Q\(7)) # (!\U_REG|P2|data~0_combout\)))) # (!\U_REG|P3|Q\(7) & (!\U_REG|P3|data~0_combout\ & ((\U_REG|P2|Q\(7)) # (!\U_REG|P2|data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG|P3|Q\(7),
	datab => \U_REG|P3|data~0_combout\,
	datac => \U_REG|P2|Q\(7),
	datad => \U_REG|P2|data~0_combout\,
	combout => \U_AC|DATA[7]~52_combout\);

-- Location: LCCOMB_X36_Y36_N20
\U_AC|DATA[7]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|DATA[7]~55_combout\ = (\U_AC|DATA[7]~54_combout\ & (\U_AC|DATA[7]~51_combout\ & (\U_AC|DATA[7]~53_combout\ & \U_AC|DATA[7]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[7]~54_combout\,
	datab => \U_AC|DATA[7]~51_combout\,
	datac => \U_AC|DATA[7]~53_combout\,
	datad => \U_AC|DATA[7]~52_combout\,
	combout => \U_AC|DATA[7]~55_combout\);

-- Location: LCCOMB_X30_Y35_N18
\U_AC|U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Mux1~1_combout\ = (\U_AC|U_ALU|Mux1~0_combout\ & (((\U_AC|DATA[7]~55_combout\) # (!\U_AC|U_DFFALU1|internal_Q\(2))))) # (!\U_AC|U_ALU|Mux1~0_combout\ & (\U_AC|DATA[5]~41_combout\ & ((\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Mux1~0_combout\,
	datab => \U_AC|DATA[5]~41_combout\,
	datac => \U_AC|DATA[7]~55_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y35_N8
\U_AC|U_ALU|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~44_combout\ = (\U_AC|U_ALU|Add0~43_combout\) # ((\U_AC|U_DFFALU1|internal_Q\(1) & \U_AC|U_ALU|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~43_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(1),
	datad => \U_AC|U_ALU|Mux1~1_combout\,
	combout => \U_AC|U_ALU|Add0~44_combout\);

-- Location: LCCOMB_X30_Y35_N20
\U_AC|U_ALU|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~49_combout\ = (!\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|DATA[6]~48_combout\))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & (!\U_AC|DATA[7]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[7]~55_combout\,
	datab => \U_AC|U_DFFALU1|internal_Q\(0),
	datac => \U_AC|DATA[6]~48_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~49_combout\);

-- Location: FF_X36_Y36_N21
\U_AC|U_DFF5|internal_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_AC|DATA[7]~55_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_AC|U_DFF5|internal_Q\(7));

-- Location: LCCOMB_X30_Y35_N30
\U_AC|U_ALU|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~50_combout\ = (\U_AC|DATA[7]~55_combout\ & (\U_AC|U_DFFALU1|internal_Q\(0) & ((\U_AC|U_DFF5|internal_Q\(7)) # (\U_AC|U_DFFALU1|internal_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|DATA[7]~55_combout\,
	datab => \U_AC|U_DFF5|internal_Q\(7),
	datac => \U_AC|U_DFFALU1|internal_Q\(0),
	datad => \U_AC|U_DFFALU1|internal_Q\(2),
	combout => \U_AC|U_ALU|Add0~50_combout\);

-- Location: LCCOMB_X31_Y35_N30
\U_AC|U_ALU|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~45_combout\ = \U_AC|U_DFFALU1|internal_Q\(0) $ (\U_AC|U_DFF5|internal_Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(0),
	datad => \U_AC|U_DFF5|internal_Q\(7),
	combout => \U_AC|U_ALU|Add0~45_combout\);

-- Location: LCCOMB_X31_Y35_N22
\U_AC|U_ALU|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~46_combout\ = \U_AC|U_ALU|Add0~45_combout\ $ (\U_AC|U_ALU|Add0~42\ $ (!\U_AC|DATA[7]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~45_combout\,
	datad => \U_AC|DATA[7]~55_combout\,
	cin => \U_AC|U_ALU|Add0~42\,
	combout => \U_AC|U_ALU|Add0~46_combout\);

-- Location: LCCOMB_X30_Y35_N22
\U_AC|U_ALU|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~48_combout\ = (!\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_DFFALU1|internal_Q\(2) & ((\U_AC|U_ALU|Add0~46_combout\))) # (!\U_AC|U_DFFALU1|internal_Q\(2) & (\U_AC|U_DFF5|internal_Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_DFFALU1|internal_Q\(2),
	datab => \U_AC|U_DFF5|internal_Q\(7),
	datac => \U_AC|U_DFFALU1|internal_Q\(1),
	datad => \U_AC|U_ALU|Add0~46_combout\,
	combout => \U_AC|U_ALU|Add0~48_combout\);

-- Location: LCCOMB_X30_Y35_N24
\U_AC|U_ALU|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_AC|U_ALU|Add0~51_combout\ = (\U_AC|U_ALU|Add0~48_combout\) # ((\U_AC|U_DFFALU1|internal_Q\(1) & ((\U_AC|U_ALU|Add0~49_combout\) # (\U_AC|U_ALU|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_AC|U_ALU|Add0~49_combout\,
	datab => \U_AC|U_ALU|Add0~50_combout\,
	datac => \U_AC|U_ALU|Add0~48_combout\,
	datad => \U_AC|U_DFFALU1|internal_Q\(1),
	combout => \U_AC|U_ALU|Add0~51_combout\);

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



-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/18/2023 13:29:37"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	CYY IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	q_a : IN std_logic_vector(7 DOWNTO 0);
	q_b : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	set : IN std_logic;
	a : BUFFER std_logic_vector(7 DOWNTO 0);
	b : BUFFER std_logic_vector(7 DOWNTO 0);
	cop : BUFFER std_logic;
	sno : BUFFER std_logic;
	rr : BUFFER std_logic_vector(15 DOWNTO 0);
	priznak : BUFFER std_logic_vector(1 DOWNTO 0);
	sko : BUFFER std_logic;
	RA : BUFFER std_logic_vector(7 DOWNTO 0);
	CK : BUFFER std_logic_vector(7 DOWNTO 0);
	RK : BUFFER std_logic_vector(7 DOWNTO 0);
	s_out : OUT STD.STANDARD.integer range 0 TO 5;
	data_in_OP : BUFFER std_logic_vector(7 DOWNTO 0);
	address_OP : BUFFER std_logic_vector(7 DOWNTO 0);
	wr_en_OP : BUFFER std_logic;
	data_out_OP : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CYY;

-- Design Ports Information
-- a[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[9]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rr[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sko	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[5]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[7]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[5]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RK[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in_OP[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[5]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_OP[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en_OP	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[1]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_OP[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CYY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_q_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cop : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_rr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_priznak : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sko : std_logic;
SIGNAL ww_RA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CK : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RK : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_in_OP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address_OP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wr_en_OP : std_logic;
SIGNAL ww_data_out_OP : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.s3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \incr_RA~combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \state.s6~feeder_combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \state.s0~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \state.s1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Comp_AY|Selector1~1_combout\ : std_logic;
SIGNAL \Comp_AY|Selector5~0_combout\ : std_logic;
SIGNAL \Comp_AY|state.s0~q\ : std_logic;
SIGNAL \Comp_AY|Selector1~2_combout\ : std_logic;
SIGNAL \Comp_AY|state.s1~q\ : std_logic;
SIGNAL \Comp_AY|state.s2~q\ : std_logic;
SIGNAL \Comp_AY|i[2]~0_combout\ : std_logic;
SIGNAL \state.s3~clkctrl_outclk\ : std_logic;
SIGNAL \Comp_AY|i[1]~1_combout\ : std_logic;
SIGNAL \Comp_AY|i[0]~2_combout\ : std_logic;
SIGNAL \Comp_AY|sko~0_combout\ : std_logic;
SIGNAL \wr_en_OP~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\ : std_logic;
SIGNAL \q_b[0]~input_o\ : std_logic;
SIGNAL \Comp_AY|RB~1_combout\ : std_logic;
SIGNAL \Comp_AY|q[0]~0_combout\ : std_logic;
SIGNAL \q_b[6]~input_o\ : std_logic;
SIGNAL \q_b[2]~input_o\ : std_logic;
SIGNAL \q_b[1]~input_o\ : std_logic;
SIGNAL \Comp_AY|RB~6_combout\ : std_logic;
SIGNAL \Comp_AY|RB~5_combout\ : std_logic;
SIGNAL \q_b[3]~input_o\ : std_logic;
SIGNAL \Comp_AY|RB~4_combout\ : std_logic;
SIGNAL \q_b[4]~input_o\ : std_logic;
SIGNAL \Comp_AY|RB~3_combout\ : std_logic;
SIGNAL \q_b[5]~input_o\ : std_logic;
SIGNAL \Comp_AY|RB~2_combout\ : std_logic;
SIGNAL \Comp_AY|RB~0_combout\ : std_logic;
SIGNAL \Comp_AY|Selector1~0_combout\ : std_logic;
SIGNAL \q_b[7]~input_o\ : std_logic;
SIGNAL \Comp_AY|Mux15~0_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~0_combout\ : std_logic;
SIGNAL \CK[0]~7_combout\ : std_logic;
SIGNAL \CK[0]~reg0_q\ : std_logic;
SIGNAL \RA[0]~8_combout\ : std_logic;
SIGNAL \q_a[0]~input_o\ : std_logic;
SIGNAL \IA[0]~0_combout\ : std_logic;
SIGNAL \RA[4]~10_combout\ : std_logic;
SIGNAL \RA[0]~reg0_q\ : std_logic;
SIGNAL \incr_CK~0_combout\ : std_logic;
SIGNAL \address_OP~16_combout\ : std_logic;
SIGNAL \address_OP~24_combout\ : std_logic;
SIGNAL \CK[1]~8_combout\ : std_logic;
SIGNAL \CK[1]~reg0_q\ : std_logic;
SIGNAL \RA[0]~9\ : std_logic;
SIGNAL \RA[1]~11_combout\ : std_logic;
SIGNAL \RA[1]~12\ : std_logic;
SIGNAL \RA[2]~13_combout\ : std_logic;
SIGNAL \q_a[2]~input_o\ : std_logic;
SIGNAL \CK[1]~9\ : std_logic;
SIGNAL \CK[2]~10_combout\ : std_logic;
SIGNAL \CK[2]~reg0_q\ : std_logic;
SIGNAL \CK[2]~11\ : std_logic;
SIGNAL \CK[3]~12_combout\ : std_logic;
SIGNAL \CK[3]~reg0_q\ : std_logic;
SIGNAL \q_a[3]~input_o\ : std_logic;
SIGNAL \CK[3]~13\ : std_logic;
SIGNAL \CK[4]~14_combout\ : std_logic;
SIGNAL \CK[4]~reg0_q\ : std_logic;
SIGNAL \RA[2]~14\ : std_logic;
SIGNAL \RA[3]~15_combout\ : std_logic;
SIGNAL \RA[3]~reg0_q\ : std_logic;
SIGNAL \RA[3]~16\ : std_logic;
SIGNAL \RA[4]~17_combout\ : std_logic;
SIGNAL \CK[4]~15\ : std_logic;
SIGNAL \CK[5]~16_combout\ : std_logic;
SIGNAL \CK[5]~reg0_q\ : std_logic;
SIGNAL \RA[4]~18\ : std_logic;
SIGNAL \RA[5]~19_combout\ : std_logic;
SIGNAL \q_a[5]~input_o\ : std_logic;
SIGNAL \CK[5]~17\ : std_logic;
SIGNAL \CK[6]~18_combout\ : std_logic;
SIGNAL \CK[6]~reg0_q\ : std_logic;
SIGNAL \RA[5]~20\ : std_logic;
SIGNAL \RA[6]~21_combout\ : std_logic;
SIGNAL \CK[6]~19\ : std_logic;
SIGNAL \CK[7]~20_combout\ : std_logic;
SIGNAL \CK[7]~reg0_q\ : std_logic;
SIGNAL \RA[6]~22\ : std_logic;
SIGNAL \RA[7]~23_combout\ : std_logic;
SIGNAL \q_a[7]~input_o\ : std_logic;
SIGNAL \q_a[6]~input_o\ : std_logic;
SIGNAL \q_a[4]~input_o\ : std_logic;
SIGNAL \q_a[1]~input_o\ : std_logic;
SIGNAL \IA[0]~1\ : std_logic;
SIGNAL \IA[1]~3\ : std_logic;
SIGNAL \IA[2]~5\ : std_logic;
SIGNAL \IA[3]~7\ : std_logic;
SIGNAL \IA[4]~9\ : std_logic;
SIGNAL \IA[5]~11\ : std_logic;
SIGNAL \IA[6]~13\ : std_logic;
SIGNAL \IA[7]~14_combout\ : std_logic;
SIGNAL \RA[7]~reg0_q\ : std_logic;
SIGNAL \address_OP~23_combout\ : std_logic;
SIGNAL \address_OP~31_combout\ : std_logic;
SIGNAL \Comp_AY|q[9]~7_combout\ : std_logic;
SIGNAL \Comp_AY|Mux9~0_combout\ : std_logic;
SIGNAL \Comp_AY|Mux10~0_combout\ : std_logic;
SIGNAL \Comp_AY|Mux11~0_combout\ : std_logic;
SIGNAL \Comp_AY|Mux12~0_combout\ : std_logic;
SIGNAL \Comp_AY|Mux13~0_combout\ : std_logic;
SIGNAL \Comp_AY|Mux14~0_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~1\ : std_logic;
SIGNAL \Comp_AY|Add1~2_combout\ : std_logic;
SIGNAL \Comp_AY|rr[0]~17\ : std_logic;
SIGNAL \Comp_AY|rr[1]~18_combout\ : std_logic;
SIGNAL \Comp_AY|q[1]~15_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~3\ : std_logic;
SIGNAL \Comp_AY|Add1~4_combout\ : std_logic;
SIGNAL \Comp_AY|rr[1]~19\ : std_logic;
SIGNAL \Comp_AY|rr[2]~20_combout\ : std_logic;
SIGNAL \Comp_AY|q[2]~14_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~5\ : std_logic;
SIGNAL \Comp_AY|Add1~6_combout\ : std_logic;
SIGNAL \Comp_AY|rr[2]~21\ : std_logic;
SIGNAL \Comp_AY|rr[3]~22_combout\ : std_logic;
SIGNAL \Comp_AY|q[3]~13_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~7\ : std_logic;
SIGNAL \Comp_AY|Add1~8_combout\ : std_logic;
SIGNAL \Comp_AY|rr[3]~23\ : std_logic;
SIGNAL \Comp_AY|rr[4]~24_combout\ : std_logic;
SIGNAL \Comp_AY|q[4]~12_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~9\ : std_logic;
SIGNAL \Comp_AY|Add1~10_combout\ : std_logic;
SIGNAL \Comp_AY|rr[4]~25\ : std_logic;
SIGNAL \Comp_AY|rr[5]~26_combout\ : std_logic;
SIGNAL \Comp_AY|q[5]~11_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~11\ : std_logic;
SIGNAL \Comp_AY|Add1~12_combout\ : std_logic;
SIGNAL \Comp_AY|rr[5]~27\ : std_logic;
SIGNAL \Comp_AY|rr[6]~28_combout\ : std_logic;
SIGNAL \Comp_AY|q[6]~10_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~13\ : std_logic;
SIGNAL \Comp_AY|Add1~14_combout\ : std_logic;
SIGNAL \Comp_AY|rr[6]~29\ : std_logic;
SIGNAL \Comp_AY|rr[7]~30_combout\ : std_logic;
SIGNAL \Comp_AY|q[7]~9_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~15\ : std_logic;
SIGNAL \Comp_AY|Add1~16_combout\ : std_logic;
SIGNAL \Comp_AY|rr[7]~31\ : std_logic;
SIGNAL \Comp_AY|rr[8]~32_combout\ : std_logic;
SIGNAL \Comp_AY|q[8]~8_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~17\ : std_logic;
SIGNAL \Comp_AY|Add1~18_combout\ : std_logic;
SIGNAL \Comp_AY|rr[8]~33\ : std_logic;
SIGNAL \Comp_AY|rr[9]~34_combout\ : std_logic;
SIGNAL \data_in_OP~1_combout\ : std_logic;
SIGNAL \Comp_AY|q[10]~6_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~19\ : std_logic;
SIGNAL \Comp_AY|Add1~20_combout\ : std_logic;
SIGNAL \Comp_AY|rr[9]~35\ : std_logic;
SIGNAL \Comp_AY|rr[10]~36_combout\ : std_logic;
SIGNAL \data_in_OP~2_combout\ : std_logic;
SIGNAL \Comp_AY|q[11]~5_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~21\ : std_logic;
SIGNAL \Comp_AY|Add1~22_combout\ : std_logic;
SIGNAL \Comp_AY|rr[10]~37\ : std_logic;
SIGNAL \Comp_AY|rr[11]~38_combout\ : std_logic;
SIGNAL \data_in_OP~3_combout\ : std_logic;
SIGNAL \Comp_AY|q[12]~4_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~23\ : std_logic;
SIGNAL \Comp_AY|Add1~24_combout\ : std_logic;
SIGNAL \Comp_AY|rr[11]~39\ : std_logic;
SIGNAL \Comp_AY|rr[12]~40_combout\ : std_logic;
SIGNAL \data_in_OP~4_combout\ : std_logic;
SIGNAL \Comp_AY|q[13]~3_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~25\ : std_logic;
SIGNAL \Comp_AY|Add1~26_combout\ : std_logic;
SIGNAL \Comp_AY|rr[12]~41\ : std_logic;
SIGNAL \Comp_AY|rr[13]~42_combout\ : std_logic;
SIGNAL \data_in_OP~5_combout\ : std_logic;
SIGNAL \Comp_AY|q[14]~2_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~27\ : std_logic;
SIGNAL \Comp_AY|Add1~28_combout\ : std_logic;
SIGNAL \Comp_AY|rr[13]~43\ : std_logic;
SIGNAL \Comp_AY|rr[14]~44_combout\ : std_logic;
SIGNAL \data_in_OP~6_combout\ : std_logic;
SIGNAL \data_in_OP~7_combout\ : std_logic;
SIGNAL \IA[6]~12_combout\ : std_logic;
SIGNAL \RA[6]~reg0_q\ : std_logic;
SIGNAL \address_OP~22_combout\ : std_logic;
SIGNAL \address_OP~30_combout\ : std_logic;
SIGNAL \IA[5]~10_combout\ : std_logic;
SIGNAL \RA[5]~reg0_q\ : std_logic;
SIGNAL \address_OP~21_combout\ : std_logic;
SIGNAL \address_OP~29_combout\ : std_logic;
SIGNAL \IA[4]~8_combout\ : std_logic;
SIGNAL \RA[4]~reg0_q\ : std_logic;
SIGNAL \address_OP~20_combout\ : std_logic;
SIGNAL \address_OP~28_combout\ : std_logic;
SIGNAL \IA[3]~6_combout\ : std_logic;
SIGNAL \address_OP~19_combout\ : std_logic;
SIGNAL \address_OP~27_combout\ : std_logic;
SIGNAL \IA[2]~4_combout\ : std_logic;
SIGNAL \RA[2]~reg0_q\ : std_logic;
SIGNAL \address_OP~18_combout\ : std_logic;
SIGNAL \address_OP~26_combout\ : std_logic;
SIGNAL \IA[1]~2_combout\ : std_logic;
SIGNAL \RA[1]~reg0_q\ : std_logic;
SIGNAL \address_OP~17_combout\ : std_logic;
SIGNAL \address_OP~25_combout\ : std_logic;
SIGNAL \Comp_AY|Mux0~0_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~29\ : std_logic;
SIGNAL \Comp_AY|Add1~30_combout\ : std_logic;
SIGNAL \Comp_AY|rr[14]~45\ : std_logic;
SIGNAL \Comp_AY|rr[15]~46_combout\ : std_logic;
SIGNAL \Comp_AY|q[15]~1_combout\ : std_logic;
SIGNAL \Comp_AY|Add1~31\ : std_logic;
SIGNAL \Comp_AY|Add1~32_combout\ : std_logic;
SIGNAL \Comp_AY|rr[0]~16_combout\ : std_logic;
SIGNAL \data_in_OP~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~13_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \RK[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RK[0]~reg0_q\ : std_logic;
SIGNAL \RK[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RK[1]~reg0_q\ : std_logic;
SIGNAL \RK[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RK[2]~reg0_q\ : std_logic;
SIGNAL \RK[3]~reg0_q\ : std_logic;
SIGNAL \RK[4]~reg0_q\ : std_logic;
SIGNAL \RK[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RK[5]~reg0_q\ : std_logic;
SIGNAL \RK[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RK[6]~reg0_q\ : std_logic;
SIGNAL \RK[7]~reg0_q\ : std_logic;
SIGNAL \s_out~0_combout\ : std_logic;
SIGNAL \s_out~1_combout\ : std_logic;
SIGNAL \s_out~2_combout\ : std_logic;
SIGNAL \s_out~3_combout\ : std_logic;
SIGNAL \s_out~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Comp_AY|RB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Comp_AY|rr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Comp_AY|RA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Comp_AY|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.s3~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 3);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Comp_AY|ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_incr_CK~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_out~4_combout\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_q_a <= q_a;
ww_q_b <= q_b;
ww_clk <= clk;
ww_set <= set;
a <= ww_a;
b <= ww_b;
cop <= ww_cop;
sno <= ww_sno;
rr <= ww_rr;
priznak <= ww_priznak;
sko <= ww_sko;
RA <= ww_RA;
CK <= ww_CK;
RK <= ww_RK;
s_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_s_out));
data_in_OP <= ww_data_in_OP;
address_OP <= ww_address_OP;
wr_en_OP <= ww_wr_en_OP;
data_out_OP <= ww_data_out_OP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_in_OP~7_combout\ & \data_in_OP~6_combout\ & \data_in_OP~5_combout\ & \data_in_OP~4_combout\ & 
\data_in_OP~3_combout\ & \data_in_OP~2_combout\ & \data_in_OP~1_combout\ & \data_in_OP~0_combout\);

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & 
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & 
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & 
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\address_OP~31_combout\ & \address_OP~30_combout\ & \address_OP~29_combout\ & \address_OP~28_combout\ & \address_OP~27_combout\ & \address_OP~26_combout\ & 
\address_OP~25_combout\ & \address_OP~24_combout\);

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(1);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(2);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(3);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(4);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(5);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(6);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(7);

\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(1);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(2);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(3);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(4);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(5);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(6);
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(7);

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\state.s3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.s3~q\);
\ALT_INV_state.s3~clkctrl_outclk\ <= NOT \state.s3~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\ <= NOT \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\;
\Comp_AY|ALT_INV_state.s1~q\ <= NOT \Comp_AY|state.s1~q\;
\ALT_INV_incr_CK~0_combout\ <= NOT \incr_CK~0_combout\;
\ALT_INV_s_out~4_combout\ <= NOT \s_out~4_combout\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;

-- Location: IOOBUF_X38_Y0_N2
\a[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	devoe => ww_devoe,
	o => ww_a(0));

-- Location: IOOBUF_X41_Y0_N23
\a[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	devoe => ww_devoe,
	o => ww_a(1));

-- Location: IOOBUF_X48_Y41_N9
\a[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	devoe => ww_devoe,
	o => ww_a(2));

-- Location: IOOBUF_X46_Y0_N16
\a[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	devoe => ww_devoe,
	o => ww_a(3));

-- Location: IOOBUF_X52_Y32_N2
\a[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	devoe => ww_devoe,
	o => ww_a(4));

-- Location: IOOBUF_X50_Y41_N2
\a[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	devoe => ww_devoe,
	o => ww_a(5));

-- Location: IOOBUF_X46_Y41_N2
\a[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	devoe => ww_devoe,
	o => ww_a(6));

-- Location: IOOBUF_X41_Y0_N16
\a[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	devoe => ww_devoe,
	o => ww_a(7));

-- Location: IOOBUF_X23_Y41_N9
\b[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[0]~input_o\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X21_Y41_N9
\b[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[1]~input_o\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X34_Y0_N2
\b[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[2]~input_o\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X29_Y0_N9
\b[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[3]~input_o\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOOBUF_X14_Y41_N9
\b[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[4]~input_o\,
	devoe => ww_devoe,
	o => ww_b(4));

-- Location: IOOBUF_X14_Y41_N2
\b[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[5]~input_o\,
	devoe => ww_devoe,
	o => ww_b(5));

-- Location: IOOBUF_X18_Y41_N2
\b[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[6]~input_o\,
	devoe => ww_devoe,
	o => ww_b(6));

-- Location: IOOBUF_X25_Y0_N2
\b[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_b[7]~input_o\,
	devoe => ww_devoe,
	o => ww_b(7));

-- Location: IOOBUF_X7_Y41_N2
\cop~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_cop);

-- Location: IOOBUF_X50_Y41_N9
\sno~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s3~q\,
	devoe => ww_devoe,
	o => ww_sno);

-- Location: IOOBUF_X36_Y41_N9
\rr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(0),
	devoe => ww_devoe,
	o => ww_rr(0));

-- Location: IOOBUF_X29_Y41_N2
\rr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(1),
	devoe => ww_devoe,
	o => ww_rr(1));

-- Location: IOOBUF_X31_Y41_N16
\rr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(2),
	devoe => ww_devoe,
	o => ww_rr(2));

-- Location: IOOBUF_X43_Y41_N9
\rr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(3),
	devoe => ww_devoe,
	o => ww_rr(3));

-- Location: IOOBUF_X34_Y41_N9
\rr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(4),
	devoe => ww_devoe,
	o => ww_rr(4));

-- Location: IOOBUF_X31_Y41_N23
\rr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(5),
	devoe => ww_devoe,
	o => ww_rr(5));

-- Location: IOOBUF_X41_Y41_N16
\rr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(6),
	devoe => ww_devoe,
	o => ww_rr(6));

-- Location: IOOBUF_X36_Y41_N2
\rr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(7),
	devoe => ww_devoe,
	o => ww_rr(7));

-- Location: IOOBUF_X38_Y41_N2
\rr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(8),
	devoe => ww_devoe,
	o => ww_rr(8));

-- Location: IOOBUF_X43_Y41_N2
\rr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(9),
	devoe => ww_devoe,
	o => ww_rr(9));

-- Location: IOOBUF_X34_Y41_N2
\rr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(10),
	devoe => ww_devoe,
	o => ww_rr(10));

-- Location: IOOBUF_X29_Y41_N9
\rr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(11),
	devoe => ww_devoe,
	o => ww_rr(11));

-- Location: IOOBUF_X41_Y41_N23
\rr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(12),
	devoe => ww_devoe,
	o => ww_rr(12));

-- Location: IOOBUF_X41_Y41_N9
\rr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(13),
	devoe => ww_devoe,
	o => ww_rr(13));

-- Location: IOOBUF_X41_Y41_N2
\rr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(14),
	devoe => ww_devoe,
	o => ww_rr(14));

-- Location: IOOBUF_X38_Y41_N9
\rr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|rr\(15),
	devoe => ww_devoe,
	o => ww_rr(15));

-- Location: IOOBUF_X10_Y41_N9
\priznak[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_priznak(0));

-- Location: IOOBUF_X5_Y41_N2
\priznak[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_priznak(1));

-- Location: IOOBUF_X46_Y41_N23
\sko~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_AY|sko~0_combout\,
	devoe => ww_devoe,
	o => ww_sko);

-- Location: IOOBUF_X50_Y0_N2
\RA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(0));

-- Location: IOOBUF_X52_Y19_N9
\RA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(1));

-- Location: IOOBUF_X52_Y13_N9
\RA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(2));

-- Location: IOOBUF_X52_Y12_N9
\RA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(3));

-- Location: IOOBUF_X52_Y18_N2
\RA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(4));

-- Location: IOOBUF_X52_Y16_N9
\RA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(5));

-- Location: IOOBUF_X52_Y19_N2
\RA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(6));

-- Location: IOOBUF_X52_Y12_N2
\RA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RA[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RA(7));

-- Location: IOOBUF_X52_Y10_N2
\CK[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(0));

-- Location: IOOBUF_X48_Y0_N9
\CK[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(1));

-- Location: IOOBUF_X52_Y15_N9
\CK[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(2));

-- Location: IOOBUF_X52_Y15_N2
\CK[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(3));

-- Location: IOOBUF_X52_Y13_N2
\CK[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(4));

-- Location: IOOBUF_X52_Y9_N9
\CK[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(5));

-- Location: IOOBUF_X52_Y11_N2
\CK[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(6));

-- Location: IOOBUF_X52_Y11_N9
\CK[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CK[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_CK(7));

-- Location: IOOBUF_X52_Y25_N9
\RK[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(0));

-- Location: IOOBUF_X52_Y27_N2
\RK[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(1));

-- Location: IOOBUF_X52_Y23_N9
\RK[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(2));

-- Location: IOOBUF_X52_Y27_N9
\RK[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(3));

-- Location: IOOBUF_X52_Y25_N2
\RK[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(4));

-- Location: IOOBUF_X52_Y16_N2
\RK[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(5));

-- Location: IOOBUF_X52_Y30_N9
\RK[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(6));

-- Location: IOOBUF_X52_Y32_N9
\RK[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RK[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_RK(7));

-- Location: IOOBUF_X48_Y0_N2
\s_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_out~1_combout\,
	devoe => ww_devoe,
	o => ww_s_out(0));

-- Location: IOOBUF_X50_Y0_N9
\s_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_out~3_combout\,
	devoe => ww_devoe,
	o => ww_s_out(1));

-- Location: IOOBUF_X52_Y9_N2
\s_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_out~4_combout\,
	devoe => ww_devoe,
	o => ww_s_out(2));

-- Location: IOOBUF_X31_Y41_N9
\data_in_OP[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~0_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(0));

-- Location: IOOBUF_X36_Y0_N2
\data_in_OP[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~1_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(1));

-- Location: IOOBUF_X25_Y41_N9
\data_in_OP[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~2_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(2));

-- Location: IOOBUF_X31_Y0_N23
\data_in_OP[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~3_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(3));

-- Location: IOOBUF_X31_Y41_N2
\data_in_OP[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~4_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(4));

-- Location: IOOBUF_X23_Y41_N2
\data_in_OP[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~5_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(5));

-- Location: IOOBUF_X31_Y0_N2
\data_in_OP[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~6_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(6));

-- Location: IOOBUF_X31_Y0_N9
\data_in_OP[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in_OP~7_combout\,
	devoe => ww_devoe,
	o => ww_data_in_OP(7));

-- Location: IOOBUF_X23_Y0_N9
\address_OP[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~24_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(0));

-- Location: IOOBUF_X52_Y10_N9
\address_OP[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~25_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(1));

-- Location: IOOBUF_X43_Y0_N2
\address_OP[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~26_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(2));

-- Location: IOOBUF_X21_Y0_N9
\address_OP[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~27_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(3));

-- Location: IOOBUF_X41_Y0_N2
\address_OP[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~28_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(4));

-- Location: IOOBUF_X46_Y0_N9
\address_OP[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~29_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(5));

-- Location: IOOBUF_X46_Y0_N2
\address_OP[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~30_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(6));

-- Location: IOOBUF_X41_Y0_N9
\address_OP[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \address_OP~31_combout\,
	devoe => ww_devoe,
	o => ww_address_OP(7));

-- Location: IOOBUF_X31_Y0_N16
\wr_en_OP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wr_en_OP~0_combout\,
	devoe => ww_devoe,
	o => ww_wr_en_OP);

-- Location: IOOBUF_X36_Y0_N9
\data_out_OP[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	devoe => ww_devoe,
	o => ww_data_out_OP(0));

-- Location: IOOBUF_X46_Y0_N23
\data_out_OP[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	devoe => ww_devoe,
	o => ww_data_out_OP(1));

-- Location: IOOBUF_X46_Y41_N9
\data_out_OP[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	devoe => ww_devoe,
	o => ww_data_out_OP(2));

-- Location: IOOBUF_X43_Y0_N9
\data_out_OP[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	devoe => ww_devoe,
	o => ww_data_out_OP(3));

-- Location: IOOBUF_X52_Y32_N16
\data_out_OP[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	devoe => ww_devoe,
	o => ww_data_out_OP(4));

-- Location: IOOBUF_X48_Y41_N2
\data_out_OP[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	devoe => ww_devoe,
	o => ww_data_out_OP(5));

-- Location: IOOBUF_X46_Y41_N16
\data_out_OP[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	devoe => ww_devoe,
	o => ww_data_out_OP(6));

-- Location: IOOBUF_X38_Y0_N9
\data_out_OP[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	devoe => ww_devoe,
	o => ww_data_out_OP(7));

-- Location: IOOBUF_X1_Y41_N22
\altera_reserved_tdo~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y16_N0
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s3~q\) # ((!\Comp_AY|sko~0_combout\ & \state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|sko~0_combout\,
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\set~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: CLKCTRL_G19
\set~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set~inputclkctrl_outclk\);

-- Location: FF_X51_Y16_N1
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X51_Y16_N20
incr_RA : cycloneiv_lcell_comb
-- Equation(s):
-- \incr_RA~combout\ = (\Comp_AY|sko~0_combout\ & \state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|sko~0_combout\,
	datad => \state.s4~q\,
	combout => \incr_RA~combout\);

-- Location: FF_X51_Y16_N21
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \incr_RA~combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X51_Y16_N8
\state.s6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s6~feeder_combout\ = \state.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s5~q\,
	combout => \state.s6~feeder_combout\);

-- Location: FF_X51_Y16_N9
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.s6~feeder_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LCCOMB_X51_Y16_N16
\state.s0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s0~0_combout\ = !\state.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s6~q\,
	combout => \state.s0~0_combout\);

-- Location: FF_X51_Y16_N17
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.s0~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X51_Y16_N26
\state.s1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s1~0_combout\ = !\state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s0~q\,
	combout => \state.s1~0_combout\);

-- Location: FF_X51_Y16_N27
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.s1~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: FF_X51_Y16_N7
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.s1~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: FF_X35_Y34_N1
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.s2~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X35_Y33_N2
\Comp_AY|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Selector1~1_combout\ = (\Comp_AY|state.s2~q\ & (((\Comp_AY|i\(0)) # (!\Comp_AY|i\(2))) # (!\Comp_AY|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|i\(1),
	datab => \Comp_AY|i\(2),
	datac => \Comp_AY|state.s2~q\,
	datad => \Comp_AY|i\(0),
	combout => \Comp_AY|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y34_N6
\Comp_AY|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Selector5~0_combout\ = (\Comp_AY|Selector1~1_combout\) # ((!\Comp_AY|state.s2~q\ & ((\state.s3~q\) # (\Comp_AY|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s2~q\,
	datab => \state.s3~q\,
	datac => \Comp_AY|Selector1~1_combout\,
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|Selector5~0_combout\);

-- Location: FF_X35_Y34_N7
\Comp_AY|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|Selector5~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|state.s0~q\);

-- Location: LCCOMB_X35_Y34_N22
\Comp_AY|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Selector1~2_combout\ = (\Comp_AY|Selector1~1_combout\) # ((!\Comp_AY|state.s0~q\ & \state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datac => \Comp_AY|Selector1~1_combout\,
	datad => \state.s3~q\,
	combout => \Comp_AY|Selector1~2_combout\);

-- Location: FF_X35_Y34_N23
\Comp_AY|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|Selector1~2_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|state.s1~q\);

-- Location: FF_X35_Y33_N3
\Comp_AY|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_AY|state.s1~q\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|state.s2~q\);

-- Location: LCCOMB_X35_Y33_N0
\Comp_AY|i[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|i[2]~0_combout\ = (\Comp_AY|i\(2)) # ((\Comp_AY|i\(1) & (\Comp_AY|state.s2~q\ & !\Comp_AY|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|i\(1),
	datab => \Comp_AY|state.s2~q\,
	datac => \Comp_AY|i\(2),
	datad => \Comp_AY|i\(0),
	combout => \Comp_AY|i[2]~0_combout\);

-- Location: CLKCTRL_G8
\state.s3~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.s3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.s3~clkctrl_outclk\);

-- Location: FF_X35_Y33_N1
\Comp_AY|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|i[2]~0_combout\,
	clrn => \ALT_INV_state.s3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|i\(2));

-- Location: LCCOMB_X35_Y33_N12
\Comp_AY|i[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|i[1]~1_combout\ = (\Comp_AY|i\(0) & (((\Comp_AY|i\(1))))) # (!\Comp_AY|i\(0) & ((\Comp_AY|i\(1) & ((\Comp_AY|i\(2)) # (!\Comp_AY|state.s2~q\))) # (!\Comp_AY|i\(1) & ((\Comp_AY|state.s2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|i\(0),
	datab => \Comp_AY|i\(2),
	datac => \Comp_AY|i\(1),
	datad => \Comp_AY|state.s2~q\,
	combout => \Comp_AY|i[1]~1_combout\);

-- Location: FF_X35_Y33_N13
\Comp_AY|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|i[1]~1_combout\,
	clrn => \ALT_INV_state.s3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|i\(1));

-- Location: LCCOMB_X35_Y33_N6
\Comp_AY|i[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|i[0]~2_combout\ = (\Comp_AY|i\(0) & (((!\Comp_AY|state.s2~q\)))) # (!\Comp_AY|i\(0) & (\Comp_AY|state.s2~q\ & ((!\Comp_AY|i\(2)) # (!\Comp_AY|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|i\(1),
	datab => \Comp_AY|i\(2),
	datac => \Comp_AY|i\(0),
	datad => \Comp_AY|state.s2~q\,
	combout => \Comp_AY|i[0]~2_combout\);

-- Location: FF_X35_Y33_N7
\Comp_AY|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|i[0]~2_combout\,
	clrn => \ALT_INV_state.s3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|i\(0));

-- Location: LCCOMB_X35_Y33_N24
\Comp_AY|sko~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|sko~0_combout\ = (!\Comp_AY|i\(0) & (\Comp_AY|i\(2) & (\Comp_AY|i\(1) & \Comp_AY|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|i\(0),
	datab => \Comp_AY|i\(2),
	datac => \Comp_AY|i\(1),
	datad => \Comp_AY|state.s2~q\,
	combout => \Comp_AY|sko~0_combout\);

-- Location: LCCOMB_X51_Y16_N22
\wr_en_OP~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en_OP~0_combout\ = (\state.s5~q\) # ((\Comp_AY|sko~0_combout\ & \state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|sko~0_combout\,
	datac => \state.s4~q\,
	datad => \state.s5~q\,
	combout => \wr_en_OP~0_combout\);

-- Location: IOIBUF_X3_Y41_N22
\altera_reserved_tms~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X3_Y41_N15
\altera_reserved_tck~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X5_Y41_N22
\altera_reserved_tdi~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X0_Y35_N0
altera_internal_jtag : cycloneiv_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X31_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X31_Y16_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X31_Y16_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X31_Y16_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X31_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X31_Y16_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X31_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X31_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X31_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X31_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X31_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: FF_X31_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X31_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X31_Y18_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X31_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X31_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCCOMB_X31_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X31_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X31_Y18_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X31_Y18_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X31_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X31_Y17_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X31_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X31_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X31_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X31_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X31_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X31_Y17_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LCCOMB_X31_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: FF_X31_Y16_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X31_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X31_Y16_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X31_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X31_Y17_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X31_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X31_Y16_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X30_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\);

-- Location: LCCOMB_X32_Y16_N0
\~QIC_CREATED_GND~I\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: FF_X32_Y18_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCCOMB_X32_Y18_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X32_Y18_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: FF_X32_Y18_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: FF_X32_Y18_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: FF_X32_Y18_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X32_Y18_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X32_Y18_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCCOMB_X32_Y18_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X32_Y18_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X32_Y18_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X32_Y18_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X32_Y18_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X32_Y18_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X32_Y18_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X32_Y18_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X32_Y18_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y18_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X32_Y18_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X31_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: FF_X31_Y16_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X32_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X30_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: FF_X30_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X32_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: LCCOMB_X31_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: FF_X31_Y16_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X31_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X31_Y16_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\);

-- Location: FF_X30_Y16_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]~0_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X30_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\);

-- Location: FF_X30_Y17_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X30_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\);

-- Location: LCCOMB_X31_Y14_N2
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datad => VCC,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X32_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: FF_X32_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: LCCOMB_X32_Y18_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X32_Y18_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X30_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X31_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X31_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X31_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: FF_X31_Y17_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

-- Location: FF_X32_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\);

-- Location: LCCOMB_X31_Y14_N24
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\);

-- Location: LCCOMB_X32_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X32_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: LCCOMB_X31_Y14_N26
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\);

-- Location: LCCOMB_X31_Y14_N0
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\);

-- Location: LCCOMB_X32_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X32_Y17_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: LCCOMB_X32_Y17_N26
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X32_Y14_N4
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\);

-- Location: LCCOMB_X32_Y14_N0
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\);

-- Location: FF_X32_Y14_N1
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X32_Y14_N12
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\);

-- Location: FF_X32_Y14_N13
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X32_Y14_N2
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~6_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\);

-- Location: FF_X32_Y14_N3
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCCOMB_X32_Y14_N26
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\);

-- Location: LCCOMB_X31_Y14_N20
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\);

-- Location: FF_X31_Y14_N3
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: LCCOMB_X31_Y14_N4
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\);

-- Location: FF_X31_Y14_N5
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: LCCOMB_X31_Y14_N6
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~12\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\);

-- Location: LCCOMB_X31_Y14_N8
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~14\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\);

-- Location: LCCOMB_X31_Y14_N10
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~16\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\);

-- Location: LCCOMB_X31_Y14_N12
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~18\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\);

-- Location: LCCOMB_X31_Y14_N14
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~20\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\);

-- Location: LCCOMB_X31_Y14_N16
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~22\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\);

-- Location: FF_X31_Y14_N17
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~23_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: FF_X31_Y14_N15
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: FF_X31_Y14_N13
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: FF_X31_Y14_N11
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: FF_X31_Y14_N9
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: FF_X31_Y14_N7
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13_combout\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_irf_reg[1][0]~q\,
	sload => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: LCCOMB_X34_Y14_N20
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y14_N22
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y14_N30
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: FF_X34_Y14_N23
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	clrn => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LCCOMB_X31_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\);

-- Location: LCCOMB_X30_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\);

-- Location: FF_X31_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~9_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: FF_X32_Y17_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\);

-- Location: LCCOMB_X32_Y17_N16
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: FF_X34_Y14_N21
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	clrn => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X30_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\);

-- Location: LCCOMB_X30_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~7_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\);

-- Location: LCCOMB_X30_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\);

-- Location: FF_X30_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~8_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: FF_X34_Y14_N3
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	clrn => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LCCOMB_X31_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X31_Y17_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X34_Y14_N0
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: FF_X34_Y14_N1
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	clrn => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_process_0~0_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X31_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\);

-- Location: FF_X31_Y17_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X32_Y17_N24
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: FF_X32_Y17_N25
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\);

-- Location: LCCOMB_X31_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\);

-- Location: FF_X31_Y17_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X31_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X31_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X31_Y16_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X31_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: FF_X31_Y16_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X31_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X31_Y16_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X31_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: FF_X31_Y16_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X29_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X29_Y16_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X29_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\);

-- Location: LCCOMB_X29_Y16_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\);

-- Location: LCCOMB_X29_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\);

-- Location: FF_X29_Y16_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X29_Y16_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\);

-- Location: FF_X29_Y16_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X29_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\);

-- Location: FF_X29_Y16_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~15_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X29_Y16_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\);

-- Location: FF_X29_Y16_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X29_Y16_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X29_Y16_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X29_Y16_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X29_Y16_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X29_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X29_Y16_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X29_Y16_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X29_Y16_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X29_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\);

-- Location: FF_X29_Y16_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X29_Y16_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: FF_X29_Y16_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X29_Y16_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X30_Y16_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\);

-- Location: FF_X30_Y16_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X30_Y16_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: FF_X30_Y16_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X29_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X31_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X31_Y17_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X32_Y17_N10
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: FF_X32_Y17_N11
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\);

-- Location: IOIBUF_X25_Y41_N1
\q_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(0),
	o => \q_b[0]~input_o\);

-- Location: LCCOMB_X35_Y34_N26
\Comp_AY|RB~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~1_combout\ = (!\Comp_AY|state.s0~q\ & (\q_b[0]~input_o\ & \state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datac => \q_b[0]~input_o\,
	datad => \state.s3~q\,
	combout => \Comp_AY|RB~1_combout\);

-- Location: FF_X35_Y34_N27
\Comp_AY|RB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~1_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(0));

-- Location: LCCOMB_X37_Y34_N4
\Comp_AY|q[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[0]~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(0)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(0),
	datac => \Comp_AY|rr\(0),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[0]~0_combout\);

-- Location: IOIBUF_X18_Y41_N8
\q_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(6),
	o => \q_b[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\q_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(2),
	o => \q_b[2]~input_o\);

-- Location: IOIBUF_X21_Y41_N1
\q_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(1),
	o => \q_b[1]~input_o\);

-- Location: LCCOMB_X35_Y34_N12
\Comp_AY|RB~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~6_combout\ = (\state.s3~q\ & ((\Comp_AY|state.s0~q\ & ((\Comp_AY|RB\(0)))) # (!\Comp_AY|state.s0~q\ & (\q_b[1]~input_o\)))) # (!\state.s3~q\ & (((\Comp_AY|RB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q_b[1]~input_o\,
	datab => \state.s3~q\,
	datac => \Comp_AY|RB\(0),
	datad => \Comp_AY|state.s0~q\,
	combout => \Comp_AY|RB~6_combout\);

-- Location: FF_X35_Y34_N13
\Comp_AY|RB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~6_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(1));

-- Location: LCCOMB_X35_Y34_N16
\Comp_AY|RB~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~5_combout\ = (\Comp_AY|state.s0~q\ & (((\Comp_AY|RB\(1))))) # (!\Comp_AY|state.s0~q\ & ((\state.s3~q\ & (\q_b[2]~input_o\)) # (!\state.s3~q\ & ((\Comp_AY|RB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datab => \state.s3~q\,
	datac => \q_b[2]~input_o\,
	datad => \Comp_AY|RB\(1),
	combout => \Comp_AY|RB~5_combout\);

-- Location: FF_X35_Y34_N17
\Comp_AY|RB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~5_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(2));

-- Location: IOIBUF_X29_Y0_N1
\q_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(3),
	o => \q_b[3]~input_o\);

-- Location: LCCOMB_X35_Y34_N28
\Comp_AY|RB~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~4_combout\ = (\Comp_AY|state.s0~q\ & (\Comp_AY|RB\(2))) # (!\Comp_AY|state.s0~q\ & ((\state.s3~q\ & ((\q_b[3]~input_o\))) # (!\state.s3~q\ & (\Comp_AY|RB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datab => \Comp_AY|RB\(2),
	datac => \q_b[3]~input_o\,
	datad => \state.s3~q\,
	combout => \Comp_AY|RB~4_combout\);

-- Location: FF_X35_Y34_N29
\Comp_AY|RB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~4_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(3));

-- Location: IOIBUF_X16_Y41_N8
\q_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(4),
	o => \q_b[4]~input_o\);

-- Location: LCCOMB_X35_Y34_N24
\Comp_AY|RB~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~3_combout\ = (\Comp_AY|state.s0~q\ & (\Comp_AY|RB\(3))) # (!\Comp_AY|state.s0~q\ & ((\state.s3~q\ & ((\q_b[4]~input_o\))) # (!\state.s3~q\ & (\Comp_AY|RB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datab => \Comp_AY|RB\(3),
	datac => \q_b[4]~input_o\,
	datad => \state.s3~q\,
	combout => \Comp_AY|RB~3_combout\);

-- Location: FF_X35_Y34_N25
\Comp_AY|RB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~3_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(4));

-- Location: IOIBUF_X16_Y41_N1
\q_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(5),
	o => \q_b[5]~input_o\);

-- Location: LCCOMB_X35_Y34_N20
\Comp_AY|RB~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~2_combout\ = (\Comp_AY|state.s0~q\ & (\Comp_AY|RB\(4))) # (!\Comp_AY|state.s0~q\ & ((\state.s3~q\ & ((\q_b[5]~input_o\))) # (!\state.s3~q\ & (\Comp_AY|RB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datab => \Comp_AY|RB\(4),
	datac => \q_b[5]~input_o\,
	datad => \state.s3~q\,
	combout => \Comp_AY|RB~2_combout\);

-- Location: FF_X35_Y34_N21
\Comp_AY|RB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~2_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(5));

-- Location: LCCOMB_X35_Y34_N8
\Comp_AY|RB~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|RB~0_combout\ = (\Comp_AY|state.s0~q\ & (((\Comp_AY|RB\(5))))) # (!\Comp_AY|state.s0~q\ & ((\state.s3~q\ & (\q_b[6]~input_o\)) # (!\state.s3~q\ & ((\Comp_AY|RB\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|state.s0~q\,
	datab => \state.s3~q\,
	datac => \q_b[6]~input_o\,
	datad => \Comp_AY|RB\(5),
	combout => \Comp_AY|RB~0_combout\);

-- Location: FF_X35_Y34_N9
\Comp_AY|RB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|RB~0_combout\,
	ena => \Comp_AY|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(6));

-- Location: LCCOMB_X35_Y34_N0
\Comp_AY|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Selector1~0_combout\ = (\state.s3~q\ & !\Comp_AY|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Comp_AY|state.s0~q\,
	combout => \Comp_AY|Selector1~0_combout\);

-- Location: FF_X37_Y34_N1
\Comp_AY|RA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(0));

-- Location: IOIBUF_X25_Y0_N8
\q_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_b(7),
	o => \q_b[7]~input_o\);

-- Location: FF_X37_Y34_N11
\Comp_AY|RB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \q_b[7]~input_o\,
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RB\(7));

-- Location: LCCOMB_X37_Y34_N0
\Comp_AY|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux15~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(0) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(0) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(0),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux15~0_combout\);

-- Location: LCCOMB_X37_Y34_N16
\Comp_AY|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~0_combout\ = (\Comp_AY|q[0]~0_combout\ & (\Comp_AY|Mux15~0_combout\ $ (VCC))) # (!\Comp_AY|q[0]~0_combout\ & (\Comp_AY|Mux15~0_combout\ & VCC))
-- \Comp_AY|Add1~1\ = CARRY((\Comp_AY|q[0]~0_combout\ & \Comp_AY|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[0]~0_combout\,
	datab => \Comp_AY|Mux15~0_combout\,
	datad => VCC,
	combout => \Comp_AY|Add1~0_combout\,
	cout => \Comp_AY|Add1~1\);

-- Location: LCCOMB_X51_Y15_N8
\CK[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[0]~7_combout\ = \CK[0]~reg0_q\ $ (((\state.s1~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datac => \CK[0]~reg0_q\,
	datad => \state.s0~q\,
	combout => \CK[0]~7_combout\);

-- Location: FF_X51_Y15_N9
\CK[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[0]~7_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[0]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N16
\RA[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[0]~8_combout\ = \RA[0]~reg0_q\ $ (VCC)
-- \RA[0]~9\ = CARRY(\RA[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RA[0]~reg0_q\,
	datad => VCC,
	combout => \RA[0]~8_combout\,
	cout => \RA[0]~9\);

-- Location: IOIBUF_X52_Y18_N8
\q_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(0),
	o => \q_a[0]~input_o\);

-- Location: LCCOMB_X51_Y23_N6
\IA[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[0]~0_combout\ = (\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0) & (\q_a[0]~input_o\ $ (VCC))) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0) & (\q_a[0]~input_o\ & VCC))
-- \IA[0]~1\ = CARRY((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0) & \q_a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	datab => \q_a[0]~input_o\,
	datad => VCC,
	combout => \IA[0]~0_combout\,
	cout => \IA[0]~1\);

-- Location: LCCOMB_X51_Y16_N6
\RA[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[4]~10_combout\ = (\state.s2~q\) # ((\state.s4~q\ & \Comp_AY|sko~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datac => \state.s2~q\,
	datad => \Comp_AY|sko~0_combout\,
	combout => \RA[4]~10_combout\);

-- Location: FF_X51_Y19_N17
\RA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[0]~8_combout\,
	asdata => \IA[0]~0_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[0]~reg0_q\);

-- Location: LCCOMB_X51_Y16_N4
\incr_CK~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \incr_CK~0_combout\ = (\state.s0~q\ & !\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datac => \state.s1~q\,
	combout => \incr_CK~0_combout\);

-- Location: LCCOMB_X51_Y19_N8
\address_OP~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~16_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[0]~0_combout\))) # (!\state.s2~q\ & (\RA[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \RA[0]~reg0_q\,
	datac => \IA[0]~0_combout\,
	datad => \incr_CK~0_combout\,
	combout => \address_OP~16_combout\);

-- Location: LCCOMB_X51_Y15_N2
\address_OP~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~24_combout\ = (\address_OP~16_combout\) # ((\CK[0]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s1~q\,
	datac => \CK[0]~reg0_q\,
	datad => \address_OP~16_combout\,
	combout => \address_OP~24_combout\);

-- Location: LCCOMB_X51_Y15_N12
\CK[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[1]~8_combout\ = (\CK[1]~reg0_q\ & (\CK[0]~reg0_q\ $ (VCC))) # (!\CK[1]~reg0_q\ & (\CK[0]~reg0_q\ & VCC))
-- \CK[1]~9\ = CARRY((\CK[1]~reg0_q\ & \CK[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK[1]~reg0_q\,
	datab => \CK[0]~reg0_q\,
	datad => VCC,
	combout => \CK[1]~8_combout\,
	cout => \CK[1]~9\);

-- Location: FF_X51_Y15_N13
\CK[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[1]~8_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[1]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N18
\RA[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[1]~11_combout\ = (\RA[1]~reg0_q\ & (!\RA[0]~9\)) # (!\RA[1]~reg0_q\ & ((\RA[0]~9\) # (GND)))
-- \RA[1]~12\ = CARRY((!\RA[0]~9\) # (!\RA[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RA[1]~reg0_q\,
	datad => VCC,
	cin => \RA[0]~9\,
	combout => \RA[1]~11_combout\,
	cout => \RA[1]~12\);

-- Location: LCCOMB_X51_Y19_N20
\RA[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[2]~13_combout\ = (\RA[2]~reg0_q\ & (\RA[1]~12\ $ (GND))) # (!\RA[2]~reg0_q\ & (!\RA[1]~12\ & VCC))
-- \RA[2]~14\ = CARRY((\RA[2]~reg0_q\ & !\RA[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RA[2]~reg0_q\,
	datad => VCC,
	cin => \RA[1]~12\,
	combout => \RA[2]~13_combout\,
	cout => \RA[2]~14\);

-- Location: IOIBUF_X52_Y31_N1
\q_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(2),
	o => \q_a[2]~input_o\);

-- Location: LCCOMB_X51_Y15_N14
\CK[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[2]~10_combout\ = (\CK[2]~reg0_q\ & (!\CK[1]~9\)) # (!\CK[2]~reg0_q\ & ((\CK[1]~9\) # (GND)))
-- \CK[2]~11\ = CARRY((!\CK[1]~9\) # (!\CK[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK[2]~reg0_q\,
	datad => VCC,
	cin => \CK[1]~9\,
	combout => \CK[2]~10_combout\,
	cout => \CK[2]~11\);

-- Location: FF_X51_Y15_N15
\CK[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[2]~10_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[2]~reg0_q\);

-- Location: LCCOMB_X51_Y15_N16
\CK[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[3]~12_combout\ = (\CK[3]~reg0_q\ & (\CK[2]~11\ $ (GND))) # (!\CK[3]~reg0_q\ & (!\CK[2]~11\ & VCC))
-- \CK[3]~13\ = CARRY((\CK[3]~reg0_q\ & !\CK[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK[3]~reg0_q\,
	datad => VCC,
	cin => \CK[2]~11\,
	combout => \CK[3]~12_combout\,
	cout => \CK[3]~13\);

-- Location: FF_X51_Y15_N17
\CK[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[3]~12_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[3]~reg0_q\);

-- Location: IOIBUF_X52_Y31_N8
\q_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(3),
	o => \q_a[3]~input_o\);

-- Location: LCCOMB_X51_Y15_N18
\CK[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[4]~14_combout\ = (\CK[4]~reg0_q\ & (!\CK[3]~13\)) # (!\CK[4]~reg0_q\ & ((\CK[3]~13\) # (GND)))
-- \CK[4]~15\ = CARRY((!\CK[3]~13\) # (!\CK[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK[4]~reg0_q\,
	datad => VCC,
	cin => \CK[3]~13\,
	combout => \CK[4]~14_combout\,
	cout => \CK[4]~15\);

-- Location: FF_X51_Y15_N19
\CK[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[4]~14_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[4]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N22
\RA[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[3]~15_combout\ = (\RA[3]~reg0_q\ & (!\RA[2]~14\)) # (!\RA[3]~reg0_q\ & ((\RA[2]~14\) # (GND)))
-- \RA[3]~16\ = CARRY((!\RA[2]~14\) # (!\RA[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[3]~reg0_q\,
	datad => VCC,
	cin => \RA[2]~14\,
	combout => \RA[3]~15_combout\,
	cout => \RA[3]~16\);

-- Location: FF_X51_Y19_N23
\RA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[3]~15_combout\,
	asdata => \IA[3]~6_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[3]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N24
\RA[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[4]~17_combout\ = (\RA[4]~reg0_q\ & (\RA[3]~16\ $ (GND))) # (!\RA[4]~reg0_q\ & (!\RA[3]~16\ & VCC))
-- \RA[4]~18\ = CARRY((\RA[4]~reg0_q\ & !\RA[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RA[4]~reg0_q\,
	datad => VCC,
	cin => \RA[3]~16\,
	combout => \RA[4]~17_combout\,
	cout => \RA[4]~18\);

-- Location: LCCOMB_X51_Y15_N20
\CK[5]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[5]~16_combout\ = (\CK[5]~reg0_q\ & (\CK[4]~15\ $ (GND))) # (!\CK[5]~reg0_q\ & (!\CK[4]~15\ & VCC))
-- \CK[5]~17\ = CARRY((\CK[5]~reg0_q\ & !\CK[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK[5]~reg0_q\,
	datad => VCC,
	cin => \CK[4]~15\,
	combout => \CK[5]~16_combout\,
	cout => \CK[5]~17\);

-- Location: FF_X51_Y15_N21
\CK[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[5]~16_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[5]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N26
\RA[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[5]~19_combout\ = (\RA[5]~reg0_q\ & (!\RA[4]~18\)) # (!\RA[5]~reg0_q\ & ((\RA[4]~18\) # (GND)))
-- \RA[5]~20\ = CARRY((!\RA[4]~18\) # (!\RA[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~reg0_q\,
	datad => VCC,
	cin => \RA[4]~18\,
	combout => \RA[5]~19_combout\,
	cout => \RA[5]~20\);

-- Location: IOIBUF_X52_Y23_N1
\q_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(5),
	o => \q_a[5]~input_o\);

-- Location: LCCOMB_X51_Y15_N22
\CK[6]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[6]~18_combout\ = (\CK[6]~reg0_q\ & (!\CK[5]~17\)) # (!\CK[6]~reg0_q\ & ((\CK[5]~17\) # (GND)))
-- \CK[6]~19\ = CARRY((!\CK[5]~17\) # (!\CK[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK[6]~reg0_q\,
	datad => VCC,
	cin => \CK[5]~17\,
	combout => \CK[6]~18_combout\,
	cout => \CK[6]~19\);

-- Location: FF_X51_Y15_N23
\CK[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[6]~18_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[6]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N28
\RA[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[6]~21_combout\ = (\RA[6]~reg0_q\ & (\RA[5]~20\ $ (GND))) # (!\RA[6]~reg0_q\ & (!\RA[5]~20\ & VCC))
-- \RA[6]~22\ = CARRY((\RA[6]~reg0_q\ & !\RA[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RA[6]~reg0_q\,
	datad => VCC,
	cin => \RA[5]~20\,
	combout => \RA[6]~21_combout\,
	cout => \RA[6]~22\);

-- Location: LCCOMB_X51_Y15_N24
\CK[7]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CK[7]~20_combout\ = \CK[6]~19\ $ (!\CK[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CK[7]~reg0_q\,
	cin => \CK[6]~19\,
	combout => \CK[7]~20_combout\);

-- Location: FF_X51_Y15_N25
\CK[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CK[7]~20_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	ena => \ALT_INV_incr_CK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK[7]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N30
\RA[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RA[7]~23_combout\ = \RA[7]~reg0_q\ $ (\RA[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~reg0_q\,
	cin => \RA[6]~22\,
	combout => \RA[7]~23_combout\);

-- Location: IOIBUF_X52_Y28_N1
\q_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(7),
	o => \q_a[7]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\q_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(6),
	o => \q_a[6]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\q_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(4),
	o => \q_a[4]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\q_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q_a(1),
	o => \q_a[1]~input_o\);

-- Location: LCCOMB_X51_Y23_N8
\IA[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[1]~2_combout\ = (\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & ((\q_a[1]~input_o\ & (\IA[0]~1\ & VCC)) # (!\q_a[1]~input_o\ & (!\IA[0]~1\)))) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & 
-- ((\q_a[1]~input_o\ & (!\IA[0]~1\)) # (!\q_a[1]~input_o\ & ((\IA[0]~1\) # (GND)))))
-- \IA[1]~3\ = CARRY((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & (!\q_a[1]~input_o\ & !\IA[0]~1\)) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1) & ((!\IA[0]~1\) # (!\q_a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	datab => \q_a[1]~input_o\,
	datad => VCC,
	cin => \IA[0]~1\,
	combout => \IA[1]~2_combout\,
	cout => \IA[1]~3\);

-- Location: LCCOMB_X51_Y23_N10
\IA[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[2]~4_combout\ = ((\q_a[2]~input_o\ $ (\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2) $ (!\IA[1]~3\)))) # (GND)
-- \IA[2]~5\ = CARRY((\q_a[2]~input_o\ & ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2)) # (!\IA[1]~3\))) # (!\q_a[2]~input_o\ & (\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2) & !\IA[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q_a[2]~input_o\,
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	datad => VCC,
	cin => \IA[1]~3\,
	combout => \IA[2]~4_combout\,
	cout => \IA[2]~5\);

-- Location: LCCOMB_X51_Y23_N12
\IA[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[3]~6_combout\ = (\q_a[3]~input_o\ & ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & (\IA[2]~5\ & VCC)) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & (!\IA[2]~5\)))) # (!\q_a[3]~input_o\ & 
-- ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & (!\IA[2]~5\)) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & ((\IA[2]~5\) # (GND)))))
-- \IA[3]~7\ = CARRY((\q_a[3]~input_o\ & (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3) & !\IA[2]~5\)) # (!\q_a[3]~input_o\ & ((!\IA[2]~5\) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q_a[3]~input_o\,
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	datad => VCC,
	cin => \IA[2]~5\,
	combout => \IA[3]~6_combout\,
	cout => \IA[3]~7\);

-- Location: LCCOMB_X51_Y23_N14
\IA[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[4]~8_combout\ = ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4) $ (\q_a[4]~input_o\ $ (!\IA[3]~7\)))) # (GND)
-- \IA[4]~9\ = CARRY((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4) & ((\q_a[4]~input_o\) # (!\IA[3]~7\))) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4) & (\q_a[4]~input_o\ & !\IA[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	datab => \q_a[4]~input_o\,
	datad => VCC,
	cin => \IA[3]~7\,
	combout => \IA[4]~8_combout\,
	cout => \IA[4]~9\);

-- Location: LCCOMB_X51_Y23_N16
\IA[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[5]~10_combout\ = (\q_a[5]~input_o\ & ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & (\IA[4]~9\ & VCC)) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & (!\IA[4]~9\)))) # (!\q_a[5]~input_o\ & 
-- ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & (!\IA[4]~9\)) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & ((\IA[4]~9\) # (GND)))))
-- \IA[5]~11\ = CARRY((\q_a[5]~input_o\ & (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5) & !\IA[4]~9\)) # (!\q_a[5]~input_o\ & ((!\IA[4]~9\) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q_a[5]~input_o\,
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	datad => VCC,
	cin => \IA[4]~9\,
	combout => \IA[5]~10_combout\,
	cout => \IA[5]~11\);

-- Location: LCCOMB_X51_Y23_N18
\IA[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[6]~12_combout\ = ((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6) $ (\q_a[6]~input_o\ $ (!\IA[5]~11\)))) # (GND)
-- \IA[6]~13\ = CARRY((\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6) & ((\q_a[6]~input_o\) # (!\IA[5]~11\))) # (!\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6) & (\q_a[6]~input_o\ & !\IA[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	datab => \q_a[6]~input_o\,
	datad => VCC,
	cin => \IA[5]~11\,
	combout => \IA[6]~12_combout\,
	cout => \IA[6]~13\);

-- Location: LCCOMB_X51_Y23_N20
\IA[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IA[7]~14_combout\ = \q_a[7]~input_o\ $ (\Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7) $ (\IA[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q_a[7]~input_o\,
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	cin => \IA[6]~13\,
	combout => \IA[7]~14_combout\);

-- Location: FF_X51_Y19_N31
\RA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[7]~23_combout\,
	asdata => \IA[7]~14_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[7]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N14
\address_OP~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~23_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[7]~14_combout\))) # (!\state.s2~q\ & (\RA[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[7]~reg0_q\,
	datab => \incr_CK~0_combout\,
	datac => \IA[7]~14_combout\,
	datad => \state.s2~q\,
	combout => \address_OP~23_combout\);

-- Location: LCCOMB_X51_Y15_N6
\address_OP~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~31_combout\ = (\address_OP~23_combout\) # ((\CK[7]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \CK[7]~reg0_q\,
	datac => \state.s1~q\,
	datad => \address_OP~23_combout\,
	combout => \address_OP~31_combout\);

-- Location: LCCOMB_X37_Y33_N18
\Comp_AY|q[9]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[9]~7_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(9)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(7),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|rr\(9),
	combout => \Comp_AY|q[9]~7_combout\);

-- Location: FF_X36_Y34_N3
\Comp_AY|RA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(6));

-- Location: LCCOMB_X36_Y34_N2
\Comp_AY|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux9~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(6) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(6) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(6),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux9~0_combout\);

-- Location: FF_X37_Y34_N9
\Comp_AY|RA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(5));

-- Location: LCCOMB_X37_Y34_N8
\Comp_AY|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux10~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(5) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(5) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(5),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux10~0_combout\);

-- Location: FF_X37_Y34_N3
\Comp_AY|RA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(4));

-- Location: LCCOMB_X37_Y34_N2
\Comp_AY|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux11~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(4) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(4) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(4),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux11~0_combout\);

-- Location: FF_X37_Y34_N13
\Comp_AY|RA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(3));

-- Location: LCCOMB_X37_Y34_N12
\Comp_AY|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux12~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(3) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(3) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(3),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux12~0_combout\);

-- Location: FF_X37_Y34_N7
\Comp_AY|RA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(2));

-- Location: LCCOMB_X37_Y34_N6
\Comp_AY|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux13~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(2) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(2) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(2),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux13~0_combout\);

-- Location: FF_X36_Y34_N13
\Comp_AY|RA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(1));

-- Location: LCCOMB_X36_Y34_N12
\Comp_AY|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux14~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(1) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(1) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(1),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux14~0_combout\);

-- Location: LCCOMB_X37_Y34_N18
\Comp_AY|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~2_combout\ = (\Comp_AY|q[1]~15_combout\ & ((\Comp_AY|Mux14~0_combout\ & (\Comp_AY|Add1~1\ & VCC)) # (!\Comp_AY|Mux14~0_combout\ & (!\Comp_AY|Add1~1\)))) # (!\Comp_AY|q[1]~15_combout\ & ((\Comp_AY|Mux14~0_combout\ & (!\Comp_AY|Add1~1\)) # 
-- (!\Comp_AY|Mux14~0_combout\ & ((\Comp_AY|Add1~1\) # (GND)))))
-- \Comp_AY|Add1~3\ = CARRY((\Comp_AY|q[1]~15_combout\ & (!\Comp_AY|Mux14~0_combout\ & !\Comp_AY|Add1~1\)) # (!\Comp_AY|q[1]~15_combout\ & ((!\Comp_AY|Add1~1\) # (!\Comp_AY|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[1]~15_combout\,
	datab => \Comp_AY|Mux14~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~1\,
	combout => \Comp_AY|Add1~2_combout\,
	cout => \Comp_AY|Add1~3\);

-- Location: LCCOMB_X38_Y34_N0
\Comp_AY|rr[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[0]~16_combout\ = (\Comp_AY|Add1~0_combout\ & (\Comp_AY|Add1~32_combout\ $ (VCC))) # (!\Comp_AY|Add1~0_combout\ & (\Comp_AY|Add1~32_combout\ & VCC))
-- \Comp_AY|rr[0]~17\ = CARRY((\Comp_AY|Add1~0_combout\ & \Comp_AY|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~0_combout\,
	datab => \Comp_AY|Add1~32_combout\,
	datad => VCC,
	combout => \Comp_AY|rr[0]~16_combout\,
	cout => \Comp_AY|rr[0]~17\);

-- Location: LCCOMB_X38_Y34_N2
\Comp_AY|rr[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[1]~18_combout\ = (\Comp_AY|Add1~2_combout\ & (!\Comp_AY|rr[0]~17\)) # (!\Comp_AY|Add1~2_combout\ & ((\Comp_AY|rr[0]~17\) # (GND)))
-- \Comp_AY|rr[1]~19\ = CARRY((!\Comp_AY|rr[0]~17\) # (!\Comp_AY|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~2_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[0]~17\,
	combout => \Comp_AY|rr[1]~18_combout\,
	cout => \Comp_AY|rr[1]~19\);

-- Location: FF_X38_Y34_N3
\Comp_AY|rr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[1]~18_combout\,
	asdata => \Comp_AY|rr\(0),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(1));

-- Location: LCCOMB_X36_Y34_N6
\Comp_AY|q[1]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[1]~15_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(1)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(1),
	datac => \Comp_AY|rr\(1),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[1]~15_combout\);

-- Location: LCCOMB_X37_Y34_N20
\Comp_AY|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~4_combout\ = ((\Comp_AY|Mux13~0_combout\ $ (\Comp_AY|q[2]~14_combout\ $ (!\Comp_AY|Add1~3\)))) # (GND)
-- \Comp_AY|Add1~5\ = CARRY((\Comp_AY|Mux13~0_combout\ & ((\Comp_AY|q[2]~14_combout\) # (!\Comp_AY|Add1~3\))) # (!\Comp_AY|Mux13~0_combout\ & (\Comp_AY|q[2]~14_combout\ & !\Comp_AY|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Mux13~0_combout\,
	datab => \Comp_AY|q[2]~14_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~3\,
	combout => \Comp_AY|Add1~4_combout\,
	cout => \Comp_AY|Add1~5\);

-- Location: LCCOMB_X38_Y34_N4
\Comp_AY|rr[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[2]~20_combout\ = (\Comp_AY|Add1~4_combout\ & (\Comp_AY|rr[1]~19\ $ (GND))) # (!\Comp_AY|Add1~4_combout\ & (!\Comp_AY|rr[1]~19\ & VCC))
-- \Comp_AY|rr[2]~21\ = CARRY((\Comp_AY|Add1~4_combout\ & !\Comp_AY|rr[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~4_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[1]~19\,
	combout => \Comp_AY|rr[2]~20_combout\,
	cout => \Comp_AY|rr[2]~21\);

-- Location: FF_X38_Y34_N5
\Comp_AY|rr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[2]~20_combout\,
	asdata => \Comp_AY|rr\(1),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(2));

-- Location: LCCOMB_X35_Y34_N2
\Comp_AY|q[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[2]~14_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(2)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(2),
	datac => \Comp_AY|rr\(2),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[2]~14_combout\);

-- Location: LCCOMB_X37_Y34_N22
\Comp_AY|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~6_combout\ = (\Comp_AY|Mux12~0_combout\ & ((\Comp_AY|q[3]~13_combout\ & (\Comp_AY|Add1~5\ & VCC)) # (!\Comp_AY|q[3]~13_combout\ & (!\Comp_AY|Add1~5\)))) # (!\Comp_AY|Mux12~0_combout\ & ((\Comp_AY|q[3]~13_combout\ & (!\Comp_AY|Add1~5\)) # 
-- (!\Comp_AY|q[3]~13_combout\ & ((\Comp_AY|Add1~5\) # (GND)))))
-- \Comp_AY|Add1~7\ = CARRY((\Comp_AY|Mux12~0_combout\ & (!\Comp_AY|q[3]~13_combout\ & !\Comp_AY|Add1~5\)) # (!\Comp_AY|Mux12~0_combout\ & ((!\Comp_AY|Add1~5\) # (!\Comp_AY|q[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Mux12~0_combout\,
	datab => \Comp_AY|q[3]~13_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~5\,
	combout => \Comp_AY|Add1~6_combout\,
	cout => \Comp_AY|Add1~7\);

-- Location: LCCOMB_X38_Y34_N6
\Comp_AY|rr[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[3]~22_combout\ = (\Comp_AY|Add1~6_combout\ & (!\Comp_AY|rr[2]~21\)) # (!\Comp_AY|Add1~6_combout\ & ((\Comp_AY|rr[2]~21\) # (GND)))
-- \Comp_AY|rr[3]~23\ = CARRY((!\Comp_AY|rr[2]~21\) # (!\Comp_AY|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~6_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[2]~21\,
	combout => \Comp_AY|rr[3]~22_combout\,
	cout => \Comp_AY|rr[3]~23\);

-- Location: FF_X38_Y34_N7
\Comp_AY|rr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[3]~22_combout\,
	asdata => \Comp_AY|rr\(2),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(3));

-- Location: LCCOMB_X35_Y34_N14
\Comp_AY|q[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[3]~13_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(3))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(3),
	datab => \Comp_AY|RB\(3),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[3]~13_combout\);

-- Location: LCCOMB_X37_Y34_N24
\Comp_AY|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~8_combout\ = ((\Comp_AY|q[4]~12_combout\ $ (\Comp_AY|Mux11~0_combout\ $ (!\Comp_AY|Add1~7\)))) # (GND)
-- \Comp_AY|Add1~9\ = CARRY((\Comp_AY|q[4]~12_combout\ & ((\Comp_AY|Mux11~0_combout\) # (!\Comp_AY|Add1~7\))) # (!\Comp_AY|q[4]~12_combout\ & (\Comp_AY|Mux11~0_combout\ & !\Comp_AY|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[4]~12_combout\,
	datab => \Comp_AY|Mux11~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~7\,
	combout => \Comp_AY|Add1~8_combout\,
	cout => \Comp_AY|Add1~9\);

-- Location: LCCOMB_X38_Y34_N8
\Comp_AY|rr[4]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[4]~24_combout\ = (\Comp_AY|Add1~8_combout\ & (\Comp_AY|rr[3]~23\ $ (GND))) # (!\Comp_AY|Add1~8_combout\ & (!\Comp_AY|rr[3]~23\ & VCC))
-- \Comp_AY|rr[4]~25\ = CARRY((\Comp_AY|Add1~8_combout\ & !\Comp_AY|rr[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~8_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[3]~23\,
	combout => \Comp_AY|rr[4]~24_combout\,
	cout => \Comp_AY|rr[4]~25\);

-- Location: FF_X38_Y34_N9
\Comp_AY|rr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[4]~24_combout\,
	asdata => \Comp_AY|rr\(3),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(4));

-- Location: LCCOMB_X35_Y34_N18
\Comp_AY|q[4]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[4]~12_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(4))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(4),
	datab => \Comp_AY|RB\(4),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[4]~12_combout\);

-- Location: LCCOMB_X37_Y34_N26
\Comp_AY|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~10_combout\ = (\Comp_AY|q[5]~11_combout\ & ((\Comp_AY|Mux10~0_combout\ & (\Comp_AY|Add1~9\ & VCC)) # (!\Comp_AY|Mux10~0_combout\ & (!\Comp_AY|Add1~9\)))) # (!\Comp_AY|q[5]~11_combout\ & ((\Comp_AY|Mux10~0_combout\ & (!\Comp_AY|Add1~9\)) # 
-- (!\Comp_AY|Mux10~0_combout\ & ((\Comp_AY|Add1~9\) # (GND)))))
-- \Comp_AY|Add1~11\ = CARRY((\Comp_AY|q[5]~11_combout\ & (!\Comp_AY|Mux10~0_combout\ & !\Comp_AY|Add1~9\)) # (!\Comp_AY|q[5]~11_combout\ & ((!\Comp_AY|Add1~9\) # (!\Comp_AY|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[5]~11_combout\,
	datab => \Comp_AY|Mux10~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~9\,
	combout => \Comp_AY|Add1~10_combout\,
	cout => \Comp_AY|Add1~11\);

-- Location: LCCOMB_X38_Y34_N10
\Comp_AY|rr[5]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[5]~26_combout\ = (\Comp_AY|Add1~10_combout\ & (!\Comp_AY|rr[4]~25\)) # (!\Comp_AY|Add1~10_combout\ & ((\Comp_AY|rr[4]~25\) # (GND)))
-- \Comp_AY|rr[5]~27\ = CARRY((!\Comp_AY|rr[4]~25\) # (!\Comp_AY|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~10_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[4]~25\,
	combout => \Comp_AY|rr[5]~26_combout\,
	cout => \Comp_AY|rr[5]~27\);

-- Location: FF_X38_Y34_N11
\Comp_AY|rr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[5]~26_combout\,
	asdata => \Comp_AY|rr\(4),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(5));

-- Location: LCCOMB_X35_Y34_N30
\Comp_AY|q[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[5]~11_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(5))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(5),
	datab => \Comp_AY|RB\(5),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[5]~11_combout\);

-- Location: LCCOMB_X37_Y34_N28
\Comp_AY|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~12_combout\ = ((\Comp_AY|Mux9~0_combout\ $ (\Comp_AY|q[6]~10_combout\ $ (!\Comp_AY|Add1~11\)))) # (GND)
-- \Comp_AY|Add1~13\ = CARRY((\Comp_AY|Mux9~0_combout\ & ((\Comp_AY|q[6]~10_combout\) # (!\Comp_AY|Add1~11\))) # (!\Comp_AY|Mux9~0_combout\ & (\Comp_AY|q[6]~10_combout\ & !\Comp_AY|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Mux9~0_combout\,
	datab => \Comp_AY|q[6]~10_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~11\,
	combout => \Comp_AY|Add1~12_combout\,
	cout => \Comp_AY|Add1~13\);

-- Location: LCCOMB_X38_Y34_N12
\Comp_AY|rr[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[6]~28_combout\ = (\Comp_AY|Add1~12_combout\ & (\Comp_AY|rr[5]~27\ $ (GND))) # (!\Comp_AY|Add1~12_combout\ & (!\Comp_AY|rr[5]~27\ & VCC))
-- \Comp_AY|rr[6]~29\ = CARRY((\Comp_AY|Add1~12_combout\ & !\Comp_AY|rr[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~12_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[5]~27\,
	combout => \Comp_AY|rr[6]~28_combout\,
	cout => \Comp_AY|rr[6]~29\);

-- Location: FF_X38_Y34_N13
\Comp_AY|rr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[6]~28_combout\,
	asdata => \Comp_AY|rr\(5),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(6));

-- Location: LCCOMB_X37_Y34_N14
\Comp_AY|q[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[6]~10_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(6)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datac => \Comp_AY|rr\(6),
	datad => \Comp_AY|state.s1~q\,
	combout => \Comp_AY|q[6]~10_combout\);

-- Location: LCCOMB_X37_Y34_N30
\Comp_AY|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~14_combout\ = (\Comp_AY|q[7]~9_combout\ & ((\Comp_AY|Mux0~0_combout\ & (\Comp_AY|Add1~13\ & VCC)) # (!\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~13\)))) # (!\Comp_AY|q[7]~9_combout\ & ((\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~13\)) # 
-- (!\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|Add1~13\) # (GND)))))
-- \Comp_AY|Add1~15\ = CARRY((\Comp_AY|q[7]~9_combout\ & (!\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~13\)) # (!\Comp_AY|q[7]~9_combout\ & ((!\Comp_AY|Add1~13\) # (!\Comp_AY|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[7]~9_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~13\,
	combout => \Comp_AY|Add1~14_combout\,
	cout => \Comp_AY|Add1~15\);

-- Location: LCCOMB_X38_Y34_N14
\Comp_AY|rr[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[7]~30_combout\ = (\Comp_AY|Add1~14_combout\ & (!\Comp_AY|rr[6]~29\)) # (!\Comp_AY|Add1~14_combout\ & ((\Comp_AY|rr[6]~29\) # (GND)))
-- \Comp_AY|rr[7]~31\ = CARRY((!\Comp_AY|rr[6]~29\) # (!\Comp_AY|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~14_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[6]~29\,
	combout => \Comp_AY|rr[7]~30_combout\,
	cout => \Comp_AY|rr[7]~31\);

-- Location: FF_X38_Y34_N15
\Comp_AY|rr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[7]~30_combout\,
	asdata => \Comp_AY|rr\(6),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(7));

-- Location: LCCOMB_X37_Y34_N10
\Comp_AY|q[7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[7]~9_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(7)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RB\(7),
	datad => \Comp_AY|rr\(7),
	combout => \Comp_AY|q[7]~9_combout\);

-- Location: LCCOMB_X37_Y33_N0
\Comp_AY|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~16_combout\ = ((\Comp_AY|q[8]~8_combout\ $ (\Comp_AY|Mux0~0_combout\ $ (!\Comp_AY|Add1~15\)))) # (GND)
-- \Comp_AY|Add1~17\ = CARRY((\Comp_AY|q[8]~8_combout\ & ((\Comp_AY|Mux0~0_combout\) # (!\Comp_AY|Add1~15\))) # (!\Comp_AY|q[8]~8_combout\ & (\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[8]~8_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~15\,
	combout => \Comp_AY|Add1~16_combout\,
	cout => \Comp_AY|Add1~17\);

-- Location: LCCOMB_X38_Y34_N16
\Comp_AY|rr[8]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[8]~32_combout\ = (\Comp_AY|Add1~16_combout\ & (\Comp_AY|rr[7]~31\ $ (GND))) # (!\Comp_AY|Add1~16_combout\ & (!\Comp_AY|rr[7]~31\ & VCC))
-- \Comp_AY|rr[8]~33\ = CARRY((\Comp_AY|Add1~16_combout\ & !\Comp_AY|rr[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~16_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[7]~31\,
	combout => \Comp_AY|rr[8]~32_combout\,
	cout => \Comp_AY|rr[8]~33\);

-- Location: FF_X38_Y34_N17
\Comp_AY|rr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[8]~32_combout\,
	asdata => \Comp_AY|rr\(7),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(8));

-- Location: LCCOMB_X37_Y33_N20
\Comp_AY|q[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[8]~8_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(8)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(7),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|rr\(8),
	combout => \Comp_AY|q[8]~8_combout\);

-- Location: LCCOMB_X37_Y33_N2
\Comp_AY|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~18_combout\ = (\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|q[9]~7_combout\ & (\Comp_AY|Add1~17\ & VCC)) # (!\Comp_AY|q[9]~7_combout\ & (!\Comp_AY|Add1~17\)))) # (!\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|q[9]~7_combout\ & (!\Comp_AY|Add1~17\)) # 
-- (!\Comp_AY|q[9]~7_combout\ & ((\Comp_AY|Add1~17\) # (GND)))))
-- \Comp_AY|Add1~19\ = CARRY((\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|q[9]~7_combout\ & !\Comp_AY|Add1~17\)) # (!\Comp_AY|Mux0~0_combout\ & ((!\Comp_AY|Add1~17\) # (!\Comp_AY|q[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Mux0~0_combout\,
	datab => \Comp_AY|q[9]~7_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~17\,
	combout => \Comp_AY|Add1~18_combout\,
	cout => \Comp_AY|Add1~19\);

-- Location: LCCOMB_X38_Y34_N18
\Comp_AY|rr[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[9]~34_combout\ = (\Comp_AY|Add1~18_combout\ & (!\Comp_AY|rr[8]~33\)) # (!\Comp_AY|Add1~18_combout\ & ((\Comp_AY|rr[8]~33\) # (GND)))
-- \Comp_AY|rr[9]~35\ = CARRY((!\Comp_AY|rr[8]~33\) # (!\Comp_AY|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|Add1~18_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[8]~33\,
	combout => \Comp_AY|rr[9]~34_combout\,
	cout => \Comp_AY|rr[9]~35\);

-- Location: FF_X38_Y34_N19
\Comp_AY|rr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[9]~34_combout\,
	asdata => \Comp_AY|rr\(8),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(9));

-- Location: LCCOMB_X36_Y34_N18
\data_in_OP~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~1_combout\ = (\state.s5~q\ & (\Comp_AY|rr\(9))) # (!\state.s5~q\ & ((\Comp_AY|rr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(9),
	datac => \Comp_AY|rr\(1),
	datad => \state.s5~q\,
	combout => \data_in_OP~1_combout\);

-- Location: LCCOMB_X37_Y33_N24
\Comp_AY|q[10]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[10]~6_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(10))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|rr\(10),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|q[10]~6_combout\);

-- Location: LCCOMB_X37_Y33_N4
\Comp_AY|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~20_combout\ = ((\Comp_AY|q[10]~6_combout\ $ (\Comp_AY|Mux0~0_combout\ $ (!\Comp_AY|Add1~19\)))) # (GND)
-- \Comp_AY|Add1~21\ = CARRY((\Comp_AY|q[10]~6_combout\ & ((\Comp_AY|Mux0~0_combout\) # (!\Comp_AY|Add1~19\))) # (!\Comp_AY|q[10]~6_combout\ & (\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[10]~6_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~19\,
	combout => \Comp_AY|Add1~20_combout\,
	cout => \Comp_AY|Add1~21\);

-- Location: LCCOMB_X38_Y34_N20
\Comp_AY|rr[10]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[10]~36_combout\ = (\Comp_AY|Add1~20_combout\ & (\Comp_AY|rr[9]~35\ $ (GND))) # (!\Comp_AY|Add1~20_combout\ & (!\Comp_AY|rr[9]~35\ & VCC))
-- \Comp_AY|rr[10]~37\ = CARRY((\Comp_AY|Add1~20_combout\ & !\Comp_AY|rr[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~20_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[9]~35\,
	combout => \Comp_AY|rr[10]~36_combout\,
	cout => \Comp_AY|rr[10]~37\);

-- Location: FF_X38_Y34_N21
\Comp_AY|rr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[10]~36_combout\,
	asdata => \Comp_AY|rr\(9),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(10));

-- Location: LCCOMB_X35_Y34_N10
\data_in_OP~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~2_combout\ = (\state.s5~q\ & ((\Comp_AY|rr\(10)))) # (!\state.s5~q\ & (\Comp_AY|rr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|rr\(2),
	datac => \state.s5~q\,
	datad => \Comp_AY|rr\(10),
	combout => \data_in_OP~2_combout\);

-- Location: LCCOMB_X37_Y33_N22
\Comp_AY|q[11]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[11]~5_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(11))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|rr\(11),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|q[11]~5_combout\);

-- Location: LCCOMB_X37_Y33_N6
\Comp_AY|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~22_combout\ = (\Comp_AY|q[11]~5_combout\ & ((\Comp_AY|Mux0~0_combout\ & (\Comp_AY|Add1~21\ & VCC)) # (!\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~21\)))) # (!\Comp_AY|q[11]~5_combout\ & ((\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~21\)) # 
-- (!\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|Add1~21\) # (GND)))))
-- \Comp_AY|Add1~23\ = CARRY((\Comp_AY|q[11]~5_combout\ & (!\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~21\)) # (!\Comp_AY|q[11]~5_combout\ & ((!\Comp_AY|Add1~21\) # (!\Comp_AY|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[11]~5_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~21\,
	combout => \Comp_AY|Add1~22_combout\,
	cout => \Comp_AY|Add1~23\);

-- Location: LCCOMB_X38_Y34_N22
\Comp_AY|rr[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[11]~38_combout\ = (\Comp_AY|Add1~22_combout\ & (!\Comp_AY|rr[10]~37\)) # (!\Comp_AY|Add1~22_combout\ & ((\Comp_AY|rr[10]~37\) # (GND)))
-- \Comp_AY|rr[11]~39\ = CARRY((!\Comp_AY|rr[10]~37\) # (!\Comp_AY|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~22_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[10]~37\,
	combout => \Comp_AY|rr[11]~38_combout\,
	cout => \Comp_AY|rr[11]~39\);

-- Location: FF_X38_Y34_N23
\Comp_AY|rr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[11]~38_combout\,
	asdata => \Comp_AY|rr\(10),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(11));

-- Location: LCCOMB_X35_Y34_N4
\data_in_OP~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~3_combout\ = (\state.s5~q\ & ((\Comp_AY|rr\(11)))) # (!\state.s5~q\ & (\Comp_AY|rr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(3),
	datab => \Comp_AY|rr\(11),
	datac => \state.s5~q\,
	combout => \data_in_OP~3_combout\);

-- Location: LCCOMB_X37_Y33_N28
\Comp_AY|q[12]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[12]~4_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(12)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(7),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|rr\(12),
	combout => \Comp_AY|q[12]~4_combout\);

-- Location: LCCOMB_X37_Y33_N8
\Comp_AY|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~24_combout\ = ((\Comp_AY|q[12]~4_combout\ $ (\Comp_AY|Mux0~0_combout\ $ (!\Comp_AY|Add1~23\)))) # (GND)
-- \Comp_AY|Add1~25\ = CARRY((\Comp_AY|q[12]~4_combout\ & ((\Comp_AY|Mux0~0_combout\) # (!\Comp_AY|Add1~23\))) # (!\Comp_AY|q[12]~4_combout\ & (\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[12]~4_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~23\,
	combout => \Comp_AY|Add1~24_combout\,
	cout => \Comp_AY|Add1~25\);

-- Location: LCCOMB_X38_Y34_N24
\Comp_AY|rr[12]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[12]~40_combout\ = (\Comp_AY|Add1~24_combout\ & (\Comp_AY|rr[11]~39\ $ (GND))) # (!\Comp_AY|Add1~24_combout\ & (!\Comp_AY|rr[11]~39\ & VCC))
-- \Comp_AY|rr[12]~41\ = CARRY((\Comp_AY|Add1~24_combout\ & !\Comp_AY|rr[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~24_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[11]~39\,
	combout => \Comp_AY|rr[12]~40_combout\,
	cout => \Comp_AY|rr[12]~41\);

-- Location: FF_X38_Y34_N25
\Comp_AY|rr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[12]~40_combout\,
	asdata => \Comp_AY|rr\(11),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(12));

-- Location: LCCOMB_X36_Y34_N28
\data_in_OP~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~4_combout\ = (\state.s5~q\ & (\Comp_AY|rr\(12))) # (!\state.s5~q\ & ((\Comp_AY|rr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Comp_AY|rr\(12),
	datad => \Comp_AY|rr\(4),
	combout => \data_in_OP~4_combout\);

-- Location: LCCOMB_X37_Y33_N26
\Comp_AY|q[13]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[13]~3_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(13)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|RB\(7),
	datac => \Comp_AY|state.s1~q\,
	datad => \Comp_AY|rr\(13),
	combout => \Comp_AY|q[13]~3_combout\);

-- Location: LCCOMB_X37_Y33_N10
\Comp_AY|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~26_combout\ = (\Comp_AY|q[13]~3_combout\ & ((\Comp_AY|Mux0~0_combout\ & (\Comp_AY|Add1~25\ & VCC)) # (!\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~25\)))) # (!\Comp_AY|q[13]~3_combout\ & ((\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~25\)) # 
-- (!\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|Add1~25\) # (GND)))))
-- \Comp_AY|Add1~27\ = CARRY((\Comp_AY|q[13]~3_combout\ & (!\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~25\)) # (!\Comp_AY|q[13]~3_combout\ & ((!\Comp_AY|Add1~25\) # (!\Comp_AY|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[13]~3_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~25\,
	combout => \Comp_AY|Add1~26_combout\,
	cout => \Comp_AY|Add1~27\);

-- Location: LCCOMB_X38_Y34_N26
\Comp_AY|rr[13]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[13]~42_combout\ = (\Comp_AY|Add1~26_combout\ & (!\Comp_AY|rr[12]~41\)) # (!\Comp_AY|Add1~26_combout\ & ((\Comp_AY|rr[12]~41\) # (GND)))
-- \Comp_AY|rr[13]~43\ = CARRY((!\Comp_AY|rr[12]~41\) # (!\Comp_AY|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~26_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[12]~41\,
	combout => \Comp_AY|rr[13]~42_combout\,
	cout => \Comp_AY|rr[13]~43\);

-- Location: FF_X38_Y34_N27
\Comp_AY|rr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[13]~42_combout\,
	asdata => \Comp_AY|rr\(12),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(13));

-- Location: LCCOMB_X36_Y34_N22
\data_in_OP~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~5_combout\ = (\state.s5~q\ & (\Comp_AY|rr\(13))) # (!\state.s5~q\ & ((\Comp_AY|rr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Comp_AY|rr\(13),
	datad => \Comp_AY|rr\(5),
	combout => \data_in_OP~5_combout\);

-- Location: LCCOMB_X36_Y34_N16
\Comp_AY|q[14]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[14]~2_combout\ = (\Comp_AY|state.s1~q\ & (\Comp_AY|rr\(14))) # (!\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|rr\(14),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|q[14]~2_combout\);

-- Location: LCCOMB_X37_Y33_N12
\Comp_AY|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~28_combout\ = ((\Comp_AY|q[14]~2_combout\ $ (\Comp_AY|Mux0~0_combout\ $ (!\Comp_AY|Add1~27\)))) # (GND)
-- \Comp_AY|Add1~29\ = CARRY((\Comp_AY|q[14]~2_combout\ & ((\Comp_AY|Mux0~0_combout\) # (!\Comp_AY|Add1~27\))) # (!\Comp_AY|q[14]~2_combout\ & (\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[14]~2_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~27\,
	combout => \Comp_AY|Add1~28_combout\,
	cout => \Comp_AY|Add1~29\);

-- Location: LCCOMB_X38_Y34_N28
\Comp_AY|rr[14]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[14]~44_combout\ = (\Comp_AY|Add1~28_combout\ & (\Comp_AY|rr[13]~43\ $ (GND))) # (!\Comp_AY|Add1~28_combout\ & (!\Comp_AY|rr[13]~43\ & VCC))
-- \Comp_AY|rr[14]~45\ = CARRY((\Comp_AY|Add1~28_combout\ & !\Comp_AY|rr[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|Add1~28_combout\,
	datad => VCC,
	cin => \Comp_AY|rr[13]~43\,
	combout => \Comp_AY|rr[14]~44_combout\,
	cout => \Comp_AY|rr[14]~45\);

-- Location: FF_X38_Y34_N29
\Comp_AY|rr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[14]~44_combout\,
	asdata => \Comp_AY|rr\(13),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(14));

-- Location: LCCOMB_X36_Y34_N24
\data_in_OP~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~6_combout\ = (\state.s5~q\ & (\Comp_AY|rr\(14))) # (!\state.s5~q\ & ((\Comp_AY|rr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|rr\(14),
	datac => \Comp_AY|rr\(6),
	datad => \state.s5~q\,
	combout => \data_in_OP~6_combout\);

-- Location: LCCOMB_X36_Y34_N26
\data_in_OP~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~7_combout\ = (\state.s5~q\ & ((\Comp_AY|rr\(15)))) # (!\state.s5~q\ & (\Comp_AY|rr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Comp_AY|rr\(7),
	datad => \Comp_AY|rr\(15),
	combout => \data_in_OP~7_combout\);

-- Location: M9K_X33_Y14_N0
\Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"003FC00FE003F400FC003EC00FA003E400F8003DC00F6003D400F4003CC00F2003C400F0003BC00EE003B400EC003AC00EA003A400E80039C00E60039400E400",
	mem_init1 => X"38C00E20038400E00037C00DE0037400DC0036C00DA0036400D80035C00D60035400D40034C00D20034400D00033C00CE0033400CC0032C00CA0032400C80031C00C60031400C40030C00C20030400C0002FC00BE002F400BC002EC00BA002E400B8002DC00B6002D400B4002CC00B2002C400B0002BC00AE002B400AC002AC00AA002A400A80029C00A60029400A40028C00A20028400A00027C009E00274009C0026C009A0026400980025C00960025400940024C00920024400900023C008E00234008C0022C008A0022400880021C00860021400840020C0082002040080001FC007E001F4007C001EC007A001E40078001DC0076001D40074001CC00720",
	mem_init0 => X"01C40070001BC006E001B4006C001AC006A001A400680019C00660019400640018C00620018400600017C005E00174005C0016C005A0016400580015C00560015400540014C00520014400500013C004E00134004C0012C004A0012400480011C00460011400440010C0042001040040000FC003E000F4003C000EC003A000E40038000DC0036000D40034000CC0032000C40030000BC002E000B4002C000AC002A000A400280009C00260009400240008C00220008400200007C001E00074001C0006C001A0006400180005C00160005400140004C00120004400100003C000E00034000C0002C000A0002400080033C00CE0033400CC0032C00CA001940064",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory:Comp_OP|altsyncram:altsyncram_component|altsyncram_lnt3:auto_generated|altsyncram_f6r2:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en_OP~0_combout\,
	portare => VCC,
	portbwe => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	portadatain => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: FF_X51_Y19_N29
\RA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[6]~21_combout\,
	asdata => \IA[6]~12_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[6]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N4
\address_OP~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~22_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[6]~12_combout\))) # (!\state.s2~q\ & (\RA[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \RA[6]~reg0_q\,
	datac => \IA[6]~12_combout\,
	datad => \incr_CK~0_combout\,
	combout => \address_OP~22_combout\);

-- Location: LCCOMB_X51_Y15_N4
\address_OP~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~30_combout\ = (\address_OP~22_combout\) # ((\CK[6]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s1~q\,
	datac => \CK[6]~reg0_q\,
	datad => \address_OP~22_combout\,
	combout => \address_OP~30_combout\);

-- Location: FF_X51_Y19_N27
\RA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[5]~19_combout\,
	asdata => \IA[5]~10_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[5]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N10
\address_OP~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~21_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[5]~10_combout\))) # (!\state.s2~q\ & (\RA[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[5]~reg0_q\,
	datab => \incr_CK~0_combout\,
	datac => \IA[5]~10_combout\,
	datad => \state.s2~q\,
	combout => \address_OP~21_combout\);

-- Location: LCCOMB_X51_Y15_N26
\address_OP~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~29_combout\ = (\address_OP~21_combout\) # ((\CK[5]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \CK[5]~reg0_q\,
	datac => \state.s1~q\,
	datad => \address_OP~21_combout\,
	combout => \address_OP~29_combout\);

-- Location: FF_X51_Y19_N25
\RA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[4]~17_combout\,
	asdata => \IA[4]~8_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[4]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N0
\address_OP~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~20_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[4]~8_combout\))) # (!\state.s2~q\ & (\RA[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \RA[4]~reg0_q\,
	datac => \IA[4]~8_combout\,
	datad => \incr_CK~0_combout\,
	combout => \address_OP~20_combout\);

-- Location: LCCOMB_X51_Y15_N10
\address_OP~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~28_combout\ = (\address_OP~20_combout\) # ((\CK[4]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \CK[4]~reg0_q\,
	datac => \state.s1~q\,
	datad => \address_OP~20_combout\,
	combout => \address_OP~28_combout\);

-- Location: LCCOMB_X51_Y19_N6
\address_OP~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~19_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & (\IA[3]~6_combout\)) # (!\state.s2~q\ & ((\RA[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incr_CK~0_combout\,
	datab => \IA[3]~6_combout\,
	datac => \RA[3]~reg0_q\,
	datad => \state.s2~q\,
	combout => \address_OP~19_combout\);

-- Location: LCCOMB_X51_Y15_N0
\address_OP~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~27_combout\ = (\address_OP~19_combout\) # ((\CK[3]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \CK[3]~reg0_q\,
	datac => \state.s1~q\,
	datad => \address_OP~19_combout\,
	combout => \address_OP~27_combout\);

-- Location: FF_X51_Y19_N21
\RA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[2]~13_combout\,
	asdata => \IA[2]~4_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[2]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N12
\address_OP~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~18_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[2]~4_combout\))) # (!\state.s2~q\ & (\RA[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \RA[2]~reg0_q\,
	datac => \IA[2]~4_combout\,
	datad => \incr_CK~0_combout\,
	combout => \address_OP~18_combout\);

-- Location: LCCOMB_X51_Y15_N30
\address_OP~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~26_combout\ = (\address_OP~18_combout\) # ((\CK[2]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s1~q\,
	datac => \address_OP~18_combout\,
	datad => \CK[2]~reg0_q\,
	combout => \address_OP~26_combout\);

-- Location: FF_X51_Y19_N19
\RA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RA[1]~11_combout\,
	asdata => \IA[1]~2_combout\,
	sload => \state.s2~q\,
	ena => \RA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RA[1]~reg0_q\);

-- Location: LCCOMB_X51_Y19_N2
\address_OP~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~17_combout\ = (\incr_CK~0_combout\ & ((\state.s2~q\ & ((\IA[1]~2_combout\))) # (!\state.s2~q\ & (\RA[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \RA[1]~reg0_q\,
	datac => \IA[1]~2_combout\,
	datad => \incr_CK~0_combout\,
	combout => \address_OP~17_combout\);

-- Location: LCCOMB_X51_Y15_N28
\address_OP~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_OP~25_combout\ = (\address_OP~17_combout\) # ((\CK[1]~reg0_q\ & ((\state.s1~q\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK[1]~reg0_q\,
	datab => \address_OP~17_combout\,
	datac => \state.s1~q\,
	datad => \state.s0~q\,
	combout => \address_OP~25_combout\);

-- Location: FF_X36_Y34_N5
\Comp_AY|RA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	sload => VCC,
	ena => \Comp_AY|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|RA\(7));

-- Location: LCCOMB_X36_Y34_N4
\Comp_AY|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Mux0~0_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|RB\(6) & (\Comp_AY|RA\(7) & !\Comp_AY|RB\(7))) # (!\Comp_AY|RB\(6) & (!\Comp_AY|RA\(7) & \Comp_AY|RB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|RB\(6),
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RA\(7),
	datad => \Comp_AY|RB\(7),
	combout => \Comp_AY|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y33_N14
\Comp_AY|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~30_combout\ = (\Comp_AY|q[15]~1_combout\ & ((\Comp_AY|Mux0~0_combout\ & (\Comp_AY|Add1~29\ & VCC)) # (!\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~29\)))) # (!\Comp_AY|q[15]~1_combout\ & ((\Comp_AY|Mux0~0_combout\ & (!\Comp_AY|Add1~29\)) # 
-- (!\Comp_AY|Mux0~0_combout\ & ((\Comp_AY|Add1~29\) # (GND)))))
-- \Comp_AY|Add1~31\ = CARRY((\Comp_AY|q[15]~1_combout\ & (!\Comp_AY|Mux0~0_combout\ & !\Comp_AY|Add1~29\)) # (!\Comp_AY|q[15]~1_combout\ & ((!\Comp_AY|Add1~29\) # (!\Comp_AY|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_AY|q[15]~1_combout\,
	datab => \Comp_AY|Mux0~0_combout\,
	datad => VCC,
	cin => \Comp_AY|Add1~29\,
	combout => \Comp_AY|Add1~30_combout\,
	cout => \Comp_AY|Add1~31\);

-- Location: LCCOMB_X38_Y34_N30
\Comp_AY|rr[15]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|rr[15]~46_combout\ = \Comp_AY|rr[14]~45\ $ (\Comp_AY|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Comp_AY|Add1~30_combout\,
	cin => \Comp_AY|rr[14]~45\,
	combout => \Comp_AY|rr[15]~46_combout\);

-- Location: FF_X38_Y34_N31
\Comp_AY|rr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[15]~46_combout\,
	asdata => \Comp_AY|rr\(14),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(15));

-- Location: LCCOMB_X36_Y34_N14
\Comp_AY|q[15]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|q[15]~1_combout\ = (\Comp_AY|state.s1~q\ & ((\Comp_AY|rr\(15)))) # (!\Comp_AY|state.s1~q\ & (\Comp_AY|RB\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comp_AY|state.s1~q\,
	datac => \Comp_AY|RB\(7),
	datad => \Comp_AY|rr\(15),
	combout => \Comp_AY|q[15]~1_combout\);

-- Location: LCCOMB_X37_Y33_N16
\Comp_AY|Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Comp_AY|Add1~32_combout\ = !\Comp_AY|Add1~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Comp_AY|Add1~31\,
	combout => \Comp_AY|Add1~32_combout\);

-- Location: FF_X38_Y34_N1
\Comp_AY|rr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Comp_AY|rr[0]~16_combout\,
	asdata => \Comp_AY|rr\(15),
	sclr => \Comp_AY|Selector1~0_combout\,
	sload => \Comp_AY|ALT_INV_state.s1~q\,
	ena => \Comp_AY|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_AY|rr\(0));

-- Location: LCCOMB_X36_Y34_N0
\data_in_OP~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_in_OP~0_combout\ = (\state.s5~q\ & ((\Comp_AY|rr\(8)))) # (!\state.s5~q\ & (\Comp_AY|rr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \Comp_AY|rr\(0),
	datad => \Comp_AY|rr\(8),
	combout => \data_in_OP~0_combout\);

-- Location: LCCOMB_X32_Y14_N30
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: LCCOMB_X32_Y14_N14
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\);

-- Location: LCCOMB_X32_Y14_N8
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\);

-- Location: FF_X32_Y14_N15
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~8_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X32_Y14_N28
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\);

-- Location: FF_X32_Y14_N29
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~7_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X32_Y14_N10
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	datac => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\);

-- Location: FF_X32_Y14_N11
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~6_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X32_Y14_N24
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\);

-- Location: FF_X32_Y14_N25
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~5_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X32_Y14_N22
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\);

-- Location: FF_X32_Y14_N23
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~4_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X32_Y14_N20
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	datac => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\);

-- Location: FF_X32_Y14_N21
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~3_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X32_Y14_N18
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datab => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\);

-- Location: FF_X32_Y14_N19
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~2_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LCCOMB_X32_Y14_N16
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\);

-- Location: FF_X32_Y14_N17
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~0_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LCCOMB_X32_Y17_N12
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\);

-- Location: LCCOMB_X29_Y18_N12
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~8\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\);

-- Location: LCCOMB_X30_Y18_N12
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCCOMB_X31_Y14_N22
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\);

-- Location: LCCOMB_X30_Y18_N0
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\);

-- Location: FF_X29_Y18_N13
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~9_combout\,
	sclr => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCCOMB_X29_Y18_N14
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]~10\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\);

-- Location: FF_X29_Y18_N15
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~11_combout\,
	sclr => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCCOMB_X29_Y18_N16
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]~12\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	cout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\);

-- Location: FF_X29_Y18_N17
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~15_combout\,
	sclr => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X29_Y18_N18
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]~16\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\);

-- Location: FF_X29_Y18_N19
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~17_combout\,
	sclr => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCCOMB_X29_Y18_N20
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~13_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~13_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\);

-- Location: FF_X29_Y18_N11
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]~7_combout\,
	sclr => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~19_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCCOMB_X29_Y18_N0
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X29_Y18_N26
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\);

-- Location: LCCOMB_X29_Y18_N2
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~10_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X30_Y18_N4
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\);

-- Location: LCCOMB_X30_Y18_N6
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\);

-- Location: FF_X30_Y18_N5
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~12_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X29_Y18_N8
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X29_Y18_N6
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X29_Y18_N30
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X30_Y18_N26
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: FF_X30_Y18_N27
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X30_Y18_N2
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: FF_X30_Y18_N3
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X30_Y18_N8
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: FF_X30_Y18_N9
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	ena => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X32_Y17_N30
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\,
	datab => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\);

-- Location: LCCOMB_X32_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X29_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X29_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X29_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCCOMB_X27_Y17_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\);

-- Location: LCCOMB_X27_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\);

-- Location: LCCOMB_X27_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\);

-- Location: LCCOMB_X29_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\);

-- Location: FF_X27_Y17_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X27_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: FF_X27_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X27_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: FF_X27_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCCOMB_X27_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: FF_X27_Y17_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X27_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: FF_X27_Y17_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X27_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~7\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~7_combout\);

-- Location: LCCOMB_X28_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\);

-- Location: LCCOMB_X27_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\);

-- Location: LCCOMB_X27_Y17_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\);

-- Location: LCCOMB_X28_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X28_Y17_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X28_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X28_Y17_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X28_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X28_Y17_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X28_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X28_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X29_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X28_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X28_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCCOMB_X29_Y17_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\);

-- Location: LCCOMB_X27_Y17_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LCCOMB_X27_Y17_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LCCOMB_X28_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: FF_X28_Y17_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X29_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X28_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X28_Y17_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X27_Y17_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X27_Y17_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\);

-- Location: LCCOMB_X28_Y17_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X29_Y17_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X27_Y17_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LCCOMB_X27_Y17_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LCCOMB_X28_Y17_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\);

-- Location: FF_X28_Y17_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X29_Y17_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X29_Y17_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X29_Y17_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X29_Y17_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: FF_X29_Y17_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: FF_X29_Y17_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: FF_X29_Y17_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X29_Y17_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X29_Y17_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\);

-- Location: LCCOMB_X1_Y24_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: CLKCTRL_G3
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X31_Y16_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X31_Y16_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X31_Y14_N28
\Comp_OP|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \Comp_OP|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LCCOMB_X51_Y23_N0
\RK[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RK[0]~reg0feeder_combout\ = \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(0),
	combout => \RK[0]~reg0feeder_combout\);

-- Location: FF_X51_Y23_N1
\RK[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RK[0]~reg0feeder_combout\,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[0]~reg0_q\);

-- Location: LCCOMB_X51_Y23_N2
\RK[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RK[1]~reg0feeder_combout\ = \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(1),
	combout => \RK[1]~reg0feeder_combout\);

-- Location: FF_X51_Y23_N3
\RK[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RK[1]~reg0feeder_combout\,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[1]~reg0_q\);

-- Location: LCCOMB_X51_Y23_N4
\RK[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RK[2]~reg0feeder_combout\ = \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(2),
	combout => \RK[2]~reg0feeder_combout\);

-- Location: FF_X51_Y23_N5
\RK[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RK[2]~reg0feeder_combout\,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[2]~reg0_q\);

-- Location: FF_X51_Y23_N31
\RK[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(3),
	sload => VCC,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[3]~reg0_q\);

-- Location: FF_X51_Y23_N25
\RK[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(4),
	sload => VCC,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[4]~reg0_q\);

-- Location: LCCOMB_X51_Y23_N26
\RK[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RK[5]~reg0feeder_combout\ = \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(5),
	combout => \RK[5]~reg0feeder_combout\);

-- Location: FF_X51_Y23_N27
\RK[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RK[5]~reg0feeder_combout\,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[5]~reg0_q\);

-- Location: LCCOMB_X51_Y23_N28
\RK[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RK[6]~reg0feeder_combout\ = \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(6),
	combout => \RK[6]~reg0feeder_combout\);

-- Location: FF_X51_Y23_N29
\RK[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RK[6]~reg0feeder_combout\,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[6]~reg0_q\);

-- Location: FF_X51_Y23_N23
\RK[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Comp_OP|altsyncram_component|auto_generated|altsyncram1|q_a\(7),
	sload => VCC,
	ena => \ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RK[7]~reg0_q\);

-- Location: LCCOMB_X51_Y16_N10
\s_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_out~0_combout\ = (\state.s1~q\) # ((!\state.s2~q\ & (!\state.s4~q\ & \state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \state.s4~q\,
	datac => \state.s1~q\,
	datad => \state.s5~q\,
	combout => \s_out~0_combout\);

-- Location: LCCOMB_X51_Y16_N28
\s_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_out~1_combout\ = (\state.s0~q\ & ((\state.s3~q\) # (\s_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datac => \state.s0~q\,
	datad => \s_out~0_combout\,
	combout => \s_out~1_combout\);

-- Location: LCCOMB_X51_Y16_N14
\s_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_out~2_combout\ = (!\state.s4~q\ & (!\state.s1~q\ & !\state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s4~q\,
	datac => \state.s1~q\,
	datad => \state.s5~q\,
	combout => \s_out~2_combout\);

-- Location: LCCOMB_X51_Y16_N24
\s_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_out~3_combout\ = (\state.s0~q\ & ((\state.s3~q\) # ((\s_out~2_combout\) # (\state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \s_out~2_combout\,
	datac => \state.s0~q\,
	datad => \state.s2~q\,
	combout => \s_out~3_combout\);

-- Location: LCCOMB_X51_Y16_N18
\s_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_out~4_combout\ = (\state.s2~q\) # ((\state.s1~q\) # ((\state.s3~q\) # (!\state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \state.s1~q\,
	datac => \state.s0~q\,
	datad => \state.s3~q\,
	combout => \s_out~4_combout\);

-- Location: LCCOMB_X48_Y28_N0
\auto_hub|~GND\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X31_Y16_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X32_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneiv_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);
END structure;



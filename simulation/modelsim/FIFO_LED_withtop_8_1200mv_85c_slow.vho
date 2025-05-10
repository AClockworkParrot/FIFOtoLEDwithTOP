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

-- DATE "05/10/2025 14:00:35"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	CLK : IN std_logic;
	RXF : IN std_logic;
	TXE : IN std_logic;
	DATA : INOUT std_logic_vector(7 DOWNTO 0);
	RD : OUT std_logic;
	WR : OUT std_logic;
	LED : OUT std_logic;
	RX_valid : OUT std_logic
	);
END top;

-- Design Ports Information
-- TXE	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_valid	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RXF	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RXF : std_logic;
SIGNAL ww_TXE : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_RX_valid : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TXE~input_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \RD~output_o\ : std_logic;
SIGNAL \WR~output_o\ : std_logic;
SIGNAL \LED~output_o\ : std_logic;
SIGNAL \RX_valid~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RXF~input_o\ : std_logic;
SIGNAL \C0|counter[0]~1_combout\ : std_logic;
SIGNAL \C0|counter[1]~0_combout\ : std_logic;
SIGNAL \C0|RX_valid~0_combout\ : std_logic;
SIGNAL \C0|RX_valid~q\ : std_logic;
SIGNAL \C0|RD~0_combout\ : std_logic;
SIGNAL \C0|RD~1_combout\ : std_logic;
SIGNAL \C0|RD~q\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \C1|data_rx[4]~feeder_combout\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \C1|data_rx[0]~feeder_combout\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \C1|data_rx[2]~feeder_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \C1|data_rx[5]~feeder_combout\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \C1|data_rx[6]~feeder_combout\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \C1|led_state~0_combout\ : std_logic;
SIGNAL \C1|led_state~1_combout\ : std_logic;
SIGNAL \C1|led_state~q\ : std_logic;
SIGNAL \C0|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|data_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C0|ALT_INV_RD~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RXF <= RXF;
ww_TXE <= TXE;
RD <= ww_RD;
WR <= ww_WR;
LED <= ww_LED;
RX_valid <= ww_RX_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\C0|ALT_INV_RD~q\ <= NOT \C0|RD~q\;

-- Location: IOOBUF_X7_Y24_N9
\DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\RD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|ALT_INV_RD~q\,
	devoe => ww_devoe,
	o => \RD~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\WR~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WR~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|led_state~q\,
	devoe => ww_devoe,
	o => \LED~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\RX_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|RX_valid~q\,
	devoe => ww_devoe,
	o => \RX_valid~output_o\);

-- Location: IOIBUF_X34_Y12_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X34_Y18_N15
\RXF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RXF,
	o => \RXF~input_o\);

-- Location: LCCOMB_X13_Y21_N16
\C0|counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C0|counter[0]~1_combout\ = (\C0|RX_valid~q\ & (\C0|counter\(1) & (!\C0|counter\(0)))) # (!\C0|RX_valid~q\ & (((\C0|counter\(0) & \RXF~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|counter\(1),
	datab => \C0|RX_valid~q\,
	datac => \C0|counter\(0),
	datad => \RXF~input_o\,
	combout => \C0|counter[0]~1_combout\);

-- Location: FF_X13_Y21_N17
\C0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|counter\(0));

-- Location: LCCOMB_X13_Y21_N22
\C0|counter[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C0|counter[1]~0_combout\ = (\C0|RX_valid~q\ & (((\C0|counter\(1) & \C0|counter\(0))))) # (!\C0|RX_valid~q\ & (((\C0|counter\(1))) # (!\RXF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RXF~input_o\,
	datab => \C0|RX_valid~q\,
	datac => \C0|counter\(1),
	datad => \C0|counter\(0),
	combout => \C0|counter[1]~0_combout\);

-- Location: FF_X13_Y21_N23
\C0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|counter\(1));

-- Location: LCCOMB_X13_Y21_N8
\C0|RX_valid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C0|RX_valid~0_combout\ = (\C0|RX_valid~q\ & ((\C0|counter\(1)) # ((\C0|counter\(0))))) # (!\C0|RX_valid~q\ & (((!\RXF~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|counter\(1),
	datab => \RXF~input_o\,
	datac => \C0|RX_valid~q\,
	datad => \C0|counter\(0),
	combout => \C0|RX_valid~0_combout\);

-- Location: FF_X13_Y21_N9
\C0|RX_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|RX_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|RX_valid~q\);

-- Location: LCCOMB_X13_Y21_N6
\C0|RD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C0|RD~0_combout\ = (!\C0|counter\(1) & (\C0|RX_valid~q\ & !\C0|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|counter\(1),
	datac => \C0|RX_valid~q\,
	datad => \C0|counter\(0),
	combout => \C0|RD~0_combout\);

-- Location: LCCOMB_X13_Y21_N20
\C0|RD~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C0|RD~1_combout\ = (!\C0|RD~0_combout\ & ((\C0|RD~q\) # ((!\RXF~input_o\ & !\C0|RX_valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RXF~input_o\,
	datab => \C0|RX_valid~q\,
	datac => \C0|RD~q\,
	datad => \C0|RD~0_combout\,
	combout => \C0|RD~1_combout\);

-- Location: FF_X13_Y21_N21
\C0|RD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|RD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|RD~q\);

-- Location: IOIBUF_X13_Y24_N22
\DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: LCCOMB_X13_Y21_N28
\C1|data_rx[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|data_rx[4]~feeder_combout\ = \DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[4]~input_o\,
	combout => \C1|data_rx[4]~feeder_combout\);

-- Location: FF_X13_Y21_N29
\C1|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|data_rx[4]~feeder_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(4));

-- Location: IOIBUF_X7_Y24_N1
\DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: FF_X13_Y21_N13
\C1|data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[1]~input_o\,
	sload => VCC,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(1));

-- Location: IOIBUF_X7_Y24_N8
\DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

-- Location: LCCOMB_X13_Y21_N14
\C1|data_rx[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|data_rx[0]~feeder_combout\ = \DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[0]~input_o\,
	combout => \C1|data_rx[0]~feeder_combout\);

-- Location: FF_X13_Y21_N15
\C1|data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|data_rx[0]~feeder_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(0));

-- Location: IOIBUF_X11_Y24_N15
\DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: FF_X13_Y21_N25
\C1|data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[3]~input_o\,
	sload => VCC,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(3));

-- Location: IOIBUF_X9_Y24_N8
\DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: LCCOMB_X13_Y21_N10
\C1|data_rx[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|data_rx[2]~feeder_combout\ = \DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[2]~input_o\,
	combout => \C1|data_rx[2]~feeder_combout\);

-- Location: FF_X13_Y21_N11
\C1|data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|data_rx[2]~feeder_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(2));

-- Location: LCCOMB_X13_Y21_N24
\C1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (\C1|data_rx\(1) & (\C1|data_rx\(0) & (\C1|data_rx\(3) & \C1|data_rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|data_rx\(1),
	datab => \C1|data_rx\(0),
	datac => \C1|data_rx\(3),
	datad => \C1|data_rx\(2),
	combout => \C1|Equal0~0_combout\);

-- Location: IOIBUF_X13_Y24_N15
\DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: LCCOMB_X13_Y21_N30
\C1|data_rx[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|data_rx[5]~feeder_combout\ = \DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[5]~input_o\,
	combout => \C1|data_rx[5]~feeder_combout\);

-- Location: FF_X13_Y21_N31
\C1|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|data_rx[5]~feeder_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(5));

-- Location: IOIBUF_X16_Y24_N22
\DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

-- Location: LCCOMB_X13_Y21_N0
\C1|data_rx[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|data_rx[6]~feeder_combout\ = \DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA[6]~input_o\,
	combout => \C1|data_rx[6]~feeder_combout\);

-- Location: FF_X13_Y21_N1
\C1|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|data_rx[6]~feeder_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(6));

-- Location: IOIBUF_X16_Y24_N15
\DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: FF_X13_Y21_N3
\C1|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DATA[7]~input_o\,
	sload => VCC,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|data_rx\(7));

-- Location: LCCOMB_X13_Y21_N2
\C1|led_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|led_state~0_combout\ = (\C1|data_rx\(5) & ((\C1|led_state~q\) # ((\C1|data_rx\(6) & \C1|data_rx\(7))))) # (!\C1|data_rx\(5) & (\C1|led_state~q\ & ((\C1|data_rx\(6)) # (\C1|data_rx\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|data_rx\(5),
	datab => \C1|data_rx\(6),
	datac => \C1|data_rx\(7),
	datad => \C1|led_state~q\,
	combout => \C1|led_state~0_combout\);

-- Location: LCCOMB_X13_Y21_N18
\C1|led_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|led_state~1_combout\ = (\C1|data_rx\(4) & ((\C1|led_state~q\) # ((\C1|Equal0~0_combout\ & \C1|led_state~0_combout\)))) # (!\C1|data_rx\(4) & (\C1|led_state~q\ & ((\C1|led_state~0_combout\) # (!\C1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|data_rx\(4),
	datab => \C1|Equal0~0_combout\,
	datac => \C1|led_state~q\,
	datad => \C1|led_state~0_combout\,
	combout => \C1|led_state~1_combout\);

-- Location: FF_X13_Y21_N19
\C1|led_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C1|led_state~1_combout\,
	ena => \C0|RX_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|led_state~q\);

-- Location: IOIBUF_X34_Y12_N8
\TXE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TXE,
	o => \TXE~input_o\);

ww_RD <= \RD~output_o\;

ww_WR <= \WR~output_o\;

ww_LED <= \LED~output_o\;

ww_RX_valid <= \RX_valid~output_o\;

DATA(0) <= \DATA[0]~output_o\;

DATA(1) <= \DATA[1]~output_o\;

DATA(2) <= \DATA[2]~output_o\;

DATA(3) <= \DATA[3]~output_o\;

DATA(4) <= \DATA[4]~output_o\;

DATA(5) <= \DATA[5]~output_o\;

DATA(6) <= \DATA[6]~output_o\;

DATA(7) <= \DATA[7]~output_o\;
END structure;



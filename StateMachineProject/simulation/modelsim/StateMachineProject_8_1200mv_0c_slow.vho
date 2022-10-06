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

-- DATE "10/06/2022 14:15:54"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachineProject IS
    PORT (
	clk : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 1);
	led : BUFFER std_logic_vector(3 DOWNTO 1)
	);
END StateMachineProject;

-- Design Ports Information
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF StateMachineProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 1);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \StateVariable.STATE3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \StateVariable.STATE2~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \StateVariable.STATE1~2_combout\ : std_logic;
SIGNAL \StateVariable.STATE1~q\ : std_logic;
SIGNAL \led[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \led[2]~0_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led[3]~1_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sw <= sw;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X34_Y12_N22
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X33_Y12_N10
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\sw[1]~input_o\) # (\StateVariable.STATE1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \StateVariable.STATE1~q\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X34_Y12_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X33_Y12_N18
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector0~2_combout\ & (\StateVariable.STATE3~q\ & (\sw[3]~input_o\ $ (!\Selector0~1_combout\)))) # (!\Selector0~2_combout\ & ((\Selector0~1_combout\) # ((\sw[3]~input_o\ & \StateVariable.STATE3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \Selector0~2_combout\,
	datac => \StateVariable.STATE3~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X33_Y12_N19
\StateVariable.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateVariable.STATE3~q\);

-- Location: LCCOMB_X33_Y12_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\sw[3]~input_o\) # (!\StateVariable.STATE3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[3]~input_o\,
	datad => \StateVariable.STATE3~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector0~1_combout\ & (\StateVariable.STATE2~q\ & (\sw[2]~input_o\ $ (!\Selector0~0_combout\)))) # (!\Selector0~1_combout\ & ((\Selector0~0_combout\) # ((\sw[2]~input_o\ & \StateVariable.STATE2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \sw[2]~input_o\,
	datac => \StateVariable.STATE2~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X33_Y12_N29
\StateVariable.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateVariable.STATE2~q\);

-- Location: LCCOMB_X33_Y12_N0
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\sw[2]~input_o\) # (!\StateVariable.STATE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \StateVariable.STATE2~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X33_Y12_N6
\StateVariable.STATE1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateVariable.STATE1~2_combout\ = (\StateVariable.STATE1~q\ & (((\Selector0~0_combout\) # (!\Selector0~2_combout\)))) # (!\StateVariable.STATE1~q\ & (\Selector0~0_combout\ & (\sw[1]~input_o\ $ (\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \Selector0~2_combout\,
	datac => \StateVariable.STATE1~q\,
	datad => \Selector0~0_combout\,
	combout => \StateVariable.STATE1~2_combout\);

-- Location: FF_X33_Y12_N7
\StateVariable.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateVariable.STATE1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateVariable.STATE1~q\);

-- Location: LCCOMB_X33_Y12_N20
\led[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[1]~reg0feeder_combout\ = \StateVariable.STATE1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateVariable.STATE1~q\,
	combout => \led[1]~reg0feeder_combout\);

-- Location: FF_X33_Y12_N21
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N14
\led[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[2]~0_combout\ = !\StateVariable.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateVariable.STATE2~q\,
	combout => \led[2]~0_combout\);

-- Location: FF_X33_Y12_N15
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X33_Y12_N8
\led[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[3]~1_combout\ = !\StateVariable.STATE3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateVariable.STATE3~q\,
	combout => \led[3]~1_combout\);

-- Location: FF_X33_Y12_N9
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;



-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "11/20/2015 19:05:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Interface IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0)
	);
END Interface;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[8]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[9]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|fb_clkin\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \VGA|controller|Add0~37_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \VGA|controller|xCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|xCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|xCounter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~38\ : std_logic;
SIGNAL \VGA|controller|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~2\ : std_logic;
SIGNAL \VGA|controller|Add0~5_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~6\ : std_logic;
SIGNAL \VGA|controller|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~10\ : std_logic;
SIGNAL \VGA|controller|Add0~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~14\ : std_logic;
SIGNAL \VGA|controller|Add0~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~18\ : std_logic;
SIGNAL \VGA|controller|Add0~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~22\ : std_logic;
SIGNAL \VGA|controller|Add0~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~34\ : std_logic;
SIGNAL \VGA|controller|Add0~29_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~30\ : std_logic;
SIGNAL \VGA|controller|Add0~25_sumout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~q\ : std_logic;
SIGNAL \VGA|controller|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~3_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~10\ : std_logic;
SIGNAL \VGA|controller|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~2\ : std_logic;
SIGNAL \VGA|controller|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~38\ : std_logic;
SIGNAL \VGA|controller|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~34\ : std_logic;
SIGNAL \VGA|controller|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~30\ : std_logic;
SIGNAL \VGA|controller|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~22\ : std_logic;
SIGNAL \VGA|controller|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~14\ : std_logic;
SIGNAL \VGA|controller|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~26\ : std_logic;
SIGNAL \VGA|controller|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~18\ : std_logic;
SIGNAL \VGA|controller|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~q\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CP|RC|Add2~1_sumout\ : std_logic;
SIGNAL \CP|RC|out~0_combout\ : std_logic;
SIGNAL \CP|RC|Add2~2\ : std_logic;
SIGNAL \CP|RC|Add2~17_sumout\ : std_logic;
SIGNAL \CP|RC|out~4_combout\ : std_logic;
SIGNAL \CP|RC|Add2~18\ : std_logic;
SIGNAL \CP|RC|Add2~13_sumout\ : std_logic;
SIGNAL \CP|RC|out~3_combout\ : std_logic;
SIGNAL \CP|RC|Add2~14\ : std_logic;
SIGNAL \CP|RC|Add2~9_sumout\ : std_logic;
SIGNAL \CP|RC|out~2_combout\ : std_logic;
SIGNAL \CP|RC|Add2~10\ : std_logic;
SIGNAL \CP|RC|Add2~5_sumout\ : std_logic;
SIGNAL \CP|RC|out~1_combout\ : std_logic;
SIGNAL \CP|RC|Equal0~1_combout\ : std_logic;
SIGNAL \CP|RC|Add2~6\ : std_logic;
SIGNAL \CP|RC|Add2~37_sumout\ : std_logic;
SIGNAL \CP|RC|Add1~30_cout\ : std_logic;
SIGNAL \CP|RC|Add1~26_cout\ : std_logic;
SIGNAL \CP|RC|Add1~22_cout\ : std_logic;
SIGNAL \CP|RC|Add1~17_sumout\ : std_logic;
SIGNAL \CP|RC|out~9_combout\ : std_logic;
SIGNAL \CP|RC|Add1~18\ : std_logic;
SIGNAL \CP|RC|Add1~13_sumout\ : std_logic;
SIGNAL \CP|RC|Add2~38\ : std_logic;
SIGNAL \CP|RC|Add2~33_sumout\ : std_logic;
SIGNAL \CP|RC|out~8_combout\ : std_logic;
SIGNAL \CP|RC|Add1~14\ : std_logic;
SIGNAL \CP|RC|Add1~9_sumout\ : std_logic;
SIGNAL \CP|RC|Add2~34\ : std_logic;
SIGNAL \CP|RC|Add2~29_sumout\ : std_logic;
SIGNAL \CP|RC|out~7_combout\ : std_logic;
SIGNAL \CP|RC|Add2~30\ : std_logic;
SIGNAL \CP|RC|Add2~25_sumout\ : std_logic;
SIGNAL \CP|RC|Add1~10\ : std_logic;
SIGNAL \CP|RC|Add1~5_sumout\ : std_logic;
SIGNAL \CP|RC|out~6_combout\ : std_logic;
SIGNAL \CP|RC|Add2~26\ : std_logic;
SIGNAL \CP|RC|Add2~21_sumout\ : std_logic;
SIGNAL \CP|RC|Add1~6\ : std_logic;
SIGNAL \CP|RC|Add1~1_sumout\ : std_logic;
SIGNAL \CP|RC|out~5_combout\ : std_logic;
SIGNAL \CP|RC|Equal1~0_combout\ : std_logic;
SIGNAL \CP|RC|Equal0~0_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~41_sumout\ : std_logic;
SIGNAL \CP|BGC|out[0]~10_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~42\ : std_logic;
SIGNAL \CP|BGC|Add2~37_sumout\ : std_logic;
SIGNAL \CP|BGC|out[1]~9_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~38\ : std_logic;
SIGNAL \CP|BGC|Add2~46\ : std_logic;
SIGNAL \CP|BGC|Add2~49_sumout\ : std_logic;
SIGNAL \CP|BGC|out[3]~12_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~50\ : std_logic;
SIGNAL \CP|BGC|Add2~53_sumout\ : std_logic;
SIGNAL \CP|BGC|out~13_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~46_cout\ : std_logic;
SIGNAL \CP|BGC|Add1~42_cout\ : std_logic;
SIGNAL \CP|BGC|Add1~38_cout\ : std_logic;
SIGNAL \CP|BGC|Add1~13_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~66\ : std_logic;
SIGNAL \CP|BGC|Add2~13_sumout\ : std_logic;
SIGNAL \CP|BGC|out~3_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~14\ : std_logic;
SIGNAL \CP|BGC|Add1~17_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~14\ : std_logic;
SIGNAL \CP|BGC|Add2~17_sumout\ : std_logic;
SIGNAL \CP|BGC|out~4_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~18\ : std_logic;
SIGNAL \CP|BGC|Add1~21_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~18\ : std_logic;
SIGNAL \CP|BGC|Add2~21_sumout\ : std_logic;
SIGNAL \CP|BGC|out~5_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~22\ : std_logic;
SIGNAL \CP|BGC|Add1~25_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~22\ : std_logic;
SIGNAL \CP|BGC|Add2~25_sumout\ : std_logic;
SIGNAL \CP|BGC|out~6_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~26\ : std_logic;
SIGNAL \CP|BGC|Add1~29_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~26\ : std_logic;
SIGNAL \CP|BGC|Add2~29_sumout\ : std_logic;
SIGNAL \CP|BGC|out~7_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~30\ : std_logic;
SIGNAL \CP|BGC|Add1~33_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~30\ : std_logic;
SIGNAL \CP|BGC|Add2~33_sumout\ : std_logic;
SIGNAL \CP|BGC|out~8_combout\ : std_logic;
SIGNAL \CP|Equal1~1_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~34\ : std_logic;
SIGNAL \CP|BGC|Add2~9_sumout\ : std_logic;
SIGNAL \CP|BGC|Add1~34\ : std_logic;
SIGNAL \CP|BGC|Add1~9_sumout\ : std_logic;
SIGNAL \CP|BGC|out~2_combout\ : std_logic;
SIGNAL \CP|BGC|Add1~10\ : std_logic;
SIGNAL \CP|BGC|Add1~5_sumout\ : std_logic;
SIGNAL \CP|BGC|Add2~10\ : std_logic;
SIGNAL \CP|BGC|Add2~5_sumout\ : std_logic;
SIGNAL \CP|BGC|out~1_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~6\ : std_logic;
SIGNAL \CP|BGC|Add2~1_sumout\ : std_logic;
SIGNAL \CP|BGC|Add1~6\ : std_logic;
SIGNAL \CP|BGC|Add1~1_sumout\ : std_logic;
SIGNAL \CP|BGC|out~0_combout\ : std_logic;
SIGNAL \CP|Equal1~0_combout\ : std_logic;
SIGNAL \CP|Equal1~2_combout\ : std_logic;
SIGNAL \CP|Equal1~3_combout\ : std_logic;
SIGNAL \CP|Selector3~0_combout\ : std_logic;
SIGNAL \CP|RCenable~combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~18\ : std_logic;
SIGNAL \CP|CLK60|Add0~13_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~14\ : std_logic;
SIGNAL \CP|CLK60|Add0~49_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~4_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~50\ : std_logic;
SIGNAL \CP|CLK60|Add0~53_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~5_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~33_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~0_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~34\ : std_logic;
SIGNAL \CP|CLK60|Add0~29_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~30\ : std_logic;
SIGNAL \CP|CLK60|Add0~37_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~1_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~38\ : std_logic;
SIGNAL \CP|CLK60|Add0~25_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~26\ : std_logic;
SIGNAL \CP|CLK60|Add0~41_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~2_combout\ : std_logic;
SIGNAL \CP|CLK60|Equal0~2_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~42\ : std_logic;
SIGNAL \CP|CLK60|Add0~45_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~3_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~46\ : std_logic;
SIGNAL \CP|CLK60|Add0~17_sumout\ : std_logic;
SIGNAL \CP|CLK60|Equal0~1_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~54\ : std_logic;
SIGNAL \CP|CLK60|Add0~57_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~6_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~58\ : std_logic;
SIGNAL \CP|CLK60|Add0~9_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~10\ : std_logic;
SIGNAL \CP|CLK60|Add0~61_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~7_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~62\ : std_logic;
SIGNAL \CP|CLK60|Add0~65_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~8_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~2\ : std_logic;
SIGNAL \CP|CLK60|Add0~73_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~10_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~74\ : std_logic;
SIGNAL \CP|CLK60|Add0~77_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~11_combout\ : std_logic;
SIGNAL \CP|CLK60|Equal0~3_combout\ : std_logic;
SIGNAL \CP|CLK60|Equal0~4_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~66\ : std_logic;
SIGNAL \CP|CLK60|Add0~5_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~6\ : std_logic;
SIGNAL \CP|CLK60|Add0~69_sumout\ : std_logic;
SIGNAL \CP|CLK60|q~9_combout\ : std_logic;
SIGNAL \CP|CLK60|Add0~70\ : std_logic;
SIGNAL \CP|CLK60|Add0~21_sumout\ : std_logic;
SIGNAL \CP|CLK60|Add0~22\ : std_logic;
SIGNAL \CP|CLK60|Add0~1_sumout\ : std_logic;
SIGNAL \CP|CLK60|Equal0~0_combout\ : std_logic;
SIGNAL \CP|CLK60|always0~0_combout\ : std_logic;
SIGNAL \CP|CLK60|out~q\ : std_logic;
SIGNAL \CP|currentState.displayState~0_combout\ : std_logic;
SIGNAL \CP|comb~0_combout\ : std_logic;
SIGNAL \CP|currentState.resetState_124~combout\ : std_logic;
SIGNAL \CP|currentState.displayState~1_combout\ : std_logic;
SIGNAL \CP|cenable~combout\ : std_logic;
SIGNAL \CP|BGC|Add2~54\ : std_logic;
SIGNAL \CP|BGC|Add2~57_sumout\ : std_logic;
SIGNAL \CP|BGC|out~14_combout\ : std_logic;
SIGNAL \CP|BGC|Equal0~1_combout\ : std_logic;
SIGNAL \CP|BGC|Equal1~0_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~45_sumout\ : std_logic;
SIGNAL \CP|BGC|out[2]~11_combout\ : std_logic;
SIGNAL \CP|BGC|Equal0~0_combout\ : std_logic;
SIGNAL \CP|BGC|Equal0~2_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~58\ : std_logic;
SIGNAL \CP|BGC|Add2~61_sumout\ : std_logic;
SIGNAL \CP|BGC|out~15_combout\ : std_logic;
SIGNAL \CP|BGC|Add2~62\ : std_logic;
SIGNAL \CP|BGC|Add2~65_sumout\ : std_logic;
SIGNAL \CP|BGC|out~16_combout\ : std_logic;
SIGNAL \CP|NP|always0~1_combout\ : std_logic;
SIGNAL \CP|NP|out~31_combout\ : std_logic;
SIGNAL \CP|NP|always0~2_combout\ : std_logic;
SIGNAL \CP|NP|always0~3_combout\ : std_logic;
SIGNAL \CP|NP|Add10~29_sumout\ : std_logic;
SIGNAL \CP|NP|Add9~29_sumout\ : std_logic;
SIGNAL \CP|NP|out~33_combout\ : std_logic;
SIGNAL \CP|NP|out~34_combout\ : std_logic;
SIGNAL \CP|NP|Add0~29_sumout\ : std_logic;
SIGNAL \CP|NP|Add4~29_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~29_sumout\ : std_logic;
SIGNAL \CP|NP|out~32_combout\ : std_logic;
SIGNAL \CP|NP|Equal0~1_combout\ : std_logic;
SIGNAL \CP|NP|Equal0~0_combout\ : std_logic;
SIGNAL \CP|NP|out~30_combout\ : std_logic;
SIGNAL \CP|NP|Add6~29_sumout\ : std_logic;
SIGNAL \CP|NP|out~37_combout\ : std_logic;
SIGNAL \CP|NP|Equal0~2_combout\ : std_logic;
SIGNAL \CP|NP|out~29_combout\ : std_logic;
SIGNAL \CP|NP|Add6~30\ : std_logic;
SIGNAL \CP|NP|Add6~26\ : std_logic;
SIGNAL \CP|NP|Add6~22\ : std_logic;
SIGNAL \CP|NP|Add6~17_sumout\ : std_logic;
SIGNAL \CP|NP|out[2]~4_combout\ : std_logic;
SIGNAL \CP|NP|Add10~30\ : std_logic;
SIGNAL \CP|NP|Add10~26\ : std_logic;
SIGNAL \CP|NP|Add10~22\ : std_logic;
SIGNAL \CP|NP|Add10~17_sumout\ : std_logic;
SIGNAL \CP|NP|Add7~4_combout\ : std_logic;
SIGNAL \CP|NP|Add9~30\ : std_logic;
SIGNAL \CP|NP|Add9~26\ : std_logic;
SIGNAL \CP|NP|Add9~22\ : std_logic;
SIGNAL \CP|NP|Add9~17_sumout\ : std_logic;
SIGNAL \CP|NP|out[2]~5_combout\ : std_logic;
SIGNAL \CP|NP|Add8~26\ : std_logic;
SIGNAL \CP|NP|Add8~22\ : std_logic;
SIGNAL \CP|NP|Add8~17_sumout\ : std_logic;
SIGNAL \CP|NP|out~19_combout\ : std_logic;
SIGNAL \CP|NP|Add0~22\ : std_logic;
SIGNAL \CP|NP|Add0~17_sumout\ : std_logic;
SIGNAL \CP|NP|Add4~30\ : std_logic;
SIGNAL \CP|NP|Add4~26\ : std_logic;
SIGNAL \CP|NP|Add4~22\ : std_logic;
SIGNAL \CP|NP|Add4~17_sumout\ : std_logic;
SIGNAL \CP|NP|Add2~26\ : std_logic;
SIGNAL \CP|NP|Add2~22\ : std_logic;
SIGNAL \CP|NP|Add2~17_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~30\ : std_logic;
SIGNAL \CP|NP|Add3~26\ : std_logic;
SIGNAL \CP|NP|Add3~22\ : std_logic;
SIGNAL \CP|NP|Add3~17_sumout\ : std_logic;
SIGNAL \CP|NP|out~20_combout\ : std_logic;
SIGNAL \CP|NP|out~21_combout\ : std_logic;
SIGNAL \CP|NP|out[2]~9_combout\ : std_logic;
SIGNAL \CP|NP|Add0~18\ : std_logic;
SIGNAL \CP|NP|Add0~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add6~18\ : std_logic;
SIGNAL \CP|NP|Add6~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add10~18\ : std_logic;
SIGNAL \CP|NP|Add10~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add9~18\ : std_logic;
SIGNAL \CP|NP|Add9~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add8~18\ : std_logic;
SIGNAL \CP|NP|Add8~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add7~3_combout\ : std_logic;
SIGNAL \CP|NP|out~16_combout\ : std_logic;
SIGNAL \CP|NP|Add1~3_combout\ : std_logic;
SIGNAL \CP|NP|Add4~18\ : std_logic;
SIGNAL \CP|NP|Add4~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add2~18\ : std_logic;
SIGNAL \CP|NP|Add2~13_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~18\ : std_logic;
SIGNAL \CP|NP|Add3~13_sumout\ : std_logic;
SIGNAL \CP|NP|out~17_combout\ : std_logic;
SIGNAL \CP|NP|out~18_combout\ : std_logic;
SIGNAL \CP|NP|always0~0_combout\ : std_logic;
SIGNAL \CP|NP|Add6~25_sumout\ : std_logic;
SIGNAL \CP|NP|Add0~30\ : std_logic;
SIGNAL \CP|NP|Add0~25_sumout\ : std_logic;
SIGNAL \CP|NP|out~25_combout\ : std_logic;
SIGNAL \CP|NP|Add4~25_sumout\ : std_logic;
SIGNAL \CP|NP|Add10~25_sumout\ : std_logic;
SIGNAL \CP|NP|out~26_combout\ : std_logic;
SIGNAL \CP|NP|out~35_combout\ : std_logic;
SIGNAL \CP|NP|Add2~25_sumout\ : std_logic;
SIGNAL \CP|NP|Add9~25_sumout\ : std_logic;
SIGNAL \CP|NP|Add8~25_sumout\ : std_logic;
SIGNAL \CP|NP|out~36_combout\ : std_logic;
SIGNAL \CP|NP|Add3~25_sumout\ : std_logic;
SIGNAL \CP|NP|out~27_combout\ : std_logic;
SIGNAL \CP|NP|out~28_combout\ : std_logic;
SIGNAL \CP|NP|Add0~26\ : std_logic;
SIGNAL \CP|NP|Add0~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add6~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add8~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add9~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add10~21_sumout\ : std_logic;
SIGNAL \CP|NP|out~22_combout\ : std_logic;
SIGNAL \CP|NP|Add2~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add4~21_sumout\ : std_logic;
SIGNAL \CP|NP|out~23_combout\ : std_logic;
SIGNAL \CP|NP|out~24_combout\ : std_logic;
SIGNAL \CP|NP|out~3_combout\ : std_logic;
SIGNAL \CP|NP|Add6~14\ : std_logic;
SIGNAL \CP|NP|Add6~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add0~14\ : std_logic;
SIGNAL \CP|NP|Add0~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add4~14\ : std_logic;
SIGNAL \CP|NP|Add4~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add1~2_combout\ : std_logic;
SIGNAL \CP|NP|Add2~14\ : std_logic;
SIGNAL \CP|NP|Add2~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~14\ : std_logic;
SIGNAL \CP|NP|Add3~9_sumout\ : std_logic;
SIGNAL \CP|NP|out~14_combout\ : std_logic;
SIGNAL \CP|NP|Add9~14\ : std_logic;
SIGNAL \CP|NP|Add9~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add10~14\ : std_logic;
SIGNAL \CP|NP|Add10~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add7~2_combout\ : std_logic;
SIGNAL \CP|NP|Add8~14\ : std_logic;
SIGNAL \CP|NP|Add8~9_sumout\ : std_logic;
SIGNAL \CP|NP|out~13_combout\ : std_logic;
SIGNAL \CP|NP|out~15_combout\ : std_logic;
SIGNAL \CP|NP|Add6~10\ : std_logic;
SIGNAL \CP|NP|Add6~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add0~10\ : std_logic;
SIGNAL \CP|NP|Add0~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~10\ : std_logic;
SIGNAL \CP|NP|Add3~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add2~10\ : std_logic;
SIGNAL \CP|NP|Add2~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add1~1_combout\ : std_logic;
SIGNAL \CP|NP|Add4~10\ : std_logic;
SIGNAL \CP|NP|Add4~5_sumout\ : std_logic;
SIGNAL \CP|NP|out~11_combout\ : std_logic;
SIGNAL \CP|NP|Add7~1_combout\ : std_logic;
SIGNAL \CP|NP|Add10~10\ : std_logic;
SIGNAL \CP|NP|Add10~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add9~10\ : std_logic;
SIGNAL \CP|NP|Add9~5_sumout\ : std_logic;
SIGNAL \CP|NP|Add8~10\ : std_logic;
SIGNAL \CP|NP|Add8~5_sumout\ : std_logic;
SIGNAL \CP|NP|out~10_combout\ : std_logic;
SIGNAL \CP|NP|out~12_combout\ : std_logic;
SIGNAL \CP|NP|LessThan10~0_combout\ : std_logic;
SIGNAL \CP|NP|LessThan10~1_combout\ : std_logic;
SIGNAL \CP|NP|POSIN~0_combout\ : std_logic;
SIGNAL \CP|NP|POSIN~feeder_combout\ : std_logic;
SIGNAL \CP|NP|POSIN~q\ : std_logic;
SIGNAL \CP|NP|p|out~0_combout\ : std_logic;
SIGNAL \CP|NP|p|out~q\ : std_logic;
SIGNAL \CP|NP|Add6~6\ : std_logic;
SIGNAL \CP|NP|Add6~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add0~6\ : std_logic;
SIGNAL \CP|NP|Add0~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add1~0_combout\ : std_logic;
SIGNAL \CP|NP|Add2~6\ : std_logic;
SIGNAL \CP|NP|Add2~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add4~6\ : std_logic;
SIGNAL \CP|NP|Add4~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add3~6\ : std_logic;
SIGNAL \CP|NP|Add3~1_sumout\ : std_logic;
SIGNAL \CP|NP|out~7_combout\ : std_logic;
SIGNAL \CP|NP|Add7~0_combout\ : std_logic;
SIGNAL \CP|NP|Add9~6\ : std_logic;
SIGNAL \CP|NP|Add9~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add10~6\ : std_logic;
SIGNAL \CP|NP|Add10~1_sumout\ : std_logic;
SIGNAL \CP|NP|Add8~6\ : std_logic;
SIGNAL \CP|NP|Add8~1_sumout\ : std_logic;
SIGNAL \CP|NP|out~6_combout\ : std_logic;
SIGNAL \CP|NP|out~8_combout\ : std_logic;
SIGNAL \DP|Add1~22\ : std_logic;
SIGNAL \DP|Add1~26\ : std_logic;
SIGNAL \DP|Add1~30\ : std_logic;
SIGNAL \DP|Add1~18\ : std_logic;
SIGNAL \DP|Add1~14\ : std_logic;
SIGNAL \DP|Add1~10\ : std_logic;
SIGNAL \DP|Add1~6\ : std_logic;
SIGNAL \DP|Add1~1_sumout\ : std_logic;
SIGNAL \DP|y_out[7]~0_combout\ : std_logic;
SIGNAL \DP|y_out[7]~1_combout\ : std_logic;
SIGNAL \DP|y_out[7]~2_combout\ : std_logic;
SIGNAL \DP|Add1~5_sumout\ : std_logic;
SIGNAL \DP|y_out[6]~3_combout\ : std_logic;
SIGNAL \DP|Add1~9_sumout\ : std_logic;
SIGNAL \DP|y_out[5]~4_combout\ : std_logic;
SIGNAL \DP|Add1~13_sumout\ : std_logic;
SIGNAL \DP|y_out[4]~5_combout\ : std_logic;
SIGNAL \DP|Add1~17_sumout\ : std_logic;
SIGNAL \DP|y_out[3]~9_combout\ : std_logic;
SIGNAL \DP|Add1~21_sumout\ : std_logic;
SIGNAL \DP|y_out[0]~6_combout\ : std_logic;
SIGNAL \CP|NP|Add5~13_sumout\ : std_logic;
SIGNAL \CP|NP|out[9]~0_combout\ : std_logic;
SIGNAL \CP|NP|out[9]~1_combout\ : std_logic;
SIGNAL \CP|NP|Add5~14\ : std_logic;
SIGNAL \CP|NP|Add5~17_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~18\ : std_logic;
SIGNAL \CP|NP|Add5~21_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~22\ : std_logic;
SIGNAL \CP|NP|Add5~25_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~26\ : std_logic;
SIGNAL \CP|NP|Add5~29_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~30\ : std_logic;
SIGNAL \CP|NP|Add5~33_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~34\ : std_logic;
SIGNAL \CP|NP|Add5~9_sumout\ : std_logic;
SIGNAL \CP|NP|Add5~10\ : std_logic;
SIGNAL \CP|NP|Add5~5_sumout\ : std_logic;
SIGNAL \CP|NP|out~2_combout\ : std_logic;
SIGNAL \CP|NP|out[15]~feeder_combout\ : std_logic;
SIGNAL \CP|NP|Add5~6\ : std_logic;
SIGNAL \CP|NP|Add5~1_sumout\ : std_logic;
SIGNAL \DP|Add0~14\ : std_logic;
SIGNAL \DP|Add0~18\ : std_logic;
SIGNAL \DP|Add0~22\ : std_logic;
SIGNAL \DP|Add0~26\ : std_logic;
SIGNAL \DP|Add0~30\ : std_logic;
SIGNAL \DP|Add0~34\ : std_logic;
SIGNAL \DP|Add0~10\ : std_logic;
SIGNAL \DP|Add0~6\ : std_logic;
SIGNAL \DP|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~54\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~58\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~62\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~66\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~70\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~46\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~49_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~45_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~69_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~65_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~61_sumout\ : std_logic;
SIGNAL \DP|Add1~29_sumout\ : std_logic;
SIGNAL \DP|y_out[2]~8_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~57_sumout\ : std_logic;
SIGNAL \DP|Add1~25_sumout\ : std_logic;
SIGNAL \DP|y_out[1]~7_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~53_sumout\ : std_logic;
SIGNAL \DP|Add0~5_sumout\ : std_logic;
SIGNAL \DP|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~18\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~22\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~26\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~30\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~34\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~38\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~42\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~2\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~10\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~13_sumout\ : std_logic;
SIGNAL \VGA|writeEn~0_combout\ : std_logic;
SIGNAL \VGA|writeEn~1_combout\ : std_logic;
SIGNAL \VGA|writeEn~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~14\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~5_sumout\ : std_logic;
SIGNAL \VGA|controller|yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~18\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~19\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~22\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~23\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~26\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~27\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~30\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~31\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~34\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~35\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~38\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~39\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~42\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~43\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~2\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~10\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~14\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~15\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~18\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~19\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~22\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~23\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~26\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~27\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~30\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~31\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~34\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~35\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~38\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~39\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~42\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~43\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~2\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~3\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~10\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~11\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~14\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~15\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~5_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]~feeder_combout\ : std_logic;
SIGNAL \CP|Selector1~1_combout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~13_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CP|Selector1~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CP|Add0~1_sumout\ : std_logic;
SIGNAL \CP|Add0~2\ : std_logic;
SIGNAL \CP|Add0~5_sumout\ : std_logic;
SIGNAL \CP|Add0~6\ : std_logic;
SIGNAL \CP|Add0~9_sumout\ : std_logic;
SIGNAL \CP|Add0~10\ : std_logic;
SIGNAL \CP|Add0~13_sumout\ : std_logic;
SIGNAL \CP|Add0~14\ : std_logic;
SIGNAL \CP|Add0~17_sumout\ : std_logic;
SIGNAL \CP|Add0~18\ : std_logic;
SIGNAL \CP|Add0~21_sumout\ : std_logic;
SIGNAL \CP|Add0~22\ : std_logic;
SIGNAL \CP|Add0~25_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~1_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~9_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~17_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~21_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~25_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~29_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~33_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~37_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \CP|BGtranslator|Add1~41_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \CP|Selector0~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \CP|Selector0~1_combout\ : std_logic;
SIGNAL \CP|Selector0~2_combout\ : std_logic;
SIGNAL \DP|Add0~13_sumout\ : std_logic;
SIGNAL \DP|x_out[0]~0_combout\ : std_logic;
SIGNAL \DP|Add0~17_sumout\ : std_logic;
SIGNAL \DP|x_out[1]~1_combout\ : std_logic;
SIGNAL \DP|Add0~21_sumout\ : std_logic;
SIGNAL \DP|x_out[2]~2_combout\ : std_logic;
SIGNAL \DP|Add0~25_sumout\ : std_logic;
SIGNAL \DP|x_out[3]~3_combout\ : std_logic;
SIGNAL \DP|Add0~29_sumout\ : std_logic;
SIGNAL \DP|x_out[4]~4_combout\ : std_logic;
SIGNAL \DP|Add0~33_sumout\ : std_logic;
SIGNAL \DP|x_out[5]~5_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~17_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~21_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~25_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~29_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~33_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~37_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~41_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~41_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \CP|Selector1~2_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \CP|Selector1~3_combout\ : std_logic;
SIGNAL \CP|Selector1~4_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \CP|Selector4~1_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \CP|Selector4~0_combout\ : std_logic;
SIGNAL \CP|Selector4~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode616w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|BGC|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|NP|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode626w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CP|RC|out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode606w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|CLK60|q\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CP|robot_reg|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode569w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode586w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode596w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode636w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode646w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|y_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CP|color_from_CP\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DP|X|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DP|Y|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CP|BGtranslator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CP|BGtranslator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \CP|CLK60|ALT_INV_q\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CP|RC|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ : std_logic;
SIGNAL \CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[2]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \DP|Y|ALT_INV_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|ALT_INV_y_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|X|ALT_INV_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CP|ALT_INV_RCenable~combout\ : std_logic;
SIGNAL \CP|ALT_INV_color_from_CP\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CP|ALT_INV_currentState.resetState_124~combout\ : std_logic;
SIGNAL \CP|ALT_INV_cenable~combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~36_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~35_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_POSIN~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~34_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~33_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~32_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~31_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~30_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~27_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~26_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~25_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~23_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~22_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~20_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~19_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add7~4_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~17_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add1~3_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~16_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add7~3_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~14_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add1~2_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~13_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add7~2_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~11_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~10_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~7_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~6_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out[2]~5_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out[2]~4_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~3_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_out~2_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CP|NP|p|ALT_INV_out~q\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[3]~9_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[2]~8_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[1]~7_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[0]~6_combout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w1_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w2_n1_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[4]~5_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[5]~4_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[6]~3_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[7]~2_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[7]~1_combout\ : std_logic;
SIGNAL \DP|ALT_INV_y_out[7]~0_combout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_currentState.displayState~1_combout\ : std_logic;
SIGNAL \CP|ALT_INV_currentState.displayState~0_combout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_out~q\ : std_logic;
SIGNAL \CP|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CP|RC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \CP|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CP|BGC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CP|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~2_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~1_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_POSIN~q\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \CP|NP|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \CP|CLK60|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \DP|ALT_INV_Add1~21_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(2);

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\ <= (\CP|color_from_CP\(2) & \CP|color_from_CP\(1));

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & \VGA|user_input_translator|Add0~25_sumout\ & 
\VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & \DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter[5]~DUPLICATE_q\ & 
\VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);
\VGA|VideoMemory|auto_generated|ram_block1a29\ <= \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(1);

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(1);

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (gnd & \CP|color_from_CP\(0));

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & \VGA|user_input_translator|Add0~25_sumout\ & 
\VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & \DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter[5]~DUPLICATE_q\ & 
\VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \CP|color_from_CP\(0);

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add0~41_sumout\ & \VGA|user_input_translator|Add0~37_sumout\ & \VGA|user_input_translator|Add0~33_sumout\ & \VGA|user_input_translator|Add0~29_sumout\ & 
\VGA|user_input_translator|Add0~25_sumout\ & \VGA|user_input_translator|Add0~21_sumout\ & \VGA|user_input_translator|Add0~17_sumout\ & \DP|x_out[5]~5_combout\ & \DP|x_out[4]~4_combout\ & \DP|x_out[3]~3_combout\ & \DP|x_out[2]~2_combout\ & 
\DP|x_out[1]~1_combout\ & \DP|x_out[0]~0_combout\);

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter[5]~DUPLICATE_q\ & \VGA|controller|xCounter\(4) & \VGA|controller|xCounter[3]~DUPLICATE_q\ & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & \CP|BGtranslator|Add1~21_sumout\ & 
\CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(1);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\CP|Add0~25_sumout\ & \CP|Add0~21_sumout\ & \CP|Add0~17_sumout\ & \CP|Add0~13_sumout\ & \CP|Add0~9_sumout\ & \CP|Add0~5_sumout\ & \CP|Add0~1_sumout\ & \CP|RC|out\(7) & 
\CP|RC|out\(6) & \CP|RC|out\(5));

\CP|robot_reg|altsyncram_component|auto_generated|q_a\(0) <= \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\CP|robot_reg|altsyncram_component|auto_generated|q_a\(1) <= \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\CP|robot_reg|altsyncram_component|auto_generated|q_a\(2) <= \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (gnd & \~GND~combout\);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & \CP|BGtranslator|Add1~21_sumout\ & 
\CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \~GND~combout\;

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\CP|BGtranslator|Add1~41_sumout\ & \CP|BGtranslator|Add1~37_sumout\ & \CP|BGtranslator|Add1~33_sumout\ & \CP|BGtranslator|Add1~29_sumout\ & \CP|BGtranslator|Add1~25_sumout\ & 
\CP|BGtranslator|Add1~21_sumout\ & \CP|BGtranslator|Add1~17_sumout\ & \CP|BGC|out\(13) & \CP|BGC|out\(12) & \CP|BGC|out\(11) & \CP|BGC|out\(10) & \CP|BGC|out\(9) & \CP|BGC|out\(8));

\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\(6);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\
& \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\);
\CP|BGtranslator|ALT_INV_Add1~13_sumout\ <= NOT \CP|BGtranslator|Add1~13_sumout\;
\CP|BGtranslator|ALT_INV_Add1~9_sumout\ <= NOT \CP|BGtranslator|Add1~9_sumout\;
\CP|BGtranslator|ALT_INV_Add1~5_sumout\ <= NOT \CP|BGtranslator|Add1~5_sumout\;
\CP|BGtranslator|ALT_INV_Add1~1_sumout\ <= NOT \CP|BGtranslator|Add1~1_sumout\;
\DP|ALT_INV_Add1~17_sumout\ <= NOT \DP|Add1~17_sumout\;
\CP|NP|ALT_INV_out\(1) <= NOT \CP|NP|out\(1);
\CP|NP|ALT_INV_out\(2) <= NOT \CP|NP|out\(2);
\CP|NP|ALT_INV_out\(3) <= NOT \CP|NP|out\(3);
\CP|NP|ALT_INV_out\(4) <= NOT \CP|NP|out\(4);
\CP|NP|ALT_INV_out\(5) <= NOT \CP|NP|out\(5);
\CP|NP|ALT_INV_out\(6) <= NOT \CP|NP|out\(6);
\CP|NP|ALT_INV_out\(7) <= NOT \CP|NP|out\(7);
\CP|NP|ALT_INV_out\(14) <= NOT \CP|NP|out\(14);
\CP|NP|ALT_INV_out\(15) <= NOT \CP|NP|out\(15);
\CP|NP|ALT_INV_out\(16) <= NOT \CP|NP|out\(16);
\CP|CLK60|ALT_INV_q\(1) <= NOT \CP|CLK60|q\(1);
\CP|CLK60|ALT_INV_q\(3) <= NOT \CP|CLK60|q\(3);
\CP|CLK60|ALT_INV_q\(16) <= NOT \CP|CLK60|q\(16);
\CP|CLK60|ALT_INV_q\(6) <= NOT \CP|CLK60|q\(6);
\CP|CLK60|ALT_INV_q\(7) <= NOT \CP|CLK60|q\(7);
\CP|CLK60|ALT_INV_q\(11) <= NOT \CP|CLK60|q\(11);
\CP|CLK60|ALT_INV_q\(14) <= NOT \CP|CLK60|q\(14);
\CP|CLK60|ALT_INV_q\(17) <= NOT \CP|CLK60|q\(17);
\CP|RC|ALT_INV_Add2~37_sumout\ <= NOT \CP|RC|Add2~37_sumout\;
\CP|RC|ALT_INV_Add1~17_sumout\ <= NOT \CP|RC|Add1~17_sumout\;
\CP|RC|ALT_INV_Add2~33_sumout\ <= NOT \CP|RC|Add2~33_sumout\;
\CP|RC|ALT_INV_Add1~13_sumout\ <= NOT \CP|RC|Add1~13_sumout\;
\CP|RC|ALT_INV_Add2~29_sumout\ <= NOT \CP|RC|Add2~29_sumout\;
\CP|RC|ALT_INV_Add1~9_sumout\ <= NOT \CP|RC|Add1~9_sumout\;
\CP|RC|ALT_INV_Add1~5_sumout\ <= NOT \CP|RC|Add1~5_sumout\;
\CP|RC|ALT_INV_Add2~25_sumout\ <= NOT \CP|RC|Add2~25_sumout\;
\CP|RC|ALT_INV_Add1~1_sumout\ <= NOT \CP|RC|Add1~1_sumout\;
\CP|RC|ALT_INV_Add2~21_sumout\ <= NOT \CP|RC|Add2~21_sumout\;
\CP|RC|ALT_INV_Add2~17_sumout\ <= NOT \CP|RC|Add2~17_sumout\;
\CP|RC|ALT_INV_Add2~13_sumout\ <= NOT \CP|RC|Add2~13_sumout\;
\CP|RC|ALT_INV_Add2~9_sumout\ <= NOT \CP|RC|Add2~9_sumout\;
\CP|RC|ALT_INV_Add2~5_sumout\ <= NOT \CP|RC|Add2~5_sumout\;
\CP|RC|ALT_INV_Add2~1_sumout\ <= NOT \CP|RC|Add2~1_sumout\;
\CP|BGC|ALT_INV_Add2~65_sumout\ <= NOT \CP|BGC|Add2~65_sumout\;
\CP|BGC|ALT_INV_Add2~61_sumout\ <= NOT \CP|BGC|Add2~61_sumout\;
\CP|BGC|ALT_INV_Add2~57_sumout\ <= NOT \CP|BGC|Add2~57_sumout\;
\CP|BGC|ALT_INV_Add2~53_sumout\ <= NOT \CP|BGC|Add2~53_sumout\;
\CP|BGC|ALT_INV_Add2~49_sumout\ <= NOT \CP|BGC|Add2~49_sumout\;
\CP|BGC|ALT_INV_Add2~45_sumout\ <= NOT \CP|BGC|Add2~45_sumout\;
\CP|BGC|ALT_INV_Add2~41_sumout\ <= NOT \CP|BGC|Add2~41_sumout\;
\CP|BGC|ALT_INV_Add2~37_sumout\ <= NOT \CP|BGC|Add2~37_sumout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\;
\CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \CP|robot_reg|altsyncram_component|auto_generated|q_a\(1);
\CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \CP|robot_reg|altsyncram_component|auto_generated|q_a\(2);
\CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \CP|robot_reg|altsyncram_component|auto_generated|q_a\(0);
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a29\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\;
\VGA|user_input_translator|ALT_INV_Add0~69_sumout\ <= NOT \VGA|user_input_translator|Add0~69_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~65_sumout\ <= NOT \VGA|user_input_translator|Add0~65_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~61_sumout\ <= NOT \VGA|user_input_translator|Add0~61_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~57_sumout\ <= NOT \VGA|user_input_translator|Add0~57_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~53_sumout\ <= NOT \VGA|user_input_translator|Add0~53_sumout\;
\CP|BGC|ALT_INV_Add2~33_sumout\ <= NOT \CP|BGC|Add2~33_sumout\;
\CP|BGC|ALT_INV_Add1~33_sumout\ <= NOT \CP|BGC|Add1~33_sumout\;
\CP|BGC|ALT_INV_Add2~29_sumout\ <= NOT \CP|BGC|Add2~29_sumout\;
\CP|BGC|ALT_INV_Add1~29_sumout\ <= NOT \CP|BGC|Add1~29_sumout\;
\CP|BGC|ALT_INV_Add2~25_sumout\ <= NOT \CP|BGC|Add2~25_sumout\;
\CP|BGC|ALT_INV_Add1~25_sumout\ <= NOT \CP|BGC|Add1~25_sumout\;
\CP|BGC|ALT_INV_Add2~21_sumout\ <= NOT \CP|BGC|Add2~21_sumout\;
\CP|BGC|ALT_INV_Add1~21_sumout\ <= NOT \CP|BGC|Add1~21_sumout\;
\CP|BGC|ALT_INV_Add2~17_sumout\ <= NOT \CP|BGC|Add2~17_sumout\;
\CP|BGC|ALT_INV_Add1~17_sumout\ <= NOT \CP|BGC|Add1~17_sumout\;
\CP|BGC|ALT_INV_Add2~13_sumout\ <= NOT \CP|BGC|Add2~13_sumout\;
\CP|BGC|ALT_INV_Add1~13_sumout\ <= NOT \CP|BGC|Add1~13_sumout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\;
\DP|ALT_INV_Add1~13_sumout\ <= NOT \DP|Add1~13_sumout\;
\DP|ALT_INV_Add1~9_sumout\ <= NOT \DP|Add1~9_sumout\;
\DP|ALT_INV_Add1~5_sumout\ <= NOT \DP|Add1~5_sumout\;
\DP|ALT_INV_Add1~1_sumout\ <= NOT \DP|Add1~1_sumout\;
\CP|BGC|ALT_INV_Add1~9_sumout\ <= NOT \CP|BGC|Add1~9_sumout\;
\CP|BGC|ALT_INV_Add2~9_sumout\ <= NOT \CP|BGC|Add2~9_sumout\;
\CP|BGC|ALT_INV_Add2~5_sumout\ <= NOT \CP|BGC|Add2~5_sumout\;
\CP|BGC|ALT_INV_Add1~5_sumout\ <= NOT \CP|BGC|Add1~5_sumout\;
\CP|BGC|ALT_INV_Add1~1_sumout\ <= NOT \CP|BGC|Add1~1_sumout\;
\CP|BGC|ALT_INV_Add2~1_sumout\ <= NOT \CP|BGC|Add2~1_sumout\;
\CP|RC|ALT_INV_out\(0) <= NOT \CP|RC|out\(0);
\VGA|user_input_translator|ALT_INV_Add0~49_sumout\ <= NOT \VGA|user_input_translator|Add0~49_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~45_sumout\ <= NOT \VGA|user_input_translator|Add0~45_sumout\;
\VGA|controller|ALT_INV_yCounter\(2) <= NOT \VGA|controller|yCounter\(2);
\VGA|controller|ALT_INV_yCounter\(3) <= NOT \VGA|controller|yCounter\(3);
\VGA|controller|ALT_INV_yCounter\(4) <= NOT \VGA|controller|yCounter\(4);
\VGA|controller|ALT_INV_yCounter\(7) <= NOT \VGA|controller|yCounter\(7);
\VGA|controller|ALT_INV_yCounter\(5) <= NOT \VGA|controller|yCounter\(5);
\VGA|controller|ALT_INV_yCounter\(8) <= NOT \VGA|controller|yCounter\(8);
\VGA|controller|ALT_INV_yCounter\(6) <= NOT \VGA|controller|yCounter\(6);
\VGA|controller|ALT_INV_yCounter\(0) <= NOT \VGA|controller|yCounter\(0);
\VGA|controller|ALT_INV_yCounter\(9) <= NOT \VGA|controller|yCounter\(9);
\VGA|controller|ALT_INV_yCounter\(1) <= NOT \VGA|controller|yCounter\(1);
\VGA|controller|ALT_INV_xCounter\(0) <= NOT \VGA|controller|xCounter\(0);
\VGA|controller|ALT_INV_xCounter\(7) <= NOT \VGA|controller|xCounter\(7);
\VGA|controller|ALT_INV_xCounter\(8) <= NOT \VGA|controller|xCounter\(8);
\VGA|controller|ALT_INV_xCounter\(9) <= NOT \VGA|controller|xCounter\(9);
\VGA|controller|ALT_INV_xCounter\(6) <= NOT \VGA|controller|xCounter\(6);
\VGA|controller|ALT_INV_xCounter\(5) <= NOT \VGA|controller|xCounter\(5);
\VGA|controller|ALT_INV_xCounter\(4) <= NOT \VGA|controller|xCounter\(4);
\VGA|controller|ALT_INV_xCounter\(3) <= NOT \VGA|controller|xCounter\(3);
\VGA|controller|ALT_INV_xCounter\(2) <= NOT \VGA|controller|xCounter\(2);
\VGA|controller|ALT_INV_xCounter\(1) <= NOT \VGA|controller|xCounter\(1);
\DP|ALT_INV_Add0~33_sumout\ <= NOT \DP|Add0~33_sumout\;
\DP|ALT_INV_Add0~29_sumout\ <= NOT \DP|Add0~29_sumout\;
\DP|ALT_INV_Add0~25_sumout\ <= NOT \DP|Add0~25_sumout\;
\DP|ALT_INV_Add0~21_sumout\ <= NOT \DP|Add0~21_sumout\;
\DP|ALT_INV_Add0~17_sumout\ <= NOT \DP|Add0~17_sumout\;
\DP|ALT_INV_Add0~13_sumout\ <= NOT \DP|Add0~13_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\ <= NOT \VGA|controller|controller_translator|Add1~13_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\ <= NOT \VGA|controller|controller_translator|Add1~9_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|controller|controller_translator|Add1~5_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|controller|controller_translator|Add1~1_sumout\;
\DP|ALT_INV_Add0~9_sumout\ <= NOT \DP|Add0~9_sumout\;
\DP|ALT_INV_Add0~5_sumout\ <= NOT \DP|Add0~5_sumout\;
\DP|ALT_INV_Add0~1_sumout\ <= NOT \DP|Add0~1_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~13_sumout\ <= NOT \VGA|user_input_translator|Add0~13_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~9_sumout\ <= NOT \VGA|user_input_translator|Add0~9_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~5_sumout\ <= NOT \VGA|user_input_translator|Add0~5_sumout\;
\VGA|user_input_translator|ALT_INV_Add0~1_sumout\ <= NOT \VGA|user_input_translator|Add0~1_sumout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a29\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a[2]~DUPLICATE_q\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[2]~DUPLICATE_q\ <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[3]~DUPLICATE_q\ <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[3]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[6]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[7]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[9]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[5]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[5]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[3]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[3]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\DP|Y|ALT_INV_out\(0) <= NOT \DP|Y|out\(0);
\DP|ALT_INV_y_out\(3) <= NOT \DP|y_out\(3);
\DP|ALT_INV_y_out\(2) <= NOT \DP|y_out\(2);
\DP|ALT_INV_y_out\(1) <= NOT \DP|y_out\(1);
\DP|ALT_INV_y_out\(0) <= NOT \DP|y_out\(0);
\DP|X|ALT_INV_out\(5) <= NOT \DP|X|out\(5);
\DP|X|ALT_INV_out\(4) <= NOT \DP|X|out\(4);
\DP|X|ALT_INV_out\(3) <= NOT \DP|X|out\(3);
\DP|X|ALT_INV_out\(2) <= NOT \DP|X|out\(2);
\DP|X|ALT_INV_out\(1) <= NOT \DP|X|out\(1);
\DP|X|ALT_INV_out\(0) <= NOT \DP|X|out\(0);
\DP|Y|ALT_INV_out\(1) <= NOT \DP|Y|out\(1);
\DP|Y|ALT_INV_out\(2) <= NOT \DP|Y|out\(2);
\DP|Y|ALT_INV_out\(3) <= NOT \DP|Y|out\(3);
\DP|Y|ALT_INV_out\(4) <= NOT \DP|Y|out\(4);
\DP|Y|ALT_INV_out\(5) <= NOT \DP|Y|out\(5);
\DP|Y|ALT_INV_out\(6) <= NOT \DP|Y|out\(6);
\DP|Y|ALT_INV_out\(7) <= NOT \DP|Y|out\(7);
\DP|X|ALT_INV_out\(6) <= NOT \DP|X|out\(6);
\DP|X|ALT_INV_out\(7) <= NOT \DP|X|out\(7);
\DP|X|ALT_INV_out\(8) <= NOT \DP|X|out\(8);
\CP|ALT_INV_RCenable~combout\ <= NOT \CP|RCenable~combout\;
\CP|ALT_INV_color_from_CP\(0) <= NOT \CP|color_from_CP\(0);
\CP|ALT_INV_color_from_CP\(1) <= NOT \CP|color_from_CP\(1);
\CP|ALT_INV_color_from_CP\(2) <= NOT \CP|color_from_CP\(2);
\CP|ALT_INV_currentState.resetState_124~combout\ <= NOT \CP|currentState.resetState_124~combout\;
\DP|ALT_INV_y_out\(4) <= NOT \DP|y_out\(4);
\DP|ALT_INV_y_out\(5) <= NOT \DP|y_out\(5);
\DP|ALT_INV_y_out\(6) <= NOT \DP|y_out\(6);
\DP|ALT_INV_y_out\(7) <= NOT \DP|y_out\(7);
\CP|ALT_INV_cenable~combout\ <= NOT \CP|cenable~combout\;
\CP|NP|ALT_INV_out~36_combout\ <= NOT \CP|NP|out~36_combout\;
\CP|NP|ALT_INV_out~35_combout\ <= NOT \CP|NP|out~35_combout\;
\CP|NP|ALT_INV_POSIN~0_combout\ <= NOT \CP|NP|POSIN~0_combout\;
\CP|NP|ALT_INV_out~34_combout\ <= NOT \CP|NP|out~34_combout\;
\CP|NP|ALT_INV_out~33_combout\ <= NOT \CP|NP|out~33_combout\;
\CP|NP|ALT_INV_out~32_combout\ <= NOT \CP|NP|out~32_combout\;
\CP|NP|ALT_INV_out~31_combout\ <= NOT \CP|NP|out~31_combout\;
\CP|NP|ALT_INV_always0~3_combout\ <= NOT \CP|NP|always0~3_combout\;
\CP|NP|ALT_INV_always0~2_combout\ <= NOT \CP|NP|always0~2_combout\;
\CP|NP|ALT_INV_always0~1_combout\ <= NOT \CP|NP|always0~1_combout\;
\CP|NP|ALT_INV_out~30_combout\ <= NOT \CP|NP|out~30_combout\;
\CP|NP|ALT_INV_out~27_combout\ <= NOT \CP|NP|out~27_combout\;
\CP|NP|ALT_INV_out~26_combout\ <= NOT \CP|NP|out~26_combout\;
\CP|NP|ALT_INV_out~25_combout\ <= NOT \CP|NP|out~25_combout\;
\CP|NP|ALT_INV_always0~0_combout\ <= NOT \CP|NP|always0~0_combout\;
\CP|NP|ALT_INV_out~23_combout\ <= NOT \CP|NP|out~23_combout\;
\CP|NP|ALT_INV_out~22_combout\ <= NOT \CP|NP|out~22_combout\;
\CP|NP|ALT_INV_out~20_combout\ <= NOT \CP|NP|out~20_combout\;
\CP|NP|ALT_INV_out~19_combout\ <= NOT \CP|NP|out~19_combout\;
\CP|NP|ALT_INV_Add7~4_combout\ <= NOT \CP|NP|Add7~4_combout\;
\CP|NP|ALT_INV_out~17_combout\ <= NOT \CP|NP|out~17_combout\;
\CP|NP|ALT_INV_Add1~3_combout\ <= NOT \CP|NP|Add1~3_combout\;
\CP|NP|ALT_INV_out~16_combout\ <= NOT \CP|NP|out~16_combout\;
\CP|NP|ALT_INV_Add7~3_combout\ <= NOT \CP|NP|Add7~3_combout\;
\CP|NP|ALT_INV_out~14_combout\ <= NOT \CP|NP|out~14_combout\;
\CP|NP|ALT_INV_Add1~2_combout\ <= NOT \CP|NP|Add1~2_combout\;
\CP|NP|ALT_INV_out~13_combout\ <= NOT \CP|NP|out~13_combout\;
\CP|NP|ALT_INV_Add7~2_combout\ <= NOT \CP|NP|Add7~2_combout\;
\CP|NP|ALT_INV_out~11_combout\ <= NOT \CP|NP|out~11_combout\;
\CP|NP|ALT_INV_Add1~1_combout\ <= NOT \CP|NP|Add1~1_combout\;
\CP|NP|ALT_INV_out~10_combout\ <= NOT \CP|NP|out~10_combout\;
\CP|NP|ALT_INV_Add7~1_combout\ <= NOT \CP|NP|Add7~1_combout\;
\CP|NP|ALT_INV_out~7_combout\ <= NOT \CP|NP|out~7_combout\;
\CP|NP|ALT_INV_Add1~0_combout\ <= NOT \CP|NP|Add1~0_combout\;
\CP|NP|ALT_INV_out~6_combout\ <= NOT \CP|NP|out~6_combout\;
\CP|NP|ALT_INV_out[2]~5_combout\ <= NOT \CP|NP|out[2]~5_combout\;
\CP|NP|ALT_INV_out[2]~4_combout\ <= NOT \CP|NP|out[2]~4_combout\;
\CP|NP|ALT_INV_Add7~0_combout\ <= NOT \CP|NP|Add7~0_combout\;
\CP|NP|ALT_INV_out~3_combout\ <= NOT \CP|NP|out~3_combout\;
\CP|NP|ALT_INV_out~2_combout\ <= NOT \CP|NP|out~2_combout\;
\CP|NP|ALT_INV_LessThan10~1_combout\ <= NOT \CP|NP|LessThan10~1_combout\;
\CP|NP|ALT_INV_Equal0~2_combout\ <= NOT \CP|NP|Equal0~2_combout\;
\CP|NP|ALT_INV_LessThan10~0_combout\ <= NOT \CP|NP|LessThan10~0_combout\;
\CP|NP|ALT_INV_Equal0~1_combout\ <= NOT \CP|NP|Equal0~1_combout\;
\CP|NP|ALT_INV_Equal0~0_combout\ <= NOT \CP|NP|Equal0~0_combout\;
\CP|NP|p|ALT_INV_out~q\ <= NOT \CP|NP|p|out~q\;
\CP|CLK60|ALT_INV_Equal0~4_combout\ <= NOT \CP|CLK60|Equal0~4_combout\;
\DP|ALT_INV_y_out[3]~9_combout\ <= NOT \DP|y_out[3]~9_combout\;
\DP|ALT_INV_y_out[2]~8_combout\ <= NOT \DP|y_out[2]~8_combout\;
\DP|ALT_INV_y_out[1]~7_combout\ <= NOT \DP|y_out[1]~7_combout\;
\DP|ALT_INV_y_out[0]~6_combout\ <= NOT \DP|y_out[0]~6_combout\;
\CP|CLK60|ALT_INV_Equal0~3_combout\ <= NOT \CP|CLK60|Equal0~3_combout\;
\CP|CLK60|ALT_INV_q\(19) <= NOT \CP|CLK60|q\(19);
\CP|CLK60|ALT_INV_q\(18) <= NOT \CP|CLK60|q\(18);
\CP|CLK60|ALT_INV_q\(15) <= NOT \CP|CLK60|q\(15);
\CP|CLK60|ALT_INV_q\(13) <= NOT \CP|CLK60|q\(13);
\CP|CLK60|ALT_INV_q\(12) <= NOT \CP|CLK60|q\(12);
\CP|CLK60|ALT_INV_q\(10) <= NOT \CP|CLK60|q\(10);
\CP|CLK60|ALT_INV_Equal0~2_combout\ <= NOT \CP|CLK60|Equal0~2_combout\;
\CP|CLK60|ALT_INV_q\(9) <= NOT \CP|CLK60|q\(9);
\CP|CLK60|ALT_INV_q\(8) <= NOT \CP|CLK60|q\(8);
\CP|CLK60|ALT_INV_q\(5) <= NOT \CP|CLK60|q\(5);
\CP|CLK60|ALT_INV_q\(4) <= NOT \CP|CLK60|q\(4);
\CP|CLK60|ALT_INV_q\(2) <= NOT \CP|CLK60|q\(2);
\CP|CLK60|ALT_INV_q\(0) <= NOT \CP|CLK60|q\(0);
\CP|CLK60|ALT_INV_Equal0~1_combout\ <= NOT \CP|CLK60|Equal0~1_combout\;
\CP|CLK60|ALT_INV_Equal0~0_combout\ <= NOT \CP|CLK60|Equal0~0_combout\;
\CP|RC|ALT_INV_Equal0~1_combout\ <= NOT \CP|RC|Equal0~1_combout\;
\VGA|controller|ALT_INV_always1~2_combout\ <= NOT \VGA|controller|always1~2_combout\;
\VGA|controller|ALT_INV_always1~1_combout\ <= NOT \VGA|controller|always1~1_combout\;
\CP|ALT_INV_Selector4~2_combout\ <= NOT \CP|Selector4~2_combout\;
\CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w0_n1_mux_dataout~0_combout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\;
\CP|ALT_INV_Selector4~1_combout\ <= NOT \CP|Selector4~1_combout\;
\CP|ALT_INV_Selector4~0_combout\ <= NOT \CP|Selector4~0_combout\;
\CP|ALT_INV_Selector1~4_combout\ <= NOT \CP|Selector1~4_combout\;
\CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w1_n1_mux_dataout~0_combout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\;
\CP|ALT_INV_Selector1~3_combout\ <= NOT \CP|Selector1~3_combout\;
\CP|ALT_INV_Selector1~2_combout\ <= NOT \CP|Selector1~2_combout\;
\VGA|controller|ALT_INV_Equal0~1_combout\ <= NOT \VGA|controller|Equal0~1_combout\;
\VGA|controller|ALT_INV_Equal0~0_combout\ <= NOT \VGA|controller|Equal0~0_combout\;
\CP|ALT_INV_Selector0~2_combout\ <= NOT \CP|Selector0~2_combout\;
\CP|ALT_INV_Selector1~1_combout\ <= NOT \CP|Selector1~1_combout\;
\CP|ALT_INV_Selector1~0_combout\ <= NOT \CP|Selector1~0_combout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(3) <= NOT \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(3);
\CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w2_n1_mux_dataout~0_combout\ <= NOT \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(2) <= NOT \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2);
\CP|ALT_INV_Selector0~1_combout\ <= NOT \CP|Selector0~1_combout\;
\CP|ALT_INV_Selector0~0_combout\ <= NOT \CP|Selector0~0_combout\;
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1) <= NOT \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1);
\CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0) <= NOT \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0);
\CP|ALT_INV_comb~0_combout\ <= NOT \CP|comb~0_combout\;
\DP|ALT_INV_y_out[4]~5_combout\ <= NOT \DP|y_out[4]~5_combout\;
\DP|ALT_INV_y_out[5]~4_combout\ <= NOT \DP|y_out[5]~4_combout\;
\DP|ALT_INV_y_out[6]~3_combout\ <= NOT \DP|y_out[6]~3_combout\;
\DP|ALT_INV_y_out[7]~2_combout\ <= NOT \DP|y_out[7]~2_combout\;
\DP|ALT_INV_y_out[7]~1_combout\ <= NOT \DP|y_out[7]~1_combout\;
\DP|ALT_INV_y_out[7]~0_combout\ <= NOT \DP|y_out[7]~0_combout\;
\CP|BGC|ALT_INV_Equal1~0_combout\ <= NOT \CP|BGC|Equal1~0_combout\;
\CP|BGC|ALT_INV_Equal0~2_combout\ <= NOT \CP|BGC|Equal0~2_combout\;
\CP|BGC|ALT_INV_Equal0~1_combout\ <= NOT \CP|BGC|Equal0~1_combout\;
\CP|ALT_INV_currentState.displayState~1_combout\ <= NOT \CP|currentState.displayState~1_combout\;
\CP|ALT_INV_currentState.displayState~0_combout\ <= NOT \CP|currentState.displayState~0_combout\;
\CP|CLK60|ALT_INV_out~q\ <= NOT \CP|CLK60|out~q\;
\CP|ALT_INV_Selector3~0_combout\ <= NOT \CP|Selector3~0_combout\;
\CP|RC|ALT_INV_Equal1~0_combout\ <= NOT \CP|RC|Equal1~0_combout\;
\CP|RC|ALT_INV_out\(5) <= NOT \CP|RC|out\(5);
\CP|RC|ALT_INV_out\(6) <= NOT \CP|RC|out\(6);
\CP|RC|ALT_INV_out\(7) <= NOT \CP|RC|out\(7);
\CP|RC|ALT_INV_out\(8) <= NOT \CP|RC|out\(8);
\CP|RC|ALT_INV_out\(9) <= NOT \CP|RC|out\(9);
\CP|RC|ALT_INV_Equal0~0_combout\ <= NOT \CP|RC|Equal0~0_combout\;
\CP|RC|ALT_INV_out\(1) <= NOT \CP|RC|out\(1);
\CP|RC|ALT_INV_out\(2) <= NOT \CP|RC|out\(2);
\CP|RC|ALT_INV_out\(3) <= NOT \CP|RC|out\(3);
\CP|RC|ALT_INV_out\(4) <= NOT \CP|RC|out\(4);
\CP|ALT_INV_Equal1~3_combout\ <= NOT \CP|Equal1~3_combout\;
\CP|ALT_INV_Equal1~2_combout\ <= NOT \CP|Equal1~2_combout\;
\CP|BGC|ALT_INV_out\(7) <= NOT \CP|BGC|out\(7);
\CP|BGC|ALT_INV_out\(6) <= NOT \CP|BGC|out\(6);
\CP|BGC|ALT_INV_out\(5) <= NOT \CP|BGC|out\(5);
\CP|BGC|ALT_INV_out\(4) <= NOT \CP|BGC|out\(4);
\CP|ALT_INV_Equal1~1_combout\ <= NOT \CP|Equal1~1_combout\;
\CP|BGC|ALT_INV_Equal0~0_combout\ <= NOT \CP|BGC|Equal0~0_combout\;
\CP|BGC|ALT_INV_out\(3) <= NOT \CP|BGC|out\(3);
\CP|BGC|ALT_INV_out\(2) <= NOT \CP|BGC|out\(2);
\CP|BGC|ALT_INV_out\(0) <= NOT \CP|BGC|out\(0);
\CP|BGC|ALT_INV_out\(1) <= NOT \CP|BGC|out\(1);
\CP|ALT_INV_Equal1~0_combout\ <= NOT \CP|Equal1~0_combout\;
\VGA|controller|ALT_INV_always1~0_combout\ <= NOT \VGA|controller|always1~0_combout\;
\VGA|controller|ALT_INV_VGA_VS1~0_combout\ <= NOT \VGA|controller|VGA_VS1~0_combout\;
\VGA|controller|ALT_INV_VGA_HS1~0_combout\ <= NOT \VGA|controller|VGA_HS1~0_combout\;
\CP|BGC|ALT_INV_out\(13) <= NOT \CP|BGC|out\(13);
\CP|BGC|ALT_INV_out\(12) <= NOT \CP|BGC|out\(12);
\CP|BGC|ALT_INV_out\(11) <= NOT \CP|BGC|out\(11);
\CP|BGC|ALT_INV_out\(10) <= NOT \CP|BGC|out\(10);
\CP|BGC|ALT_INV_out\(9) <= NOT \CP|BGC|out\(9);
\CP|BGC|ALT_INV_out\(8) <= NOT \CP|BGC|out\(8);
\VGA|ALT_INV_writeEn~2_combout\ <= NOT \VGA|writeEn~2_combout\;
\VGA|ALT_INV_writeEn~1_combout\ <= NOT \VGA|writeEn~1_combout\;
\VGA|ALT_INV_writeEn~0_combout\ <= NOT \VGA|writeEn~0_combout\;
\CP|BGC|ALT_INV_out\(14) <= NOT \CP|BGC|out\(14);
\CP|BGC|ALT_INV_out\(15) <= NOT \CP|BGC|out\(15);
\CP|BGC|ALT_INV_out\(16) <= NOT \CP|BGC|out\(16);
\VGA|controller|ALT_INV_VGA_BLANK1~q\ <= NOT \VGA|controller|VGA_BLANK1~q\;
\VGA|controller|ALT_INV_VGA_HS1~q\ <= NOT \VGA|controller|VGA_HS1~q\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(1);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(2);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(3);
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(0);
\CP|NP|ALT_INV_Add10~29_sumout\ <= NOT \CP|NP|Add10~29_sumout\;
\CP|NP|ALT_INV_Add9~29_sumout\ <= NOT \CP|NP|Add9~29_sumout\;
\CP|NP|ALT_INV_Add6~29_sumout\ <= NOT \CP|NP|Add6~29_sumout\;
\CP|NP|ALT_INV_Add4~29_sumout\ <= NOT \CP|NP|Add4~29_sumout\;
\CP|NP|ALT_INV_Add3~29_sumout\ <= NOT \CP|NP|Add3~29_sumout\;
\CP|NP|ALT_INV_Add0~29_sumout\ <= NOT \CP|NP|Add0~29_sumout\;
\CP|NP|ALT_INV_POSIN~q\ <= NOT \CP|NP|POSIN~q\;
\CP|NP|ALT_INV_Add8~25_sumout\ <= NOT \CP|NP|Add8~25_sumout\;
\CP|NP|ALT_INV_Add2~25_sumout\ <= NOT \CP|NP|Add2~25_sumout\;
\CP|NP|ALT_INV_Add9~25_sumout\ <= NOT \CP|NP|Add9~25_sumout\;
\CP|NP|ALT_INV_Add3~25_sumout\ <= NOT \CP|NP|Add3~25_sumout\;
\CP|NP|ALT_INV_Add10~25_sumout\ <= NOT \CP|NP|Add10~25_sumout\;
\CP|NP|ALT_INV_Add4~25_sumout\ <= NOT \CP|NP|Add4~25_sumout\;
\CP|NP|ALT_INV_Add0~25_sumout\ <= NOT \CP|NP|Add0~25_sumout\;
\CP|NP|ALT_INV_Add6~25_sumout\ <= NOT \CP|NP|Add6~25_sumout\;
\CP|NP|ALT_INV_Add0~21_sumout\ <= NOT \CP|NP|Add0~21_sumout\;
\CP|NP|ALT_INV_Add4~21_sumout\ <= NOT \CP|NP|Add4~21_sumout\;
\CP|NP|ALT_INV_Add2~21_sumout\ <= NOT \CP|NP|Add2~21_sumout\;
\CP|NP|ALT_INV_Add3~21_sumout\ <= NOT \CP|NP|Add3~21_sumout\;
\CP|NP|ALT_INV_Add6~21_sumout\ <= NOT \CP|NP|Add6~21_sumout\;
\CP|NP|ALT_INV_Add10~21_sumout\ <= NOT \CP|NP|Add10~21_sumout\;
\CP|NP|ALT_INV_Add8~21_sumout\ <= NOT \CP|NP|Add8~21_sumout\;
\CP|NP|ALT_INV_Add9~21_sumout\ <= NOT \CP|NP|Add9~21_sumout\;
\CP|NP|ALT_INV_Add0~17_sumout\ <= NOT \CP|NP|Add0~17_sumout\;
\CP|NP|ALT_INV_Add4~17_sumout\ <= NOT \CP|NP|Add4~17_sumout\;
\CP|NP|ALT_INV_Add2~17_sumout\ <= NOT \CP|NP|Add2~17_sumout\;
\CP|NP|ALT_INV_Add3~17_sumout\ <= NOT \CP|NP|Add3~17_sumout\;
\CP|NP|ALT_INV_Add6~17_sumout\ <= NOT \CP|NP|Add6~17_sumout\;
\CP|NP|ALT_INV_Add10~17_sumout\ <= NOT \CP|NP|Add10~17_sumout\;
\CP|NP|ALT_INV_Add8~17_sumout\ <= NOT \CP|NP|Add8~17_sumout\;
\CP|NP|ALT_INV_Add9~17_sumout\ <= NOT \CP|NP|Add9~17_sumout\;
\CP|NP|ALT_INV_Add0~13_sumout\ <= NOT \CP|NP|Add0~13_sumout\;
\CP|NP|ALT_INV_Add4~13_sumout\ <= NOT \CP|NP|Add4~13_sumout\;
\CP|NP|ALT_INV_Add2~13_sumout\ <= NOT \CP|NP|Add2~13_sumout\;
\CP|NP|ALT_INV_Add3~13_sumout\ <= NOT \CP|NP|Add3~13_sumout\;
\CP|NP|ALT_INV_Add6~13_sumout\ <= NOT \CP|NP|Add6~13_sumout\;
\CP|NP|ALT_INV_Add10~13_sumout\ <= NOT \CP|NP|Add10~13_sumout\;
\CP|NP|ALT_INV_Add8~13_sumout\ <= NOT \CP|NP|Add8~13_sumout\;
\CP|NP|ALT_INV_Add9~13_sumout\ <= NOT \CP|NP|Add9~13_sumout\;
\CP|NP|ALT_INV_Add0~9_sumout\ <= NOT \CP|NP|Add0~9_sumout\;
\CP|NP|ALT_INV_Add4~9_sumout\ <= NOT \CP|NP|Add4~9_sumout\;
\CP|NP|ALT_INV_Add2~9_sumout\ <= NOT \CP|NP|Add2~9_sumout\;
\CP|NP|ALT_INV_Add3~9_sumout\ <= NOT \CP|NP|Add3~9_sumout\;
\CP|NP|ALT_INV_Add6~9_sumout\ <= NOT \CP|NP|Add6~9_sumout\;
\CP|NP|ALT_INV_Add10~9_sumout\ <= NOT \CP|NP|Add10~9_sumout\;
\CP|NP|ALT_INV_Add8~9_sumout\ <= NOT \CP|NP|Add8~9_sumout\;
\CP|NP|ALT_INV_Add9~9_sumout\ <= NOT \CP|NP|Add9~9_sumout\;
\CP|NP|ALT_INV_Add0~5_sumout\ <= NOT \CP|NP|Add0~5_sumout\;
\CP|NP|ALT_INV_Add4~5_sumout\ <= NOT \CP|NP|Add4~5_sumout\;
\CP|NP|ALT_INV_Add2~5_sumout\ <= NOT \CP|NP|Add2~5_sumout\;
\CP|NP|ALT_INV_Add3~5_sumout\ <= NOT \CP|NP|Add3~5_sumout\;
\CP|NP|ALT_INV_Add6~5_sumout\ <= NOT \CP|NP|Add6~5_sumout\;
\CP|NP|ALT_INV_Add10~5_sumout\ <= NOT \CP|NP|Add10~5_sumout\;
\CP|NP|ALT_INV_Add8~5_sumout\ <= NOT \CP|NP|Add8~5_sumout\;
\CP|NP|ALT_INV_Add9~5_sumout\ <= NOT \CP|NP|Add9~5_sumout\;
\CP|NP|ALT_INV_Add0~1_sumout\ <= NOT \CP|NP|Add0~1_sumout\;
\CP|NP|ALT_INV_Add4~1_sumout\ <= NOT \CP|NP|Add4~1_sumout\;
\CP|NP|ALT_INV_Add2~1_sumout\ <= NOT \CP|NP|Add2~1_sumout\;
\CP|NP|ALT_INV_Add3~1_sumout\ <= NOT \CP|NP|Add3~1_sumout\;
\CP|NP|ALT_INV_Add6~1_sumout\ <= NOT \CP|NP|Add6~1_sumout\;
\CP|NP|ALT_INV_Add10~1_sumout\ <= NOT \CP|NP|Add10~1_sumout\;
\CP|NP|ALT_INV_Add8~1_sumout\ <= NOT \CP|NP|Add8~1_sumout\;
\CP|NP|ALT_INV_Add9~1_sumout\ <= NOT \CP|NP|Add9~1_sumout\;
\CP|NP|ALT_INV_Add5~5_sumout\ <= NOT \CP|NP|Add5~5_sumout\;
\CP|NP|ALT_INV_out\(0) <= NOT \CP|NP|out\(0);
\CP|CLK60|ALT_INV_Add0~77_sumout\ <= NOT \CP|CLK60|Add0~77_sumout\;
\CP|CLK60|ALT_INV_Add0~73_sumout\ <= NOT \CP|CLK60|Add0~73_sumout\;
\CP|CLK60|ALT_INV_Add0~69_sumout\ <= NOT \CP|CLK60|Add0~69_sumout\;
\CP|CLK60|ALT_INV_Add0~65_sumout\ <= NOT \CP|CLK60|Add0~65_sumout\;
\CP|CLK60|ALT_INV_Add0~61_sumout\ <= NOT \CP|CLK60|Add0~61_sumout\;
\CP|CLK60|ALT_INV_Add0~57_sumout\ <= NOT \CP|CLK60|Add0~57_sumout\;
\CP|CLK60|ALT_INV_Add0~53_sumout\ <= NOT \CP|CLK60|Add0~53_sumout\;
\CP|CLK60|ALT_INV_Add0~49_sumout\ <= NOT \CP|CLK60|Add0~49_sumout\;
\CP|CLK60|ALT_INV_Add0~45_sumout\ <= NOT \CP|CLK60|Add0~45_sumout\;
\CP|CLK60|ALT_INV_Add0~41_sumout\ <= NOT \CP|CLK60|Add0~41_sumout\;
\CP|CLK60|ALT_INV_Add0~37_sumout\ <= NOT \CP|CLK60|Add0~37_sumout\;
\CP|CLK60|ALT_INV_Add0~33_sumout\ <= NOT \CP|CLK60|Add0~33_sumout\;
\DP|ALT_INV_Add1~29_sumout\ <= NOT \DP|Add1~29_sumout\;
\DP|ALT_INV_Add1~25_sumout\ <= NOT \DP|Add1~25_sumout\;
\DP|ALT_INV_Add1~21_sumout\ <= NOT \DP|Add1~21_sumout\;
\CP|NP|ALT_INV_out\(13) <= NOT \CP|NP|out\(13);
\CP|NP|ALT_INV_out\(12) <= NOT \CP|NP|out\(12);
\CP|NP|ALT_INV_out\(11) <= NOT \CP|NP|out\(11);
\CP|NP|ALT_INV_out\(10) <= NOT \CP|NP|out\(10);
\CP|NP|ALT_INV_out\(9) <= NOT \CP|NP|out\(9);
\CP|NP|ALT_INV_out\(8) <= NOT \CP|NP|out\(8);

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_HS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_VS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X89_Y25_N22
\VGA_BLANK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_BLANK~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK);

-- Location: IOOBUF_X89_Y16_N5
\VGA_SYNC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X40_Y81_N2
\VGA_R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(8));

-- Location: IOOBUF_X30_Y81_N53
\VGA_R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(9));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X4_Y81_N53
\VGA_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(8));

-- Location: IOOBUF_X24_Y81_N36
\VGA_G[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(9));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X89_Y25_N39
\VGA_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(8));

-- Location: IOOBUF_X89_Y25_N56
\VGA_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	ecnc1test => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	tclk => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	up0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	vco0ph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \VGA|mypll|altpll_component|auto_generated|clk\(0));

-- Location: CLKCTRL_G6
\VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|auto_generated|clk\(0),
	outclk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\);

-- Location: LABCELL_X36_Y56_N0
\VGA|controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~37_sumout\ = SUM(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add0~38\ = CARRY(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add0~37_sumout\,
	cout => \VGA|controller|Add0~38\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X36_Y56_N28
\VGA|controller|xCounter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[9]~DUPLICATE_q\);

-- Location: FF_X36_Y56_N10
\VGA|controller|xCounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y56_N57
\VGA|controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~0_combout\ = ( \VGA|controller|xCounter\(8) & ( \VGA|controller|xCounter[3]~DUPLICATE_q\ & ( (\VGA|controller|xCounter\(4) & (\VGA|controller|xCounter\(2) & \VGA|controller|xCounter[9]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_xCounter\(4),
	datac => \VGA|controller|ALT_INV_xCounter\(2),
	datad => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	datae => \VGA|controller|ALT_INV_xCounter\(8),
	dataf => \VGA|controller|ALT_INV_xCounter[3]~DUPLICATE_q\,
	combout => \VGA|controller|Equal0~0_combout\);

-- Location: FF_X36_Y56_N22
\VGA|controller|xCounter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[7]~DUPLICATE_q\);

-- Location: FF_X36_Y56_N17
\VGA|controller|xCounter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[5]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y56_N39
\VGA|controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~1_combout\ = ( !\VGA|controller|xCounter[5]~DUPLICATE_q\ & ( \VGA|controller|xCounter\(0) & ( (!\VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(6),
	datac => \VGA|controller|ALT_INV_xCounter\(1),
	datae => \VGA|controller|ALT_INV_xCounter[5]~DUPLICATE_q\,
	dataf => \VGA|controller|ALT_INV_xCounter\(0),
	combout => \VGA|controller|Equal0~1_combout\);

-- Location: LABCELL_X37_Y56_N3
\VGA|controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~2_combout\ = ( \VGA|controller|Equal0~1_combout\ & ( (\VGA|controller|Equal0~0_combout\ & !\VGA|controller|xCounter[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_Equal0~0_combout\,
	datad => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	dataf => \VGA|controller|ALT_INV_Equal0~1_combout\,
	combout => \VGA|controller|Equal0~2_combout\);

-- Location: FF_X36_Y56_N1
\VGA|controller|xCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(0));

-- Location: LABCELL_X36_Y56_N3
\VGA|controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~1_sumout\ = SUM(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))
-- \VGA|controller|Add0~2\ = CARRY(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(1),
	cin => \VGA|controller|Add0~38\,
	sumout => \VGA|controller|Add0~1_sumout\,
	cout => \VGA|controller|Add0~2\);

-- Location: FF_X36_Y56_N4
\VGA|controller|xCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(1));

-- Location: LABCELL_X36_Y56_N6
\VGA|controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~5_sumout\ = SUM(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))
-- \VGA|controller|Add0~6\ = CARRY(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	cin => \VGA|controller|Add0~2\,
	sumout => \VGA|controller|Add0~5_sumout\,
	cout => \VGA|controller|Add0~6\);

-- Location: FF_X36_Y56_N8
\VGA|controller|xCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(2));

-- Location: LABCELL_X36_Y56_N9
\VGA|controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~9_sumout\ = SUM(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))
-- \VGA|controller|Add0~10\ = CARRY(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	cin => \VGA|controller|Add0~6\,
	sumout => \VGA|controller|Add0~9_sumout\,
	cout => \VGA|controller|Add0~10\);

-- Location: FF_X36_Y56_N11
\VGA|controller|xCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(3));

-- Location: LABCELL_X36_Y56_N12
\VGA|controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~13_sumout\ = SUM(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))
-- \VGA|controller|Add0~14\ = CARRY(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(4),
	cin => \VGA|controller|Add0~10\,
	sumout => \VGA|controller|Add0~13_sumout\,
	cout => \VGA|controller|Add0~14\);

-- Location: FF_X36_Y56_N14
\VGA|controller|xCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(4));

-- Location: LABCELL_X36_Y56_N15
\VGA|controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~17_sumout\ = SUM(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))
-- \VGA|controller|Add0~18\ = CARRY(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(5),
	cin => \VGA|controller|Add0~14\,
	sumout => \VGA|controller|Add0~17_sumout\,
	cout => \VGA|controller|Add0~18\);

-- Location: FF_X36_Y56_N16
\VGA|controller|xCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(5));

-- Location: LABCELL_X36_Y56_N18
\VGA|controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~21_sumout\ = SUM(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))
-- \VGA|controller|Add0~22\ = CARRY(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(6),
	cin => \VGA|controller|Add0~18\,
	sumout => \VGA|controller|Add0~21_sumout\,
	cout => \VGA|controller|Add0~22\);

-- Location: FF_X36_Y56_N19
\VGA|controller|xCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(6));

-- Location: LABCELL_X36_Y56_N21
\VGA|controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~33_sumout\ = SUM(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~22\ ))
-- \VGA|controller|Add0~34\ = CARRY(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(7),
	cin => \VGA|controller|Add0~22\,
	sumout => \VGA|controller|Add0~33_sumout\,
	cout => \VGA|controller|Add0~34\);

-- Location: FF_X36_Y56_N23
\VGA|controller|xCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(7));

-- Location: LABCELL_X36_Y56_N24
\VGA|controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~29_sumout\ = SUM(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))
-- \VGA|controller|Add0~30\ = CARRY(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(8),
	cin => \VGA|controller|Add0~34\,
	sumout => \VGA|controller|Add0~29_sumout\,
	cout => \VGA|controller|Add0~30\);

-- Location: FF_X36_Y56_N26
\VGA|controller|xCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(8));

-- Location: LABCELL_X36_Y56_N27
\VGA|controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~25_sumout\ = SUM(( \VGA|controller|xCounter\(9) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|Add0~30\,
	sumout => \VGA|controller|Add0~25_sumout\);

-- Location: FF_X36_Y56_N29
\VGA|controller|xCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(9));

-- Location: LABCELL_X36_Y56_N36
\VGA|controller|VGA_HS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~0_combout\ = ( \VGA|controller|xCounter\(0) & ( \VGA|controller|xCounter\(2) & ( \VGA|controller|xCounter\(4) ) ) ) # ( !\VGA|controller|xCounter\(0) & ( \VGA|controller|xCounter\(2) & ( \VGA|controller|xCounter\(4) ) ) ) # ( 
-- \VGA|controller|xCounter\(0) & ( !\VGA|controller|xCounter\(2) & ( (\VGA|controller|xCounter\(4) & ((\VGA|controller|xCounter\(3)) # (\VGA|controller|xCounter\(1)))) ) ) ) # ( !\VGA|controller|xCounter\(0) & ( !\VGA|controller|xCounter\(2) & ( 
-- (\VGA|controller|xCounter\(4) & \VGA|controller|xCounter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100010011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(1),
	datab => \VGA|controller|ALT_INV_xCounter\(4),
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	datae => \VGA|controller|ALT_INV_xCounter\(0),
	dataf => \VGA|controller|ALT_INV_xCounter\(2),
	combout => \VGA|controller|VGA_HS1~0_combout\);

-- Location: LABCELL_X36_Y56_N42
\VGA|controller|VGA_HS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~1_combout\ = ( \VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(5) & ( (!\VGA|controller|xCounter\(9)) # (((\VGA|controller|xCounter\(6) & \VGA|controller|VGA_HS1~0_combout\)) # (\VGA|controller|xCounter\(8))) ) ) ) # ( 
-- !\VGA|controller|xCounter\(7) & ( \VGA|controller|xCounter\(5) ) ) # ( \VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(5) & ( (!\VGA|controller|xCounter\(9)) # (((!\VGA|controller|xCounter\(6) & !\VGA|controller|VGA_HS1~0_combout\)) # 
-- (\VGA|controller|xCounter\(8))) ) ) ) # ( !\VGA|controller|xCounter\(7) & ( !\VGA|controller|xCounter\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011111010111111111111111111111010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(9),
	datab => \VGA|controller|ALT_INV_xCounter\(6),
	datac => \VGA|controller|ALT_INV_xCounter\(8),
	datad => \VGA|controller|ALT_INV_VGA_HS1~0_combout\,
	datae => \VGA|controller|ALT_INV_xCounter\(7),
	dataf => \VGA|controller|ALT_INV_xCounter\(5),
	combout => \VGA|controller|VGA_HS1~1_combout\);

-- Location: FF_X36_Y56_N43
\VGA|controller|VGA_HS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS1~q\);

-- Location: LABCELL_X36_Y80_N0
\VGA|controller|VGA_HS~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS~feeder_combout\ = ( \VGA|controller|VGA_HS1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_HS1~q\,
	combout => \VGA|controller|VGA_HS~feeder_combout\);

-- Location: FF_X36_Y80_N1
\VGA|controller|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS~q\);

-- Location: LABCELL_X37_Y56_N30
\VGA|controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add1~10\ = CARRY(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add1~9_sumout\,
	cout => \VGA|controller|Add1~10\);

-- Location: LABCELL_X37_Y56_N9
\VGA|controller|always1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~2_combout\ = ( \VGA|controller|yCounter\(2) & ( !\VGA|controller|yCounter\(0) & ( (!\VGA|controller|yCounter\(1) & (\VGA|controller|yCounter\(3) & !\VGA|controller|yCounter\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(1),
	datab => \VGA|controller|ALT_INV_yCounter\(3),
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	datae => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(0),
	combout => \VGA|controller|always1~2_combout\);

-- Location: LABCELL_X37_Y56_N0
\VGA|controller|always1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~1_combout\ = ( !\VGA|controller|yCounter\(5) & ( (\VGA|controller|yCounter\(9) & (!\VGA|controller|yCounter\(7) & (!\VGA|controller|yCounter\(6) & !\VGA|controller|yCounter\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(9),
	datab => \VGA|controller|ALT_INV_yCounter\(7),
	datac => \VGA|controller|ALT_INV_yCounter\(6),
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	dataf => \VGA|controller|ALT_INV_yCounter\(5),
	combout => \VGA|controller|always1~1_combout\);

-- Location: LABCELL_X37_Y56_N12
\VGA|controller|always1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~3_combout\ = ( \VGA|controller|always1~1_combout\ & ( \VGA|controller|Equal0~1_combout\ & ( (\VGA|controller|always1~2_combout\ & (!\VGA|controller|xCounter[7]~DUPLICATE_q\ & \VGA|controller|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_always1~2_combout\,
	datac => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_Equal0~0_combout\,
	datae => \VGA|controller|ALT_INV_always1~1_combout\,
	dataf => \VGA|controller|ALT_INV_Equal0~1_combout\,
	combout => \VGA|controller|always1~3_combout\);

-- Location: FF_X37_Y56_N32
\VGA|controller|yCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(0));

-- Location: LABCELL_X37_Y56_N33
\VGA|controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))
-- \VGA|controller|Add1~2\ = CARRY(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	cin => \VGA|controller|Add1~10\,
	sumout => \VGA|controller|Add1~1_sumout\,
	cout => \VGA|controller|Add1~2\);

-- Location: FF_X37_Y56_N34
\VGA|controller|yCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(1));

-- Location: LABCELL_X37_Y56_N36
\VGA|controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~2\ ))
-- \VGA|controller|Add1~38\ = CARRY(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|Add1~2\,
	sumout => \VGA|controller|Add1~37_sumout\,
	cout => \VGA|controller|Add1~38\);

-- Location: FF_X37_Y56_N37
\VGA|controller|yCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(2));

-- Location: LABCELL_X37_Y56_N39
\VGA|controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~33_sumout\ = SUM(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))
-- \VGA|controller|Add1~34\ = CARRY(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(3),
	cin => \VGA|controller|Add1~38\,
	sumout => \VGA|controller|Add1~33_sumout\,
	cout => \VGA|controller|Add1~34\);

-- Location: FF_X37_Y56_N41
\VGA|controller|yCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(3));

-- Location: LABCELL_X37_Y56_N42
\VGA|controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~29_sumout\ = SUM(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))
-- \VGA|controller|Add1~30\ = CARRY(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|Add1~34\,
	sumout => \VGA|controller|Add1~29_sumout\,
	cout => \VGA|controller|Add1~30\);

-- Location: FF_X37_Y56_N43
\VGA|controller|yCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(4));

-- Location: LABCELL_X37_Y56_N45
\VGA|controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~21_sumout\ = SUM(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))
-- \VGA|controller|Add1~22\ = CARRY(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(5),
	cin => \VGA|controller|Add1~30\,
	sumout => \VGA|controller|Add1~21_sumout\,
	cout => \VGA|controller|Add1~22\);

-- Location: FF_X37_Y56_N46
\VGA|controller|yCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(5));

-- Location: LABCELL_X37_Y56_N48
\VGA|controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))
-- \VGA|controller|Add1~14\ = CARRY(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(6),
	cin => \VGA|controller|Add1~22\,
	sumout => \VGA|controller|Add1~13_sumout\,
	cout => \VGA|controller|Add1~14\);

-- Location: FF_X37_Y56_N50
\VGA|controller|yCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(6));

-- Location: LABCELL_X37_Y56_N51
\VGA|controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~25_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))
-- \VGA|controller|Add1~26\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|Add1~14\,
	sumout => \VGA|controller|Add1~25_sumout\,
	cout => \VGA|controller|Add1~26\);

-- Location: FF_X37_Y56_N52
\VGA|controller|yCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(7));

-- Location: LABCELL_X37_Y56_N54
\VGA|controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~17_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))
-- \VGA|controller|Add1~18\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|Add1~26\,
	sumout => \VGA|controller|Add1~17_sumout\,
	cout => \VGA|controller|Add1~18\);

-- Location: FF_X37_Y56_N55
\VGA|controller|yCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(8));

-- Location: LABCELL_X37_Y56_N57
\VGA|controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~5_sumout\ = SUM(( \VGA|controller|yCounter\(9) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(9),
	cin => \VGA|controller|Add1~18\,
	sumout => \VGA|controller|Add1~5_sumout\);

-- Location: FF_X37_Y56_N58
\VGA|controller|yCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(9));

-- Location: LABCELL_X37_Y56_N21
\VGA|controller|VGA_VS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~0_combout\ = ( \VGA|controller|yCounter\(5) & ( (\VGA|controller|yCounter\(6) & (\VGA|controller|yCounter\(8) & \VGA|controller|yCounter\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(6),
	datac => \VGA|controller|ALT_INV_yCounter\(8),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	dataf => \VGA|controller|ALT_INV_yCounter\(5),
	combout => \VGA|controller|VGA_VS1~0_combout\);

-- Location: LABCELL_X37_Y56_N18
\VGA|controller|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~0_combout\ = ( \VGA|controller|yCounter\(3) & ( (!\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(4),
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(3),
	combout => \VGA|controller|always1~0_combout\);

-- Location: LABCELL_X37_Y56_N27
\VGA|controller|VGA_VS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~1_combout\ = ( \VGA|controller|yCounter\(1) & ( ((!\VGA|controller|VGA_VS1~0_combout\) # ((!\VGA|controller|always1~0_combout\) # (\VGA|controller|yCounter\(0)))) # (\VGA|controller|yCounter\(9)) ) ) # ( 
-- !\VGA|controller|yCounter\(1) & ( ((!\VGA|controller|VGA_VS1~0_combout\) # ((!\VGA|controller|yCounter\(0)) # (!\VGA|controller|always1~0_combout\))) # (\VGA|controller|yCounter\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111110111111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(9),
	datab => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	datac => \VGA|controller|ALT_INV_yCounter\(0),
	datad => \VGA|controller|ALT_INV_always1~0_combout\,
	dataf => \VGA|controller|ALT_INV_yCounter\(1),
	combout => \VGA|controller|VGA_VS1~1_combout\);

-- Location: FF_X37_Y56_N28
\VGA|controller|VGA_VS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS1~q\);

-- Location: FF_X36_Y62_N13
\VGA|controller|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|VGA_VS1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS~q\);

-- Location: LABCELL_X37_Y56_N24
\VGA|controller|VGA_BLANK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~0_combout\ = ( \VGA|controller|xCounter\(8) & ( (!\VGA|controller|yCounter\(9) & (!\VGA|controller|VGA_VS1~0_combout\ & !\VGA|controller|xCounter[9]~DUPLICATE_q\)) ) ) # ( !\VGA|controller|xCounter\(8) & ( 
-- (!\VGA|controller|yCounter\(9) & (!\VGA|controller|VGA_VS1~0_combout\ & ((!\VGA|controller|xCounter[9]~DUPLICATE_q\) # (!\VGA|controller|xCounter[7]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(9),
	datab => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	datac => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	dataf => \VGA|controller|ALT_INV_xCounter\(8),
	combout => \VGA|controller|VGA_BLANK1~0_combout\);

-- Location: FF_X37_Y56_N25
\VGA|controller|VGA_BLANK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK1~q\);

-- Location: MLABCELL_X78_Y25_N36
\VGA|controller|VGA_BLANK~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK~feeder_combout\ = ( \VGA|controller|VGA_BLANK1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_BLANK1~q\,
	combout => \VGA|controller|VGA_BLANK~feeder_combout\);

-- Location: FF_X78_Y25_N37
\VGA|controller|VGA_BLANK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK~q\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X36_Y52_N0
\CP|RC|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~1_sumout\ = SUM(( \CP|RC|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|RC|Add2~2\ = CARRY(( \CP|RC|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|RC|Add2~1_sumout\,
	cout => \CP|RC|Add2~2\);

-- Location: LABCELL_X36_Y52_N57
\CP|RC|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~0_combout\ = ( \CP|RC|Add2~1_sumout\ & ( (\CP|RCenable~combout\ & !\CP|RC|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_RCenable~combout\,
	datad => \CP|RC|ALT_INV_Equal0~1_combout\,
	dataf => \CP|RC|ALT_INV_Add2~1_sumout\,
	combout => \CP|RC|out~0_combout\);

-- Location: FF_X36_Y52_N41
\CP|RC|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|RC|out~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(0));

-- Location: LABCELL_X36_Y52_N3
\CP|RC|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~17_sumout\ = SUM(( \CP|RC|out\(1) ) + ( GND ) + ( \CP|RC|Add2~2\ ))
-- \CP|RC|Add2~18\ = CARRY(( \CP|RC|out\(1) ) + ( GND ) + ( \CP|RC|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(1),
	cin => \CP|RC|Add2~2\,
	sumout => \CP|RC|Add2~17_sumout\,
	cout => \CP|RC|Add2~18\);

-- Location: LABCELL_X35_Y52_N54
\CP|RC|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~4_combout\ = ( \KEY[0]~input_o\ & ( (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\ & (\CP|RC|Add2~17_sumout\)) # (\CP|RC|Equal0~1_combout\ & ((\CP|RC|Equal1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \CP|RC|ALT_INV_Equal0~1_combout\,
	datac => \CP|RC|ALT_INV_Add2~17_sumout\,
	datad => \CP|RC|ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \CP|RC|out~4_combout\);

-- Location: FF_X35_Y52_N56
\CP|RC|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(1));

-- Location: LABCELL_X36_Y52_N6
\CP|RC|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~13_sumout\ = SUM(( \CP|RC|out\(2) ) + ( GND ) + ( \CP|RC|Add2~18\ ))
-- \CP|RC|Add2~14\ = CARRY(( \CP|RC|out\(2) ) + ( GND ) + ( \CP|RC|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(2),
	cin => \CP|RC|Add2~18\,
	sumout => \CP|RC|Add2~13_sumout\,
	cout => \CP|RC|Add2~14\);

-- Location: LABCELL_X36_Y52_N33
\CP|RC|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~3_combout\ = ( \CP|RC|Add2~13_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\) # (\CP|RC|Equal1~0_combout\)))) ) ) # ( !\CP|RC|Add2~13_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RC|Equal1~0_combout\ & 
-- (\CP|RCenable~combout\ & \CP|RC|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000101000000010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|RC|ALT_INV_Equal1~0_combout\,
	datac => \CP|ALT_INV_RCenable~combout\,
	datad => \CP|RC|ALT_INV_Equal0~1_combout\,
	dataf => \CP|RC|ALT_INV_Add2~13_sumout\,
	combout => \CP|RC|out~3_combout\);

-- Location: FF_X35_Y52_N29
\CP|RC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|RC|out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(2));

-- Location: LABCELL_X36_Y52_N9
\CP|RC|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~9_sumout\ = SUM(( \CP|RC|out\(3) ) + ( GND ) + ( \CP|RC|Add2~14\ ))
-- \CP|RC|Add2~10\ = CARRY(( \CP|RC|out\(3) ) + ( GND ) + ( \CP|RC|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(3),
	cin => \CP|RC|Add2~14\,
	sumout => \CP|RC|Add2~9_sumout\,
	cout => \CP|RC|Add2~10\);

-- Location: LABCELL_X35_Y52_N57
\CP|RC|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~2_combout\ = ( \KEY[0]~input_o\ & ( (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\ & ((\CP|RC|Add2~9_sumout\))) # (\CP|RC|Equal0~1_combout\ & (\CP|RC|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \CP|RC|ALT_INV_Equal0~1_combout\,
	datac => \CP|RC|ALT_INV_Equal1~0_combout\,
	datad => \CP|RC|ALT_INV_Add2~9_sumout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \CP|RC|out~2_combout\);

-- Location: FF_X35_Y52_N59
\CP|RC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(3));

-- Location: LABCELL_X36_Y52_N12
\CP|RC|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~5_sumout\ = SUM(( \CP|RC|out\(4) ) + ( GND ) + ( \CP|RC|Add2~10\ ))
-- \CP|RC|Add2~6\ = CARRY(( \CP|RC|out\(4) ) + ( GND ) + ( \CP|RC|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(4),
	cin => \CP|RC|Add2~10\,
	sumout => \CP|RC|Add2~5_sumout\,
	cout => \CP|RC|Add2~6\);

-- Location: LABCELL_X36_Y52_N30
\CP|RC|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~1_combout\ = ( \CP|RC|Add2~5_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\) # (\CP|RC|Equal1~0_combout\)))) ) ) # ( !\CP|RC|Add2~5_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RC|Equal1~0_combout\ & 
-- (\CP|RC|Equal0~1_combout\ & \CP|RCenable~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000010100010000000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|RC|ALT_INV_Equal1~0_combout\,
	datac => \CP|RC|ALT_INV_Equal0~1_combout\,
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|RC|ALT_INV_Add2~5_sumout\,
	combout => \CP|RC|out~1_combout\);

-- Location: FF_X36_Y52_N32
\CP|RC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(4));

-- Location: LABCELL_X35_Y52_N27
\CP|RC|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Equal0~1_combout\ = ( \CP|RC|out\(4) & ( (\CP|RC|out\(1) & (\CP|RC|out\(3) & (!\CP|RC|out\(0) & \CP|RC|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(1),
	datab => \CP|RC|ALT_INV_out\(3),
	datac => \CP|RC|ALT_INV_out\(0),
	datad => \CP|RC|ALT_INV_out\(2),
	dataf => \CP|RC|ALT_INV_out\(4),
	combout => \CP|RC|Equal0~1_combout\);

-- Location: LABCELL_X36_Y52_N15
\CP|RC|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~37_sumout\ = SUM(( \CP|RC|out\(5) ) + ( GND ) + ( \CP|RC|Add2~6\ ))
-- \CP|RC|Add2~38\ = CARRY(( \CP|RC|out\(5) ) + ( GND ) + ( \CP|RC|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(5),
	cin => \CP|RC|Add2~6\,
	sumout => \CP|RC|Add2~37_sumout\,
	cout => \CP|RC|Add2~38\);

-- Location: MLABCELL_X34_Y52_N30
\CP|RC|Add1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~30_cout\ = CARRY(( \CP|RC|out\(2) ) + ( \CP|RC|out\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(2),
	dataf => \CP|RC|ALT_INV_out\(1),
	cin => GND,
	cout => \CP|RC|Add1~30_cout\);

-- Location: MLABCELL_X34_Y52_N33
\CP|RC|Add1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~26_cout\ = CARRY(( \CP|RC|out\(3) ) + ( GND ) + ( \CP|RC|Add1~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(3),
	cin => \CP|RC|Add1~30_cout\,
	cout => \CP|RC|Add1~26_cout\);

-- Location: MLABCELL_X34_Y52_N36
\CP|RC|Add1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~22_cout\ = CARRY(( \CP|RC|out\(4) ) + ( GND ) + ( \CP|RC|Add1~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(4),
	cin => \CP|RC|Add1~26_cout\,
	cout => \CP|RC|Add1~22_cout\);

-- Location: MLABCELL_X34_Y52_N39
\CP|RC|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~17_sumout\ = SUM(( \CP|RC|out\(5) ) + ( GND ) + ( \CP|RC|Add1~22_cout\ ))
-- \CP|RC|Add1~18\ = CARRY(( \CP|RC|out\(5) ) + ( GND ) + ( \CP|RC|Add1~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(5),
	cin => \CP|RC|Add1~22_cout\,
	sumout => \CP|RC|Add1~17_sumout\,
	cout => \CP|RC|Add1~18\);

-- Location: LABCELL_X36_Y52_N36
\CP|RC|out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~9_combout\ = ( \CP|RC|Equal1~0_combout\ & ( \CP|RC|Add1~17_sumout\ & ( (!\CP|RC|Equal0~1_combout\ & (\CP|RCenable~combout\ & (\KEY[0]~input_o\ & \CP|RC|Add2~37_sumout\))) ) ) ) # ( !\CP|RC|Equal1~0_combout\ & ( \CP|RC|Add1~17_sumout\ & ( 
-- (\CP|RCenable~combout\ & (\KEY[0]~input_o\ & ((\CP|RC|Add2~37_sumout\) # (\CP|RC|Equal0~1_combout\)))) ) ) ) # ( \CP|RC|Equal1~0_combout\ & ( !\CP|RC|Add1~17_sumout\ & ( (!\CP|RC|Equal0~1_combout\ & (\CP|RCenable~combout\ & (\KEY[0]~input_o\ & 
-- \CP|RC|Add2~37_sumout\))) ) ) ) # ( !\CP|RC|Equal1~0_combout\ & ( !\CP|RC|Add1~17_sumout\ & ( (!\CP|RC|Equal0~1_combout\ & (\CP|RCenable~combout\ & (\KEY[0]~input_o\ & \CP|RC|Add2~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000001000000110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_Equal0~1_combout\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|RC|ALT_INV_Add2~37_sumout\,
	datae => \CP|RC|ALT_INV_Equal1~0_combout\,
	dataf => \CP|RC|ALT_INV_Add1~17_sumout\,
	combout => \CP|RC|out~9_combout\);

-- Location: FF_X36_Y52_N38
\CP|RC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(5));

-- Location: MLABCELL_X34_Y52_N42
\CP|RC|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~13_sumout\ = SUM(( \CP|RC|out\(6) ) + ( GND ) + ( \CP|RC|Add1~18\ ))
-- \CP|RC|Add1~14\ = CARRY(( \CP|RC|out\(6) ) + ( GND ) + ( \CP|RC|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(6),
	cin => \CP|RC|Add1~18\,
	sumout => \CP|RC|Add1~13_sumout\,
	cout => \CP|RC|Add1~14\);

-- Location: LABCELL_X36_Y52_N18
\CP|RC|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~33_sumout\ = SUM(( \CP|RC|out\(6) ) + ( GND ) + ( \CP|RC|Add2~38\ ))
-- \CP|RC|Add2~34\ = CARRY(( \CP|RC|out\(6) ) + ( GND ) + ( \CP|RC|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(6),
	cin => \CP|RC|Add2~38\,
	sumout => \CP|RC|Add2~33_sumout\,
	cout => \CP|RC|Add2~34\);

-- Location: LABCELL_X36_Y52_N48
\CP|RC|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~8_combout\ = ( \CP|RC|Add1~13_sumout\ & ( \CP|RC|Add2~33_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal1~0_combout\) # (!\CP|RC|Equal0~1_combout\)))) ) ) ) # ( !\CP|RC|Add1~13_sumout\ & ( \CP|RC|Add2~33_sumout\ & ( 
-- (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & !\CP|RC|Equal0~1_combout\)) ) ) ) # ( \CP|RC|Add1~13_sumout\ & ( !\CP|RC|Add2~33_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & (!\CP|RC|Equal1~0_combout\ & \CP|RC|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010001000000000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|RC|ALT_INV_Equal1~0_combout\,
	datad => \CP|RC|ALT_INV_Equal0~1_combout\,
	datae => \CP|RC|ALT_INV_Add1~13_sumout\,
	dataf => \CP|RC|ALT_INV_Add2~33_sumout\,
	combout => \CP|RC|out~8_combout\);

-- Location: FF_X36_Y52_N50
\CP|RC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(6));

-- Location: MLABCELL_X34_Y52_N45
\CP|RC|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~9_sumout\ = SUM(( \CP|RC|out\(7) ) + ( GND ) + ( \CP|RC|Add1~14\ ))
-- \CP|RC|Add1~10\ = CARRY(( \CP|RC|out\(7) ) + ( GND ) + ( \CP|RC|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(7),
	cin => \CP|RC|Add1~14\,
	sumout => \CP|RC|Add1~9_sumout\,
	cout => \CP|RC|Add1~10\);

-- Location: LABCELL_X36_Y52_N21
\CP|RC|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~29_sumout\ = SUM(( \CP|RC|out\(7) ) + ( GND ) + ( \CP|RC|Add2~34\ ))
-- \CP|RC|Add2~30\ = CARRY(( \CP|RC|out\(7) ) + ( GND ) + ( \CP|RC|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(7),
	cin => \CP|RC|Add2~34\,
	sumout => \CP|RC|Add2~29_sumout\,
	cout => \CP|RC|Add2~30\);

-- Location: LABCELL_X36_Y52_N51
\CP|RC|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~7_combout\ = ( \CP|RC|Add1~9_sumout\ & ( \CP|RC|Add2~29_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\) # (!\CP|RC|Equal1~0_combout\)))) ) ) ) # ( !\CP|RC|Add1~9_sumout\ & ( \CP|RC|Add2~29_sumout\ & ( 
-- (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & !\CP|RC|Equal0~1_combout\)) ) ) ) # ( \CP|RC|Add1~9_sumout\ & ( !\CP|RC|Add2~29_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & (\CP|RC|Equal0~1_combout\ & !\CP|RC|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000010000000100000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|RC|ALT_INV_Equal0~1_combout\,
	datad => \CP|RC|ALT_INV_Equal1~0_combout\,
	datae => \CP|RC|ALT_INV_Add1~9_sumout\,
	dataf => \CP|RC|ALT_INV_Add2~29_sumout\,
	combout => \CP|RC|out~7_combout\);

-- Location: FF_X36_Y52_N53
\CP|RC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(7));

-- Location: LABCELL_X36_Y52_N24
\CP|RC|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~25_sumout\ = SUM(( \CP|RC|out\(8) ) + ( GND ) + ( \CP|RC|Add2~30\ ))
-- \CP|RC|Add2~26\ = CARRY(( \CP|RC|out\(8) ) + ( GND ) + ( \CP|RC|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(8),
	cin => \CP|RC|Add2~30\,
	sumout => \CP|RC|Add2~25_sumout\,
	cout => \CP|RC|Add2~26\);

-- Location: MLABCELL_X34_Y52_N48
\CP|RC|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~5_sumout\ = SUM(( \CP|RC|out\(8) ) + ( GND ) + ( \CP|RC|Add1~10\ ))
-- \CP|RC|Add1~6\ = CARRY(( \CP|RC|out\(8) ) + ( GND ) + ( \CP|RC|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(8),
	cin => \CP|RC|Add1~10\,
	sumout => \CP|RC|Add1~5_sumout\,
	cout => \CP|RC|Add1~6\);

-- Location: LABCELL_X36_Y52_N42
\CP|RC|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~6_combout\ = ( \CP|RC|Add2~25_sumout\ & ( \CP|RC|Add1~5_sumout\ & ( (\KEY[0]~input_o\ & \CP|RCenable~combout\) ) ) ) # ( !\CP|RC|Add2~25_sumout\ & ( \CP|RC|Add1~5_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & 
-- \CP|RC|Equal0~1_combout\)) ) ) ) # ( \CP|RC|Add2~25_sumout\ & ( !\CP|RC|Add1~5_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\) # (\CP|RC|Equal1~0_combout\)))) ) ) ) # ( !\CP|RC|Add2~25_sumout\ & ( 
-- !\CP|RC|Add1~5_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & (\CP|RC|Equal0~1_combout\ & \CP|RC|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100000001000100000001000000010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|RC|ALT_INV_Equal0~1_combout\,
	datad => \CP|RC|ALT_INV_Equal1~0_combout\,
	datae => \CP|RC|ALT_INV_Add2~25_sumout\,
	dataf => \CP|RC|ALT_INV_Add1~5_sumout\,
	combout => \CP|RC|out~6_combout\);

-- Location: FF_X36_Y52_N44
\CP|RC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(8));

-- Location: LABCELL_X36_Y52_N27
\CP|RC|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add2~21_sumout\ = SUM(( \CP|RC|out\(9) ) + ( GND ) + ( \CP|RC|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(9),
	cin => \CP|RC|Add2~26\,
	sumout => \CP|RC|Add2~21_sumout\);

-- Location: MLABCELL_X34_Y52_N51
\CP|RC|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Add1~1_sumout\ = SUM(( \CP|RC|out\(9) ) + ( GND ) + ( \CP|RC|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(9),
	cin => \CP|RC|Add1~6\,
	sumout => \CP|RC|Add1~1_sumout\);

-- Location: LABCELL_X36_Y52_N45
\CP|RC|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|out~5_combout\ = ( \CP|RC|Add2~21_sumout\ & ( \CP|RC|Add1~1_sumout\ & ( (\KEY[0]~input_o\ & \CP|RCenable~combout\) ) ) ) # ( !\CP|RC|Add2~21_sumout\ & ( \CP|RC|Add1~1_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & 
-- \CP|RC|Equal0~1_combout\)) ) ) ) # ( \CP|RC|Add2~21_sumout\ & ( !\CP|RC|Add1~1_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & ((!\CP|RC|Equal0~1_combout\) # (\CP|RC|Equal1~0_combout\)))) ) ) ) # ( !\CP|RC|Add2~21_sumout\ & ( 
-- !\CP|RC|Add1~1_sumout\ & ( (\KEY[0]~input_o\ & (\CP|RCenable~combout\ & (\CP|RC|Equal1~0_combout\ & \CP|RC|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100010000000100000000000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|RC|ALT_INV_Equal1~0_combout\,
	datad => \CP|RC|ALT_INV_Equal0~1_combout\,
	datae => \CP|RC|ALT_INV_Add2~21_sumout\,
	dataf => \CP|RC|ALT_INV_Add1~1_sumout\,
	combout => \CP|RC|out~5_combout\);

-- Location: FF_X36_Y52_N47
\CP|RC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|RC|out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|RC|out\(9));

-- Location: LABCELL_X36_Y52_N54
\CP|RC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Equal1~0_combout\ = ( !\CP|RC|out\(7) & ( (!\CP|RC|out\(6) & (\CP|RC|out\(8) & (!\CP|RC|out\(5) & \CP|RC|out\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(6),
	datab => \CP|RC|ALT_INV_out\(8),
	datac => \CP|RC|ALT_INV_out\(5),
	datad => \CP|RC|ALT_INV_out\(9),
	dataf => \CP|RC|ALT_INV_out\(7),
	combout => \CP|RC|Equal1~0_combout\);

-- Location: LABCELL_X35_Y52_N24
\CP|RC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RC|Equal0~0_combout\ = ( \CP|RC|out\(4) & ( (\CP|RC|out\(3) & (\CP|RC|out\(1) & \CP|RC|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(3),
	datac => \CP|RC|ALT_INV_out\(1),
	datad => \CP|RC|ALT_INV_out\(2),
	dataf => \CP|RC|ALT_INV_out\(4),
	combout => \CP|RC|Equal0~0_combout\);

-- Location: LABCELL_X30_Y54_N0
\CP|BGC|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~41_sumout\ = SUM(( \CP|BGC|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|BGC|Add2~42\ = CARRY(( \CP|BGC|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|BGC|Add2~41_sumout\,
	cout => \CP|BGC|Add2~42\);

-- Location: LABCELL_X33_Y54_N18
\CP|BGC|out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out[0]~10_combout\ = ( \CP|BGC|Add2~41_sumout\ & ( (\KEY[0]~input_o\ & (\CP|cenable~combout\ & (!\CP|BGC|Equal0~2_combout\ & !\CP|BGC|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datad => \CP|BGC|ALT_INV_Equal1~0_combout\,
	dataf => \CP|BGC|ALT_INV_Add2~41_sumout\,
	combout => \CP|BGC|out[0]~10_combout\);

-- Location: FF_X33_Y54_N26
\CP|BGC|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out[0]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(0));

-- Location: LABCELL_X30_Y54_N3
\CP|BGC|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~37_sumout\ = SUM(( \CP|BGC|out\(1) ) + ( GND ) + ( \CP|BGC|Add2~42\ ))
-- \CP|BGC|Add2~38\ = CARRY(( \CP|BGC|out\(1) ) + ( GND ) + ( \CP|BGC|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(1),
	cin => \CP|BGC|Add2~42\,
	sumout => \CP|BGC|Add2~37_sumout\,
	cout => \CP|BGC|Add2~38\);

-- Location: LABCELL_X33_Y54_N39
\CP|BGC|out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out[1]~9_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & (!\CP|BGC|Equal1~0_combout\ & \CP|BGC|Add2~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \CP|BGC|ALT_INV_Add2~37_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|BGC|out[1]~9_combout\);

-- Location: FF_X33_Y54_N41
\CP|BGC|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(1));

-- Location: LABCELL_X30_Y54_N6
\CP|BGC|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~45_sumout\ = SUM(( \CP|BGC|out\(2) ) + ( GND ) + ( \CP|BGC|Add2~38\ ))
-- \CP|BGC|Add2~46\ = CARRY(( \CP|BGC|out\(2) ) + ( GND ) + ( \CP|BGC|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(2),
	cin => \CP|BGC|Add2~38\,
	sumout => \CP|BGC|Add2~45_sumout\,
	cout => \CP|BGC|Add2~46\);

-- Location: LABCELL_X30_Y54_N9
\CP|BGC|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~49_sumout\ = SUM(( \CP|BGC|out\(3) ) + ( GND ) + ( \CP|BGC|Add2~46\ ))
-- \CP|BGC|Add2~50\ = CARRY(( \CP|BGC|out\(3) ) + ( GND ) + ( \CP|BGC|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(3),
	cin => \CP|BGC|Add2~46\,
	sumout => \CP|BGC|Add2~49_sumout\,
	cout => \CP|BGC|Add2~50\);

-- Location: LABCELL_X33_Y54_N45
\CP|BGC|out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out[3]~12_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & (!\CP|BGC|Equal1~0_combout\ & \CP|BGC|Add2~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \CP|BGC|ALT_INV_Add2~49_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|BGC|out[3]~12_combout\);

-- Location: FF_X33_Y54_N47
\CP|BGC|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(3));

-- Location: LABCELL_X30_Y54_N12
\CP|BGC|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~53_sumout\ = SUM(( \CP|BGC|out\(4) ) + ( GND ) + ( \CP|BGC|Add2~50\ ))
-- \CP|BGC|Add2~54\ = CARRY(( \CP|BGC|out\(4) ) + ( GND ) + ( \CP|BGC|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(4),
	cin => \CP|BGC|Add2~50\,
	sumout => \CP|BGC|Add2~53_sumout\,
	cout => \CP|BGC|Add2~54\);

-- Location: LABCELL_X33_Y54_N51
\CP|BGC|out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~13_combout\ = ( \CP|BGC|Equal1~0_combout\ & ( (\KEY[0]~input_o\ & \CP|cenable~combout\) ) ) # ( !\CP|BGC|Equal1~0_combout\ & ( (\KEY[0]~input_o\ & (\CP|cenable~combout\ & (\CP|BGC|Add2~53_sumout\ & !\CP|BGC|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Add2~53_sumout\,
	datad => \CP|BGC|ALT_INV_Equal0~2_combout\,
	dataf => \CP|BGC|ALT_INV_Equal1~0_combout\,
	combout => \CP|BGC|out~13_combout\);

-- Location: FF_X35_Y54_N59
\CP|BGC|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(4));

-- Location: LABCELL_X31_Y54_N0
\CP|BGC|Add1~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~46_cout\ = CARRY(( \CP|BGC|out\(4) ) + ( \CP|BGC|out\(5) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(5),
	datad => \CP|BGC|ALT_INV_out\(4),
	cin => GND,
	cout => \CP|BGC|Add1~46_cout\);

-- Location: LABCELL_X31_Y54_N3
\CP|BGC|Add1~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~42_cout\ = CARRY(( \CP|BGC|out\(6) ) + ( GND ) + ( \CP|BGC|Add1~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(6),
	cin => \CP|BGC|Add1~46_cout\,
	cout => \CP|BGC|Add1~42_cout\);

-- Location: LABCELL_X31_Y54_N6
\CP|BGC|Add1~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~38_cout\ = CARRY(( \CP|BGC|out\(7) ) + ( GND ) + ( \CP|BGC|Add1~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(7),
	cin => \CP|BGC|Add1~42_cout\,
	cout => \CP|BGC|Add1~38_cout\);

-- Location: LABCELL_X31_Y54_N9
\CP|BGC|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~13_sumout\ = SUM(( \CP|BGC|out\(8) ) + ( GND ) + ( \CP|BGC|Add1~38_cout\ ))
-- \CP|BGC|Add1~14\ = CARRY(( \CP|BGC|out\(8) ) + ( GND ) + ( \CP|BGC|Add1~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(8),
	cin => \CP|BGC|Add1~38_cout\,
	sumout => \CP|BGC|Add1~13_sumout\,
	cout => \CP|BGC|Add1~14\);

-- Location: LABCELL_X30_Y54_N21
\CP|BGC|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~65_sumout\ = SUM(( \CP|BGC|out\(7) ) + ( GND ) + ( \CP|BGC|Add2~62\ ))
-- \CP|BGC|Add2~66\ = CARRY(( \CP|BGC|out\(7) ) + ( GND ) + ( \CP|BGC|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(7),
	cin => \CP|BGC|Add2~62\,
	sumout => \CP|BGC|Add2~65_sumout\,
	cout => \CP|BGC|Add2~66\);

-- Location: LABCELL_X30_Y54_N24
\CP|BGC|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~13_sumout\ = SUM(( \CP|BGC|out\(8) ) + ( GND ) + ( \CP|BGC|Add2~66\ ))
-- \CP|BGC|Add2~14\ = CARRY(( \CP|BGC|out\(8) ) + ( GND ) + ( \CP|BGC|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(8),
	cin => \CP|BGC|Add2~66\,
	sumout => \CP|BGC|Add2~13_sumout\,
	cout => \CP|BGC|Add2~14\);

-- Location: MLABCELL_X34_Y54_N18
\CP|BGC|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~3_combout\ = ( \CP|BGC|Add1~13_sumout\ & ( \CP|BGC|Add2~13_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~13_sumout\ & ( \CP|BGC|Add2~13_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (\KEY[0]~input_o\ & !\CP|BGC|Equal0~2_combout\))) ) ) ) # ( \CP|BGC|Add1~13_sumout\ & ( !\CP|BGC|Add2~13_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\KEY[0]~input_o\ & \CP|BGC|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000010000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datae => \CP|BGC|ALT_INV_Add1~13_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~13_sumout\,
	combout => \CP|BGC|out~3_combout\);

-- Location: FF_X34_Y54_N20
\CP|BGC|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(8));

-- Location: LABCELL_X31_Y54_N12
\CP|BGC|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~17_sumout\ = SUM(( \CP|BGC|out\(9) ) + ( GND ) + ( \CP|BGC|Add1~14\ ))
-- \CP|BGC|Add1~18\ = CARRY(( \CP|BGC|out\(9) ) + ( GND ) + ( \CP|BGC|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(9),
	cin => \CP|BGC|Add1~14\,
	sumout => \CP|BGC|Add1~17_sumout\,
	cout => \CP|BGC|Add1~18\);

-- Location: LABCELL_X30_Y54_N27
\CP|BGC|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~17_sumout\ = SUM(( \CP|BGC|out\(9) ) + ( GND ) + ( \CP|BGC|Add2~14\ ))
-- \CP|BGC|Add2~18\ = CARRY(( \CP|BGC|out\(9) ) + ( GND ) + ( \CP|BGC|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(9),
	cin => \CP|BGC|Add2~14\,
	sumout => \CP|BGC|Add2~17_sumout\,
	cout => \CP|BGC|Add2~18\);

-- Location: LABCELL_X33_Y54_N57
\CP|BGC|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~4_combout\ = ( \CP|BGC|Add1~17_sumout\ & ( \CP|BGC|Add2~17_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~17_sumout\ & ( \CP|BGC|Add2~17_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (\KEY[0]~input_o\ & !\CP|BGC|Equal0~2_combout\))) ) ) ) # ( \CP|BGC|Add1~17_sumout\ & ( !\CP|BGC|Add2~17_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\KEY[0]~input_o\ & \CP|BGC|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000010000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datae => \CP|BGC|ALT_INV_Add1~17_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~17_sumout\,
	combout => \CP|BGC|out~4_combout\);

-- Location: FF_X33_Y54_N59
\CP|BGC|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(9));

-- Location: LABCELL_X31_Y54_N15
\CP|BGC|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~21_sumout\ = SUM(( \CP|BGC|out\(10) ) + ( GND ) + ( \CP|BGC|Add1~18\ ))
-- \CP|BGC|Add1~22\ = CARRY(( \CP|BGC|out\(10) ) + ( GND ) + ( \CP|BGC|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(10),
	cin => \CP|BGC|Add1~18\,
	sumout => \CP|BGC|Add1~21_sumout\,
	cout => \CP|BGC|Add1~22\);

-- Location: LABCELL_X30_Y54_N30
\CP|BGC|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~21_sumout\ = SUM(( \CP|BGC|out\(10) ) + ( GND ) + ( \CP|BGC|Add2~18\ ))
-- \CP|BGC|Add2~22\ = CARRY(( \CP|BGC|out\(10) ) + ( GND ) + ( \CP|BGC|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(10),
	cin => \CP|BGC|Add2~18\,
	sumout => \CP|BGC|Add2~21_sumout\,
	cout => \CP|BGC|Add2~22\);

-- Location: MLABCELL_X34_Y54_N21
\CP|BGC|out~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~5_combout\ = ( \CP|BGC|Add1~21_sumout\ & ( \CP|BGC|Add2~21_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~21_sumout\ & ( \CP|BGC|Add2~21_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (!\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) ) # ( \CP|BGC|Add1~21_sumout\ & ( !\CP|BGC|Add2~21_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000001000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_Add1~21_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~21_sumout\,
	combout => \CP|BGC|out~5_combout\);

-- Location: FF_X35_Y54_N17
\CP|BGC|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(10));

-- Location: LABCELL_X31_Y54_N18
\CP|BGC|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~25_sumout\ = SUM(( \CP|BGC|out\(11) ) + ( GND ) + ( \CP|BGC|Add1~22\ ))
-- \CP|BGC|Add1~26\ = CARRY(( \CP|BGC|out\(11) ) + ( GND ) + ( \CP|BGC|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(11),
	cin => \CP|BGC|Add1~22\,
	sumout => \CP|BGC|Add1~25_sumout\,
	cout => \CP|BGC|Add1~26\);

-- Location: LABCELL_X30_Y54_N33
\CP|BGC|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~25_sumout\ = SUM(( \CP|BGC|out\(11) ) + ( GND ) + ( \CP|BGC|Add2~22\ ))
-- \CP|BGC|Add2~26\ = CARRY(( \CP|BGC|out\(11) ) + ( GND ) + ( \CP|BGC|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(11),
	cin => \CP|BGC|Add2~22\,
	sumout => \CP|BGC|Add2~25_sumout\,
	cout => \CP|BGC|Add2~26\);

-- Location: LABCELL_X33_Y54_N54
\CP|BGC|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~6_combout\ = ( \CP|BGC|Add1~25_sumout\ & ( \CP|BGC|Add2~25_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~25_sumout\ & ( \CP|BGC|Add2~25_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (!\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) ) # ( \CP|BGC|Add1~25_sumout\ & ( !\CP|BGC|Add2~25_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000001000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_Add1~25_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~25_sumout\,
	combout => \CP|BGC|out~6_combout\);

-- Location: FF_X35_Y54_N44
\CP|BGC|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(11));

-- Location: LABCELL_X31_Y54_N21
\CP|BGC|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~29_sumout\ = SUM(( \CP|BGC|out\(12) ) + ( GND ) + ( \CP|BGC|Add1~26\ ))
-- \CP|BGC|Add1~30\ = CARRY(( \CP|BGC|out\(12) ) + ( GND ) + ( \CP|BGC|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(12),
	cin => \CP|BGC|Add1~26\,
	sumout => \CP|BGC|Add1~29_sumout\,
	cout => \CP|BGC|Add1~30\);

-- Location: LABCELL_X30_Y54_N36
\CP|BGC|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~29_sumout\ = SUM(( \CP|BGC|out\(12) ) + ( GND ) + ( \CP|BGC|Add2~26\ ))
-- \CP|BGC|Add2~30\ = CARRY(( \CP|BGC|out\(12) ) + ( GND ) + ( \CP|BGC|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(12),
	cin => \CP|BGC|Add2~26\,
	sumout => \CP|BGC|Add2~29_sumout\,
	cout => \CP|BGC|Add2~30\);

-- Location: MLABCELL_X34_Y54_N15
\CP|BGC|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~7_combout\ = ( \CP|BGC|Add1~29_sumout\ & ( \CP|BGC|Add2~29_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~29_sumout\ & ( \CP|BGC|Add2~29_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (!\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) ) # ( \CP|BGC|Add1~29_sumout\ & ( !\CP|BGC|Add2~29_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\CP|BGC|Equal0~2_combout\ & \KEY[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000001000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_Add1~29_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~29_sumout\,
	combout => \CP|BGC|out~7_combout\);

-- Location: FF_X34_Y54_N17
\CP|BGC|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(12));

-- Location: LABCELL_X31_Y54_N24
\CP|BGC|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~33_sumout\ = SUM(( \CP|BGC|out\(13) ) + ( GND ) + ( \CP|BGC|Add1~30\ ))
-- \CP|BGC|Add1~34\ = CARRY(( \CP|BGC|out\(13) ) + ( GND ) + ( \CP|BGC|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(13),
	cin => \CP|BGC|Add1~30\,
	sumout => \CP|BGC|Add1~33_sumout\,
	cout => \CP|BGC|Add1~34\);

-- Location: LABCELL_X30_Y54_N39
\CP|BGC|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~33_sumout\ = SUM(( \CP|BGC|out\(13) ) + ( GND ) + ( \CP|BGC|Add2~30\ ))
-- \CP|BGC|Add2~34\ = CARRY(( \CP|BGC|out\(13) ) + ( GND ) + ( \CP|BGC|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(13),
	cin => \CP|BGC|Add2~30\,
	sumout => \CP|BGC|Add2~33_sumout\,
	cout => \CP|BGC|Add2~34\);

-- Location: LABCELL_X33_Y54_N24
\CP|BGC|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~8_combout\ = ( \CP|BGC|Equal0~2_combout\ & ( \CP|BGC|Add2~33_sumout\ & ( (\KEY[0]~input_o\ & (\CP|cenable~combout\ & (!\CP|BGC|Equal1~0_combout\ & \CP|BGC|Add1~33_sumout\))) ) ) ) # ( !\CP|BGC|Equal0~2_combout\ & ( \CP|BGC|Add2~33_sumout\ & ( 
-- (\KEY[0]~input_o\ & (\CP|cenable~combout\ & !\CP|BGC|Equal1~0_combout\)) ) ) ) # ( \CP|BGC|Equal0~2_combout\ & ( !\CP|BGC|Add2~33_sumout\ & ( (\KEY[0]~input_o\ & (\CP|cenable~combout\ & (!\CP|BGC|Equal1~0_combout\ & \CP|BGC|Add1~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000010000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \CP|BGC|ALT_INV_Add1~33_sumout\,
	datae => \CP|BGC|ALT_INV_Equal0~2_combout\,
	dataf => \CP|BGC|ALT_INV_Add2~33_sumout\,
	combout => \CP|BGC|out~8_combout\);

-- Location: FF_X34_Y54_N11
\CP|BGC|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(13));

-- Location: LABCELL_X35_Y54_N42
\CP|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Equal1~1_combout\ = ( !\CP|BGC|out\(12) & ( (!\CP|BGC|out\(9) & (!\CP|BGC|out\(10) & (!\CP|BGC|out\(8) & !\CP|BGC|out\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(9),
	datab => \CP|BGC|ALT_INV_out\(10),
	datac => \CP|BGC|ALT_INV_out\(8),
	datad => \CP|BGC|ALT_INV_out\(11),
	dataf => \CP|BGC|ALT_INV_out\(12),
	combout => \CP|Equal1~1_combout\);

-- Location: LABCELL_X30_Y54_N42
\CP|BGC|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~9_sumout\ = SUM(( \CP|BGC|out\(14) ) + ( GND ) + ( \CP|BGC|Add2~34\ ))
-- \CP|BGC|Add2~10\ = CARRY(( \CP|BGC|out\(14) ) + ( GND ) + ( \CP|BGC|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(14),
	cin => \CP|BGC|Add2~34\,
	sumout => \CP|BGC|Add2~9_sumout\,
	cout => \CP|BGC|Add2~10\);

-- Location: LABCELL_X31_Y54_N27
\CP|BGC|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~9_sumout\ = SUM(( \CP|BGC|out\(14) ) + ( GND ) + ( \CP|BGC|Add1~34\ ))
-- \CP|BGC|Add1~10\ = CARRY(( \CP|BGC|out\(14) ) + ( GND ) + ( \CP|BGC|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(14),
	cin => \CP|BGC|Add1~34\,
	sumout => \CP|BGC|Add1~9_sumout\,
	cout => \CP|BGC|Add1~10\);

-- Location: MLABCELL_X34_Y54_N3
\CP|BGC|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~2_combout\ = ( \CP|BGC|Add2~9_sumout\ & ( \CP|BGC|Add1~9_sumout\ & ( (\CP|cenable~combout\ & \KEY[0]~input_o\) ) ) ) # ( !\CP|BGC|Add2~9_sumout\ & ( \CP|BGC|Add1~9_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & 
-- ((\CP|BGC|Equal1~0_combout\) # (\CP|BGC|Equal0~2_combout\)))) ) ) ) # ( \CP|BGC|Add2~9_sumout\ & ( !\CP|BGC|Add1~9_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & ((!\CP|BGC|Equal0~2_combout\) # (\CP|BGC|Equal1~0_combout\)))) ) ) ) # ( 
-- !\CP|BGC|Add2~9_sumout\ & ( !\CP|BGC|Add1~9_sumout\ & ( (\CP|cenable~combout\ & (\CP|BGC|Equal1~0_combout\ & \KEY[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000100010100000000000101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_Add2~9_sumout\,
	dataf => \CP|BGC|ALT_INV_Add1~9_sumout\,
	combout => \CP|BGC|out~2_combout\);

-- Location: FF_X34_Y54_N5
\CP|BGC|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(14));

-- Location: LABCELL_X31_Y54_N30
\CP|BGC|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~5_sumout\ = SUM(( \CP|BGC|out\(15) ) + ( GND ) + ( \CP|BGC|Add1~10\ ))
-- \CP|BGC|Add1~6\ = CARRY(( \CP|BGC|out\(15) ) + ( GND ) + ( \CP|BGC|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(15),
	cin => \CP|BGC|Add1~10\,
	sumout => \CP|BGC|Add1~5_sumout\,
	cout => \CP|BGC|Add1~6\);

-- Location: LABCELL_X30_Y54_N45
\CP|BGC|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~5_sumout\ = SUM(( \CP|BGC|out\(15) ) + ( GND ) + ( \CP|BGC|Add2~10\ ))
-- \CP|BGC|Add2~6\ = CARRY(( \CP|BGC|out\(15) ) + ( GND ) + ( \CP|BGC|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(15),
	cin => \CP|BGC|Add2~10\,
	sumout => \CP|BGC|Add2~5_sumout\,
	cout => \CP|BGC|Add2~6\);

-- Location: MLABCELL_X34_Y54_N12
\CP|BGC|out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~1_combout\ = ( \CP|BGC|Add1~5_sumout\ & ( \CP|BGC|Add2~5_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & \KEY[0]~input_o\)) ) ) ) # ( !\CP|BGC|Add1~5_sumout\ & ( \CP|BGC|Add2~5_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & 
-- (\CP|cenable~combout\ & (\KEY[0]~input_o\ & !\CP|BGC|Equal0~2_combout\))) ) ) ) # ( \CP|BGC|Add1~5_sumout\ & ( !\CP|BGC|Add2~5_sumout\ & ( (!\CP|BGC|Equal1~0_combout\ & (\CP|cenable~combout\ & (\KEY[0]~input_o\ & \CP|BGC|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000010000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datae => \CP|BGC|ALT_INV_Add1~5_sumout\,
	dataf => \CP|BGC|ALT_INV_Add2~5_sumout\,
	combout => \CP|BGC|out~1_combout\);

-- Location: FF_X34_Y54_N8
\CP|BGC|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(15));

-- Location: LABCELL_X30_Y54_N48
\CP|BGC|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~1_sumout\ = SUM(( \CP|BGC|out\(16) ) + ( GND ) + ( \CP|BGC|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(16),
	cin => \CP|BGC|Add2~6\,
	sumout => \CP|BGC|Add2~1_sumout\);

-- Location: LABCELL_X31_Y54_N33
\CP|BGC|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add1~1_sumout\ = SUM(( \CP|BGC|out\(16) ) + ( GND ) + ( \CP|BGC|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(16),
	cin => \CP|BGC|Add1~6\,
	sumout => \CP|BGC|Add1~1_sumout\);

-- Location: MLABCELL_X34_Y54_N0
\CP|BGC|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~0_combout\ = ( \CP|BGC|Add2~1_sumout\ & ( \CP|BGC|Add1~1_sumout\ & ( (\CP|cenable~combout\ & \KEY[0]~input_o\) ) ) ) # ( !\CP|BGC|Add2~1_sumout\ & ( \CP|BGC|Add1~1_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & 
-- ((\CP|BGC|Equal1~0_combout\) # (\CP|BGC|Equal0~2_combout\)))) ) ) ) # ( \CP|BGC|Add2~1_sumout\ & ( !\CP|BGC|Add1~1_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & ((!\CP|BGC|Equal0~2_combout\) # (\CP|BGC|Equal1~0_combout\)))) ) ) ) # ( 
-- !\CP|BGC|Add2~1_sumout\ & ( !\CP|BGC|Add1~1_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & \CP|BGC|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001000000010100000001000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datae => \CP|BGC|ALT_INV_Add2~1_sumout\,
	dataf => \CP|BGC|ALT_INV_Add1~1_sumout\,
	combout => \CP|BGC|out~0_combout\);

-- Location: FF_X34_Y54_N2
\CP|BGC|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(16));

-- Location: MLABCELL_X34_Y54_N27
\CP|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Equal1~0_combout\ = ( !\CP|BGC|out\(15) & ( (\CP|BGC|out\(14) & \CP|BGC|out\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(14),
	datad => \CP|BGC|ALT_INV_out\(16),
	dataf => \CP|BGC|ALT_INV_out\(15),
	combout => \CP|Equal1~0_combout\);

-- Location: LABCELL_X35_Y54_N33
\CP|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Equal1~2_combout\ = ( !\CP|BGC|out\(7) & ( (!\CP|BGC|out\(6) & (!\CP|BGC|out\(4) & !\CP|BGC|out\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(6),
	datac => \CP|BGC|ALT_INV_out\(4),
	datad => \CP|BGC|ALT_INV_out\(5),
	dataf => \CP|BGC|ALT_INV_out\(7),
	combout => \CP|Equal1~2_combout\);

-- Location: LABCELL_X35_Y54_N12
\CP|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Equal1~3_combout\ = ( \CP|Equal1~2_combout\ & ( (!\CP|BGC|out\(13) & (\CP|Equal1~1_combout\ & (\CP|BGC|Equal0~0_combout\ & \CP|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(13),
	datab => \CP|ALT_INV_Equal1~1_combout\,
	datac => \CP|BGC|ALT_INV_Equal0~0_combout\,
	datad => \CP|ALT_INV_Equal1~0_combout\,
	dataf => \CP|ALT_INV_Equal1~2_combout\,
	combout => \CP|Equal1~3_combout\);

-- Location: LABCELL_X35_Y54_N54
\CP|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector3~0_combout\ = ( \CP|RC|Equal0~0_combout\ & ( \CP|Equal1~3_combout\ & ( (\CP|RCenable~combout\ & (\CP|RC|Equal1~0_combout\ & !\CP|RC|out\(0))) ) ) ) # ( \CP|RC|Equal0~0_combout\ & ( !\CP|Equal1~3_combout\ & ( ((\CP|RCenable~combout\ & 
-- (\CP|RC|Equal1~0_combout\ & !\CP|RC|out\(0)))) # (\CP|cenable~combout\) ) ) ) # ( !\CP|RC|Equal0~0_combout\ & ( !\CP|Equal1~3_combout\ & ( \CP|cenable~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101110101010100000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|RC|ALT_INV_Equal1~0_combout\,
	datad => \CP|RC|ALT_INV_out\(0),
	datae => \CP|RC|ALT_INV_Equal0~0_combout\,
	dataf => \CP|ALT_INV_Equal1~3_combout\,
	combout => \CP|Selector3~0_combout\);

-- Location: LABCELL_X35_Y54_N51
\CP|RCenable\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|RCenable~combout\ = ( \CP|Selector3~0_combout\ & ( (\CP|RCenable~combout\ & (\KEY[0]~input_o\ & !\CP|currentState.displayState~1_combout\)) ) ) # ( !\CP|Selector3~0_combout\ & ( (\KEY[0]~input_o\ & ((\CP|currentState.displayState~1_combout\) # 
-- (\CP|RCenable~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|ALT_INV_currentState.displayState~1_combout\,
	dataf => \CP|ALT_INV_Selector3~0_combout\,
	combout => \CP|RCenable~combout\);

-- Location: LABCELL_X40_Y50_N18
\CP|CLK60|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~17_sumout\ = SUM(( \CP|CLK60|q\(6) ) + ( VCC ) + ( \CP|CLK60|Add0~46\ ))
-- \CP|CLK60|Add0~18\ = CARRY(( \CP|CLK60|q\(6) ) + ( VCC ) + ( \CP|CLK60|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(6),
	cin => \CP|CLK60|Add0~46\,
	sumout => \CP|CLK60|Add0~17_sumout\,
	cout => \CP|CLK60|Add0~18\);

-- Location: LABCELL_X40_Y50_N21
\CP|CLK60|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~13_sumout\ = SUM(( \CP|CLK60|q\(7) ) + ( VCC ) + ( \CP|CLK60|Add0~18\ ))
-- \CP|CLK60|Add0~14\ = CARRY(( \CP|CLK60|q\(7) ) + ( VCC ) + ( \CP|CLK60|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(7),
	cin => \CP|CLK60|Add0~18\,
	sumout => \CP|CLK60|Add0~13_sumout\,
	cout => \CP|CLK60|Add0~14\);

-- Location: FF_X40_Y50_N22
\CP|CLK60|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~13_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(7));

-- Location: LABCELL_X40_Y50_N24
\CP|CLK60|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~49_sumout\ = SUM(( \CP|CLK60|q\(8) ) + ( VCC ) + ( \CP|CLK60|Add0~14\ ))
-- \CP|CLK60|Add0~50\ = CARRY(( \CP|CLK60|q\(8) ) + ( VCC ) + ( \CP|CLK60|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(8),
	cin => \CP|CLK60|Add0~14\,
	sumout => \CP|CLK60|Add0~49_sumout\,
	cout => \CP|CLK60|Add0~50\);

-- Location: MLABCELL_X39_Y50_N6
\CP|CLK60|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~4_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~49_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~49_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~49_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~1_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~49_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~49_sumout\,
	combout => \CP|CLK60|q~4_combout\);

-- Location: FF_X39_Y50_N8
\CP|CLK60|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(8));

-- Location: LABCELL_X40_Y50_N27
\CP|CLK60|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~53_sumout\ = SUM(( \CP|CLK60|q\(9) ) + ( VCC ) + ( \CP|CLK60|Add0~50\ ))
-- \CP|CLK60|Add0~54\ = CARRY(( \CP|CLK60|q\(9) ) + ( VCC ) + ( \CP|CLK60|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(9),
	cin => \CP|CLK60|Add0~50\,
	sumout => \CP|CLK60|Add0~53_sumout\,
	cout => \CP|CLK60|Add0~54\);

-- Location: MLABCELL_X39_Y50_N9
\CP|CLK60|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~5_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~53_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~53_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~53_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~1_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~53_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~53_sumout\,
	combout => \CP|CLK60|q~5_combout\);

-- Location: FF_X39_Y50_N11
\CP|CLK60|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(9));

-- Location: LABCELL_X40_Y50_N0
\CP|CLK60|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~33_sumout\ = SUM(( \CP|CLK60|q\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|CLK60|Add0~34\ = CARRY(( \CP|CLK60|q\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(0),
	cin => GND,
	sumout => \CP|CLK60|Add0~33_sumout\,
	cout => \CP|CLK60|Add0~34\);

-- Location: MLABCELL_X39_Y50_N42
\CP|CLK60|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~0_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~33_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~33_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~33_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~1_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~33_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~33_sumout\,
	combout => \CP|CLK60|q~0_combout\);

-- Location: FF_X39_Y50_N44
\CP|CLK60|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(0));

-- Location: LABCELL_X40_Y50_N3
\CP|CLK60|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~29_sumout\ = SUM(( \CP|CLK60|q\(1) ) + ( VCC ) + ( \CP|CLK60|Add0~34\ ))
-- \CP|CLK60|Add0~30\ = CARRY(( \CP|CLK60|q\(1) ) + ( VCC ) + ( \CP|CLK60|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(1),
	cin => \CP|CLK60|Add0~34\,
	sumout => \CP|CLK60|Add0~29_sumout\,
	cout => \CP|CLK60|Add0~30\);

-- Location: FF_X40_Y50_N4
\CP|CLK60|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~29_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(1));

-- Location: LABCELL_X40_Y50_N6
\CP|CLK60|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~37_sumout\ = SUM(( \CP|CLK60|q\(2) ) + ( VCC ) + ( \CP|CLK60|Add0~30\ ))
-- \CP|CLK60|Add0~38\ = CARRY(( \CP|CLK60|q\(2) ) + ( VCC ) + ( \CP|CLK60|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|CLK60|ALT_INV_q\(2),
	cin => \CP|CLK60|Add0~30\,
	sumout => \CP|CLK60|Add0~37_sumout\,
	cout => \CP|CLK60|Add0~38\);

-- Location: MLABCELL_X39_Y50_N45
\CP|CLK60|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~1_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~37_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~37_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~37_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~1_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~37_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~37_sumout\,
	combout => \CP|CLK60|q~1_combout\);

-- Location: FF_X39_Y50_N47
\CP|CLK60|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(2));

-- Location: LABCELL_X40_Y50_N9
\CP|CLK60|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~25_sumout\ = SUM(( \CP|CLK60|q\(3) ) + ( VCC ) + ( \CP|CLK60|Add0~38\ ))
-- \CP|CLK60|Add0~26\ = CARRY(( \CP|CLK60|q\(3) ) + ( VCC ) + ( \CP|CLK60|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(3),
	cin => \CP|CLK60|Add0~38\,
	sumout => \CP|CLK60|Add0~25_sumout\,
	cout => \CP|CLK60|Add0~26\);

-- Location: FF_X40_Y50_N10
\CP|CLK60|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~25_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(3));

-- Location: LABCELL_X40_Y50_N12
\CP|CLK60|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~41_sumout\ = SUM(( \CP|CLK60|q\(4) ) + ( VCC ) + ( \CP|CLK60|Add0~26\ ))
-- \CP|CLK60|Add0~42\ = CARRY(( \CP|CLK60|q\(4) ) + ( VCC ) + ( \CP|CLK60|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|CLK60|ALT_INV_q\(4),
	cin => \CP|CLK60|Add0~26\,
	sumout => \CP|CLK60|Add0~41_sumout\,
	cout => \CP|CLK60|Add0~42\);

-- Location: MLABCELL_X39_Y50_N36
\CP|CLK60|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~2_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~41_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~41_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~41_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~1_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~0_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~41_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~41_sumout\,
	combout => \CP|CLK60|q~2_combout\);

-- Location: FF_X39_Y50_N38
\CP|CLK60|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(4));

-- Location: MLABCELL_X39_Y50_N48
\CP|CLK60|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Equal0~2_combout\ = ( !\CP|CLK60|q\(4) & ( !\CP|CLK60|q\(2) & ( (!\CP|CLK60|q\(9) & (!\CP|CLK60|q\(5) & (!\CP|CLK60|q\(0) & !\CP|CLK60|q\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(9),
	datab => \CP|CLK60|ALT_INV_q\(5),
	datac => \CP|CLK60|ALT_INV_q\(0),
	datad => \CP|CLK60|ALT_INV_q\(8),
	datae => \CP|CLK60|ALT_INV_q\(4),
	dataf => \CP|CLK60|ALT_INV_q\(2),
	combout => \CP|CLK60|Equal0~2_combout\);

-- Location: LABCELL_X40_Y50_N15
\CP|CLK60|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~45_sumout\ = SUM(( \CP|CLK60|q\(5) ) + ( VCC ) + ( \CP|CLK60|Add0~42\ ))
-- \CP|CLK60|Add0~46\ = CARRY(( \CP|CLK60|q\(5) ) + ( VCC ) + ( \CP|CLK60|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(5),
	cin => \CP|CLK60|Add0~42\,
	sumout => \CP|CLK60|Add0~45_sumout\,
	cout => \CP|CLK60|Add0~46\);

-- Location: MLABCELL_X39_Y50_N39
\CP|CLK60|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~3_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~45_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~45_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~45_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~1_combout\ & (\CP|CLK60|Equal0~2_combout\ & \CP|CLK60|Equal0~0_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~45_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datab => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~45_sumout\,
	combout => \CP|CLK60|q~3_combout\);

-- Location: FF_X39_Y50_N41
\CP|CLK60|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(5));

-- Location: FF_X40_Y50_N19
\CP|CLK60|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~17_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(6));

-- Location: LABCELL_X35_Y51_N36
\CP|CLK60|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Equal0~1_combout\ = ( !\CP|CLK60|q\(3) & ( !\CP|CLK60|q\(1) & ( (!\CP|CLK60|q\(16) & (!\CP|CLK60|q\(11) & (!\CP|CLK60|q\(6) & !\CP|CLK60|q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(16),
	datab => \CP|CLK60|ALT_INV_q\(11),
	datac => \CP|CLK60|ALT_INV_q\(6),
	datad => \CP|CLK60|ALT_INV_q\(7),
	datae => \CP|CLK60|ALT_INV_q\(3),
	dataf => \CP|CLK60|ALT_INV_q\(1),
	combout => \CP|CLK60|Equal0~1_combout\);

-- Location: LABCELL_X40_Y50_N30
\CP|CLK60|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~57_sumout\ = SUM(( \CP|CLK60|q\(10) ) + ( VCC ) + ( \CP|CLK60|Add0~54\ ))
-- \CP|CLK60|Add0~58\ = CARRY(( \CP|CLK60|q\(10) ) + ( VCC ) + ( \CP|CLK60|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(10),
	cin => \CP|CLK60|Add0~54\,
	sumout => \CP|CLK60|Add0~57_sumout\,
	cout => \CP|CLK60|Add0~58\);

-- Location: MLABCELL_X39_Y50_N30
\CP|CLK60|q~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~6_combout\ = ( \CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~57_sumout\ ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( \CP|CLK60|Add0~57_sumout\ ) ) # ( \CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~57_sumout\ & ( (!\KEY[0]~input_o\) # 
-- ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~1_combout\ & \CP|CLK60|Equal0~2_combout\))) ) ) ) # ( !\CP|CLK60|Equal0~3_combout\ & ( !\CP|CLK60|Add0~57_sumout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	datad => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	datae => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~57_sumout\,
	combout => \CP|CLK60|q~6_combout\);

-- Location: FF_X39_Y50_N32
\CP|CLK60|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(10));

-- Location: LABCELL_X40_Y50_N33
\CP|CLK60|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~9_sumout\ = SUM(( \CP|CLK60|q\(11) ) + ( VCC ) + ( \CP|CLK60|Add0~58\ ))
-- \CP|CLK60|Add0~10\ = CARRY(( \CP|CLK60|q\(11) ) + ( VCC ) + ( \CP|CLK60|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(11),
	cin => \CP|CLK60|Add0~58\,
	sumout => \CP|CLK60|Add0~9_sumout\,
	cout => \CP|CLK60|Add0~10\);

-- Location: FF_X40_Y50_N34
\CP|CLK60|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~9_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(11));

-- Location: LABCELL_X40_Y50_N36
\CP|CLK60|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~61_sumout\ = SUM(( \CP|CLK60|q\(12) ) + ( VCC ) + ( \CP|CLK60|Add0~10\ ))
-- \CP|CLK60|Add0~62\ = CARRY(( \CP|CLK60|q\(12) ) + ( VCC ) + ( \CP|CLK60|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|CLK60|ALT_INV_q\(12),
	cin => \CP|CLK60|Add0~10\,
	sumout => \CP|CLK60|Add0~61_sumout\,
	cout => \CP|CLK60|Add0~62\);

-- Location: MLABCELL_X39_Y50_N15
\CP|CLK60|q~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~7_combout\ = ( \CP|CLK60|Equal0~4_combout\ & ( ((!\KEY[0]~input_o\) # (\CP|CLK60|Add0~61_sumout\)) # (\CP|CLK60|Equal0~0_combout\) ) ) # ( !\CP|CLK60|Equal0~4_combout\ & ( (!\KEY[0]~input_o\) # (\CP|CLK60|Add0~61_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Add0~61_sumout\,
	dataf => \CP|CLK60|ALT_INV_Equal0~4_combout\,
	combout => \CP|CLK60|q~7_combout\);

-- Location: FF_X39_Y50_N17
\CP|CLK60|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(12));

-- Location: LABCELL_X40_Y50_N39
\CP|CLK60|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~65_sumout\ = SUM(( \CP|CLK60|q\(13) ) + ( VCC ) + ( \CP|CLK60|Add0~62\ ))
-- \CP|CLK60|Add0~66\ = CARRY(( \CP|CLK60|q\(13) ) + ( VCC ) + ( \CP|CLK60|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(13),
	cin => \CP|CLK60|Add0~62\,
	sumout => \CP|CLK60|Add0~65_sumout\,
	cout => \CP|CLK60|Add0~66\);

-- Location: MLABCELL_X39_Y50_N21
\CP|CLK60|q~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~8_combout\ = ( \CP|CLK60|Add0~65_sumout\ ) # ( !\CP|CLK60|Add0~65_sumout\ & ( (!\KEY[0]~input_o\) # ((\CP|CLK60|Equal0~4_combout\ & \CP|CLK60|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~65_sumout\,
	combout => \CP|CLK60|q~8_combout\);

-- Location: FF_X39_Y50_N23
\CP|CLK60|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(13));

-- Location: LABCELL_X40_Y50_N51
\CP|CLK60|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~1_sumout\ = SUM(( \CP|CLK60|q\(17) ) + ( VCC ) + ( \CP|CLK60|Add0~22\ ))
-- \CP|CLK60|Add0~2\ = CARRY(( \CP|CLK60|q\(17) ) + ( VCC ) + ( \CP|CLK60|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(17),
	cin => \CP|CLK60|Add0~22\,
	sumout => \CP|CLK60|Add0~1_sumout\,
	cout => \CP|CLK60|Add0~2\);

-- Location: LABCELL_X40_Y50_N54
\CP|CLK60|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~73_sumout\ = SUM(( \CP|CLK60|q\(18) ) + ( VCC ) + ( \CP|CLK60|Add0~2\ ))
-- \CP|CLK60|Add0~74\ = CARRY(( \CP|CLK60|q\(18) ) + ( VCC ) + ( \CP|CLK60|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(18),
	cin => \CP|CLK60|Add0~2\,
	sumout => \CP|CLK60|Add0~73_sumout\,
	cout => \CP|CLK60|Add0~74\);

-- Location: MLABCELL_X39_Y50_N0
\CP|CLK60|q~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~10_combout\ = ( \CP|CLK60|Add0~73_sumout\ ) # ( !\CP|CLK60|Add0~73_sumout\ & ( (!\KEY[0]~input_o\) # ((\CP|CLK60|Equal0~0_combout\ & \CP|CLK60|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Equal0~4_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~73_sumout\,
	combout => \CP|CLK60|q~10_combout\);

-- Location: FF_X39_Y50_N2
\CP|CLK60|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(18));

-- Location: LABCELL_X40_Y50_N57
\CP|CLK60|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~77_sumout\ = SUM(( \CP|CLK60|q\(19) ) + ( VCC ) + ( \CP|CLK60|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(19),
	cin => \CP|CLK60|Add0~74\,
	sumout => \CP|CLK60|Add0~77_sumout\);

-- Location: MLABCELL_X39_Y50_N18
\CP|CLK60|q~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~11_combout\ = ( \CP|CLK60|Equal0~4_combout\ & ( (!\KEY[0]~input_o\) # ((\CP|CLK60|Add0~77_sumout\) # (\CP|CLK60|Equal0~0_combout\)) ) ) # ( !\CP|CLK60|Equal0~4_combout\ & ( (!\KEY[0]~input_o\) # (\CP|CLK60|Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datad => \CP|CLK60|ALT_INV_Add0~77_sumout\,
	dataf => \CP|CLK60|ALT_INV_Equal0~4_combout\,
	combout => \CP|CLK60|q~11_combout\);

-- Location: FF_X39_Y50_N20
\CP|CLK60|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(19));

-- Location: MLABCELL_X39_Y50_N54
\CP|CLK60|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Equal0~3_combout\ = ( !\CP|CLK60|q\(12) & ( !\CP|CLK60|q\(10) & ( (!\CP|CLK60|q\(15) & (!\CP|CLK60|q\(13) & (!\CP|CLK60|q\(18) & !\CP|CLK60|q\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(15),
	datab => \CP|CLK60|ALT_INV_q\(13),
	datac => \CP|CLK60|ALT_INV_q\(18),
	datad => \CP|CLK60|ALT_INV_q\(19),
	datae => \CP|CLK60|ALT_INV_q\(12),
	dataf => \CP|CLK60|ALT_INV_q\(10),
	combout => \CP|CLK60|Equal0~3_combout\);

-- Location: MLABCELL_X39_Y50_N24
\CP|CLK60|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Equal0~4_combout\ = ( \CP|CLK60|Equal0~2_combout\ & ( (\CP|CLK60|Equal0~3_combout\ & \CP|CLK60|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	datad => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	dataf => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	combout => \CP|CLK60|Equal0~4_combout\);

-- Location: LABCELL_X40_Y50_N42
\CP|CLK60|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~5_sumout\ = SUM(( \CP|CLK60|q\(14) ) + ( VCC ) + ( \CP|CLK60|Add0~66\ ))
-- \CP|CLK60|Add0~6\ = CARRY(( \CP|CLK60|q\(14) ) + ( VCC ) + ( \CP|CLK60|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(14),
	cin => \CP|CLK60|Add0~66\,
	sumout => \CP|CLK60|Add0~5_sumout\,
	cout => \CP|CLK60|Add0~6\);

-- Location: FF_X40_Y50_N43
\CP|CLK60|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~5_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(14));

-- Location: LABCELL_X40_Y50_N45
\CP|CLK60|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~69_sumout\ = SUM(( \CP|CLK60|q\(15) ) + ( VCC ) + ( \CP|CLK60|Add0~6\ ))
-- \CP|CLK60|Add0~70\ = CARRY(( \CP|CLK60|q\(15) ) + ( VCC ) + ( \CP|CLK60|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|CLK60|ALT_INV_q\(15),
	cin => \CP|CLK60|Add0~6\,
	sumout => \CP|CLK60|Add0~69_sumout\,
	cout => \CP|CLK60|Add0~70\);

-- Location: MLABCELL_X39_Y50_N12
\CP|CLK60|q~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|q~9_combout\ = ( \CP|CLK60|Add0~69_sumout\ ) # ( !\CP|CLK60|Add0~69_sumout\ & ( (!\KEY[0]~input_o\) # ((\CP|CLK60|Equal0~0_combout\ & \CP|CLK60|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Equal0~4_combout\,
	dataf => \CP|CLK60|ALT_INV_Add0~69_sumout\,
	combout => \CP|CLK60|q~9_combout\);

-- Location: FF_X39_Y50_N14
\CP|CLK60|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(15));

-- Location: LABCELL_X40_Y50_N48
\CP|CLK60|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Add0~21_sumout\ = SUM(( \CP|CLK60|q\(16) ) + ( VCC ) + ( \CP|CLK60|Add0~70\ ))
-- \CP|CLK60|Add0~22\ = CARRY(( \CP|CLK60|q\(16) ) + ( VCC ) + ( \CP|CLK60|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|CLK60|ALT_INV_q\(16),
	cin => \CP|CLK60|Add0~70\,
	sumout => \CP|CLK60|Add0~21_sumout\,
	cout => \CP|CLK60|Add0~22\);

-- Location: FF_X40_Y50_N50
\CP|CLK60|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~21_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(16));

-- Location: FF_X40_Y50_N52
\CP|CLK60|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|CLK60|Add0~1_sumout\,
	sclr => \CP|CLK60|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|q\(17));

-- Location: MLABCELL_X39_Y50_N27
\CP|CLK60|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|Equal0~0_combout\ = (!\CP|CLK60|q\(17) & !\CP|CLK60|q\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_q\(17),
	datac => \CP|CLK60|ALT_INV_q\(14),
	combout => \CP|CLK60|Equal0~0_combout\);

-- Location: MLABCELL_X39_Y50_N3
\CP|CLK60|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|CLK60|always0~0_combout\ = ( \CP|CLK60|Equal0~2_combout\ & ( (!\KEY[0]~input_o\) # ((\CP|CLK60|Equal0~0_combout\ & (\CP|CLK60|Equal0~3_combout\ & \CP|CLK60|Equal0~1_combout\))) ) ) # ( !\CP|CLK60|Equal0~2_combout\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|CLK60|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|CLK60|ALT_INV_Equal0~3_combout\,
	datad => \CP|CLK60|ALT_INV_Equal0~1_combout\,
	dataf => \CP|CLK60|ALT_INV_Equal0~2_combout\,
	combout => \CP|CLK60|always0~0_combout\);

-- Location: FF_X35_Y52_N32
\CP|CLK60|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \CP|CLK60|always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|CLK60|out~q\);

-- Location: LABCELL_X36_Y53_N39
\CP|currentState.displayState~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|currentState.displayState~0_combout\ = ( \CP|CLK60|out~q\ & ( \CP|cenable~combout\ ) ) # ( !\CP|CLK60|out~q\ & ( \CP|cenable~combout\ & ( !\CP|RCenable~combout\ ) ) ) # ( \CP|CLK60|out~q\ & ( !\CP|cenable~combout\ & ( \CP|RCenable~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_RCenable~combout\,
	datae => \CP|CLK60|ALT_INV_out~q\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|currentState.displayState~0_combout\);

-- Location: LABCELL_X36_Y55_N57
\CP|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|comb~0_combout\ = ( \CP|currentState.resetState_124~combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|ALT_INV_currentState.resetState_124~combout\,
	combout => \CP|comb~0_combout\);

-- Location: LABCELL_X36_Y55_N24
\CP|currentState.resetState_124\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|currentState.resetState_124~combout\ = ( !\CP|comb~0_combout\ & ( (!\KEY[0]~input_o\) # ((\CP|currentState.resetState_124~combout\ & !\CP|currentState.displayState~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110000111100111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|ALT_INV_currentState.resetState_124~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|ALT_INV_currentState.displayState~0_combout\,
	dataf => \CP|ALT_INV_comb~0_combout\,
	combout => \CP|currentState.resetState_124~combout\);

-- Location: LABCELL_X36_Y55_N42
\CP|currentState.displayState~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|currentState.displayState~1_combout\ = ( \CP|RCenable~combout\ & ( (\CP|CLK60|out~q\) # (\CP|currentState.resetState_124~combout\) ) ) # ( !\CP|RCenable~combout\ & ( (\CP|currentState.resetState_124~combout\) # (\CP|cenable~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|ALT_INV_currentState.resetState_124~combout\,
	datad => \CP|CLK60|ALT_INV_out~q\,
	dataf => \CP|ALT_INV_RCenable~combout\,
	combout => \CP|currentState.displayState~1_combout\);

-- Location: LABCELL_X35_Y54_N39
\CP|cenable\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|cenable~combout\ = ( \CP|Selector3~0_combout\ & ( (\KEY[0]~input_o\ & ((\CP|currentState.displayState~1_combout\) # (\CP|cenable~combout\))) ) ) # ( !\CP|Selector3~0_combout\ & ( (\KEY[0]~input_o\ & (\CP|cenable~combout\ & 
-- !\CP|currentState.displayState~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|ALT_INV_cenable~combout\,
	datad => \CP|ALT_INV_currentState.displayState~1_combout\,
	dataf => \CP|ALT_INV_Selector3~0_combout\,
	combout => \CP|cenable~combout\);

-- Location: LABCELL_X30_Y54_N15
\CP|BGC|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~57_sumout\ = SUM(( \CP|BGC|out\(5) ) + ( GND ) + ( \CP|BGC|Add2~54\ ))
-- \CP|BGC|Add2~58\ = CARRY(( \CP|BGC|out\(5) ) + ( GND ) + ( \CP|BGC|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(5),
	cin => \CP|BGC|Add2~54\,
	sumout => \CP|BGC|Add2~57_sumout\,
	cout => \CP|BGC|Add2~58\);

-- Location: LABCELL_X31_Y54_N42
\CP|BGC|out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~14_combout\ = ( \CP|BGC|Add2~57_sumout\ & ( (\CP|cenable~combout\ & (\KEY[0]~input_o\ & ((!\CP|BGC|Equal0~2_combout\) # (\CP|BGC|Equal1~0_combout\)))) ) ) # ( !\CP|BGC|Add2~57_sumout\ & ( (\CP|cenable~combout\ & (\CP|BGC|Equal1~0_combout\ & 
-- \KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000100010100000000000001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_Add2~57_sumout\,
	combout => \CP|BGC|out~14_combout\);

-- Location: FF_X35_Y54_N35
\CP|BGC|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(5));

-- Location: LABCELL_X33_Y54_N42
\CP|BGC|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Equal0~1_combout\ = ( \CP|BGC|out\(7) & ( (\CP|BGC|out\(5) & (\CP|BGC|out\(6) & \CP|BGC|out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(5),
	datac => \CP|BGC|ALT_INV_out\(6),
	datad => \CP|BGC|ALT_INV_out\(4),
	dataf => \CP|BGC|ALT_INV_out\(7),
	combout => \CP|BGC|Equal0~1_combout\);

-- Location: LABCELL_X33_Y54_N3
\CP|BGC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Equal1~0_combout\ = ( \CP|Equal1~1_combout\ & ( (\CP|BGC|Equal0~0_combout\ & (\CP|BGC|Equal0~1_combout\ & (\CP|Equal1~0_combout\ & !\CP|BGC|out\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal0~0_combout\,
	datab => \CP|BGC|ALT_INV_Equal0~1_combout\,
	datac => \CP|ALT_INV_Equal1~0_combout\,
	datad => \CP|BGC|ALT_INV_out\(13),
	dataf => \CP|ALT_INV_Equal1~1_combout\,
	combout => \CP|BGC|Equal1~0_combout\);

-- Location: LABCELL_X33_Y54_N21
\CP|BGC|out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out[2]~11_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & (!\CP|BGC|Equal1~0_combout\ & \CP|BGC|Add2~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \CP|BGC|ALT_INV_Add2~45_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|BGC|out[2]~11_combout\);

-- Location: FF_X33_Y54_N23
\CP|BGC|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(2));

-- Location: LABCELL_X33_Y54_N6
\CP|BGC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Equal0~0_combout\ = ( !\CP|BGC|out\(3) & ( !\CP|BGC|out\(0) & ( (!\CP|BGC|out\(2) & !\CP|BGC|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(2),
	datad => \CP|BGC|ALT_INV_out\(1),
	datae => \CP|BGC|ALT_INV_out\(3),
	dataf => \CP|BGC|ALT_INV_out\(0),
	combout => \CP|BGC|Equal0~0_combout\);

-- Location: LABCELL_X33_Y54_N0
\CP|BGC|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Equal0~2_combout\ = (\CP|BGC|Equal0~0_combout\ & \CP|BGC|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal0~0_combout\,
	datab => \CP|BGC|ALT_INV_Equal0~1_combout\,
	combout => \CP|BGC|Equal0~2_combout\);

-- Location: LABCELL_X30_Y54_N18
\CP|BGC|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|Add2~61_sumout\ = SUM(( \CP|BGC|out\(6) ) + ( GND ) + ( \CP|BGC|Add2~58\ ))
-- \CP|BGC|Add2~62\ = CARRY(( \CP|BGC|out\(6) ) + ( GND ) + ( \CP|BGC|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(6),
	cin => \CP|BGC|Add2~58\,
	sumout => \CP|BGC|Add2~61_sumout\,
	cout => \CP|BGC|Add2~62\);

-- Location: LABCELL_X33_Y54_N33
\CP|BGC|out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~15_combout\ = ( \CP|BGC|Equal1~0_combout\ & ( (\CP|cenable~combout\ & \KEY[0]~input_o\) ) ) # ( !\CP|BGC|Equal1~0_combout\ & ( (!\CP|BGC|Equal0~2_combout\ & (\CP|cenable~combout\ & (\CP|BGC|Add2~61_sumout\ & \KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_Add2~61_sumout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|BGC|ALT_INV_Equal1~0_combout\,
	combout => \CP|BGC|out~15_combout\);

-- Location: FF_X35_Y54_N56
\CP|BGC|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGC|out~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(6));

-- Location: MLABCELL_X34_Y54_N24
\CP|BGC|out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGC|out~16_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & (((\CP|BGC|Add2~65_sumout\ & !\CP|BGC|Equal0~2_combout\)) # (\CP|BGC|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010011110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_Add2~65_sumout\,
	datab => \CP|BGC|ALT_INV_Equal0~2_combout\,
	datac => \CP|BGC|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|BGC|out~16_combout\);

-- Location: FF_X34_Y54_N26
\CP|BGC|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|BGC|out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|BGC|out\(7));

-- Location: LABCELL_X35_Y53_N51
\CP|NP|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|always0~1_combout\ = ( !\CP|NP|out\(5) & ( (\CP|NP|out\(6) & (!\CP|NP|out\(7) & ((\CP|NP|out\(3)) # (\CP|NP|out\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(4),
	datab => \CP|NP|ALT_INV_out\(6),
	datac => \CP|NP|ALT_INV_out\(7),
	datad => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(5),
	combout => \CP|NP|always0~1_combout\);

-- Location: LABCELL_X35_Y53_N12
\CP|NP|out~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~31_combout\ = ( \CP|NP|out\(2) & ( \CP|NP|out\(5) & ( (\CP|NP|out\(7) & ((!\CP|NP|out\(4)) # (!\CP|NP|out\(6)))) ) ) ) # ( !\CP|NP|out\(2) & ( \CP|NP|out\(5) & ( (\CP|NP|out\(7) & ((!\CP|NP|out\(4)) # (!\CP|NP|out\(6)))) ) ) ) # ( 
-- \CP|NP|out\(2) & ( !\CP|NP|out\(5) & ( \CP|NP|out\(7) ) ) ) # ( !\CP|NP|out\(2) & ( !\CP|NP|out\(5) & ( (\CP|NP|out\(7) & (((\CP|NP|out\(6)) # (\CP|NP|out\(3))) # (\CP|NP|out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111100000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(4),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(6),
	datad => \CP|NP|ALT_INV_out\(7),
	datae => \CP|NP|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(5),
	combout => \CP|NP|out~31_combout\);

-- Location: LABCELL_X36_Y53_N48
\CP|NP|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|always0~2_combout\ = ( \CP|NP|out\(6) & ( \CP|NP|out\(4) & ( (\CP|NP|out\(5) & !\CP|NP|out\(7)) ) ) ) # ( \CP|NP|out\(6) & ( !\CP|NP|out\(4) & ( (\CP|NP|out\(5) & !\CP|NP|out\(7)) ) ) ) # ( !\CP|NP|out\(6) & ( !\CP|NP|out\(4) & ( (!\CP|NP|out\(5) & 
-- (!\CP|NP|out\(2) & (\CP|NP|out\(7) & !\CP|NP|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(5),
	datab => \CP|NP|ALT_INV_out\(2),
	datac => \CP|NP|ALT_INV_out\(7),
	datad => \CP|NP|ALT_INV_out\(3),
	datae => \CP|NP|ALT_INV_out\(6),
	dataf => \CP|NP|ALT_INV_out\(4),
	combout => \CP|NP|always0~2_combout\);

-- Location: LABCELL_X35_Y53_N30
\CP|NP|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|always0~3_combout\ = ( \CP|NP|out\(3) & ( \CP|NP|out\(5) & ( (!\CP|NP|out\(7) & (\CP|NP|out\(2) & (\CP|NP|out\(4) & !\CP|NP|out\(6)))) ) ) ) # ( !\CP|NP|out\(3) & ( !\CP|NP|out\(5) & ( (!\CP|NP|out\(7) & (!\CP|NP|out\(4) & \CP|NP|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(7),
	datab => \CP|NP|ALT_INV_out\(2),
	datac => \CP|NP|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(6),
	datae => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(5),
	combout => \CP|NP|always0~3_combout\);

-- Location: LABCELL_X37_Y53_N0
\CP|NP|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add10~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add10~29_sumout\,
	cout => \CP|NP|Add10~30\);

-- Location: LABCELL_X37_Y53_N30
\CP|NP|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add9~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add9~29_sumout\,
	cout => \CP|NP|Add9~30\);

-- Location: LABCELL_X35_Y53_N27
\CP|NP|out~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~33_combout\ = ( \CP|NP|Add10~29_sumout\ & ( \CP|NP|Add9~29_sumout\ & ( (!\CP|NP|out~31_combout\ & ((!\CP|NP|always0~1_combout\) # (\CP|NP|always0~2_combout\))) ) ) ) # ( !\CP|NP|Add10~29_sumout\ & ( \CP|NP|Add9~29_sumout\ & ( 
-- (!\CP|NP|always0~1_combout\ & (!\CP|NP|out~31_combout\ & (!\CP|NP|always0~2_combout\ & \CP|NP|always0~3_combout\))) ) ) ) # ( \CP|NP|Add10~29_sumout\ & ( !\CP|NP|Add9~29_sumout\ & ( (!\CP|NP|out~31_combout\ & (((!\CP|NP|always0~1_combout\ & 
-- !\CP|NP|always0~3_combout\)) # (\CP|NP|always0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011000000110000000000100000001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_always0~1_combout\,
	datab => \CP|NP|ALT_INV_out~31_combout\,
	datac => \CP|NP|ALT_INV_always0~2_combout\,
	datad => \CP|NP|ALT_INV_always0~3_combout\,
	datae => \CP|NP|ALT_INV_Add10~29_sumout\,
	dataf => \CP|NP|ALT_INV_Add9~29_sumout\,
	combout => \CP|NP|out~33_combout\);

-- Location: MLABCELL_X34_Y51_N3
\CP|NP|out~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~34_combout\ = ( !\CP|NP|out~3_combout\ & ( \CP|NP|always0~0_combout\ & ( \CP|NP|out\(0) ) ) ) # ( !\CP|NP|out~3_combout\ & ( !\CP|NP|always0~0_combout\ & ( (\CP|NP|out\(0) & \CP|NP|always0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(0),
	datad => \CP|NP|ALT_INV_always0~1_combout\,
	datae => \CP|NP|ALT_INV_out~3_combout\,
	dataf => \CP|NP|ALT_INV_always0~0_combout\,
	combout => \CP|NP|out~34_combout\);

-- Location: LABCELL_X35_Y52_N30
\CP|NP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add0~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add0~29_sumout\,
	cout => \CP|NP|Add0~30\);

-- Location: MLABCELL_X34_Y55_N0
\CP|NP|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add4~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add4~29_sumout\,
	cout => \CP|NP|Add4~30\);

-- Location: LABCELL_X35_Y52_N0
\CP|NP|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add3~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add3~29_sumout\,
	cout => \CP|NP|Add3~30\);

-- Location: LABCELL_X35_Y53_N24
\CP|NP|out~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~32_combout\ = ( \CP|NP|Add4~29_sumout\ & ( \CP|NP|Add3~29_sumout\ & ( (!\CP|NP|out~31_combout\ & ((!\CP|NP|always0~1_combout\) # (\CP|NP|always0~2_combout\))) ) ) ) # ( !\CP|NP|Add4~29_sumout\ & ( \CP|NP|Add3~29_sumout\ & ( 
-- (!\CP|NP|always0~1_combout\ & (!\CP|NP|out~31_combout\ & (\CP|NP|always0~3_combout\ & !\CP|NP|always0~2_combout\))) ) ) ) # ( \CP|NP|Add4~29_sumout\ & ( !\CP|NP|Add3~29_sumout\ & ( (!\CP|NP|out~31_combout\ & (((!\CP|NP|always0~1_combout\ & 
-- !\CP|NP|always0~3_combout\)) # (\CP|NP|always0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100110000001000000000001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_always0~1_combout\,
	datab => \CP|NP|ALT_INV_out~31_combout\,
	datac => \CP|NP|ALT_INV_always0~3_combout\,
	datad => \CP|NP|ALT_INV_always0~2_combout\,
	datae => \CP|NP|ALT_INV_Add4~29_sumout\,
	dataf => \CP|NP|ALT_INV_Add3~29_sumout\,
	combout => \CP|NP|out~32_combout\);

-- Location: MLABCELL_X34_Y53_N9
\CP|NP|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Equal0~1_combout\ = ( !\CP|NP|out\(3) & ( (!\CP|NP|out\(0) & (\CP|NP|out\(7) & (!\CP|NP|out\(1) & !\CP|NP|out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(0),
	datab => \CP|NP|ALT_INV_out\(7),
	datac => \CP|NP|ALT_INV_out\(1),
	datad => \CP|NP|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(3),
	combout => \CP|NP|Equal0~1_combout\);

-- Location: LABCELL_X36_Y53_N27
\CP|NP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Equal0~0_combout\ = ( \CP|NP|out\(6) & ( (\CP|NP|out\(5) & \CP|NP|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(5),
	datac => \CP|NP|ALT_INV_out\(4),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|Equal0~0_combout\);

-- Location: MLABCELL_X34_Y53_N57
\CP|NP|out~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~30_combout\ = ( !\CP|NP|p|out~q\ & ( (!\CP|NP|Equal0~1_combout\) # (!\CP|NP|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_Equal0~1_combout\,
	datad => \CP|NP|ALT_INV_Equal0~0_combout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out~30_combout\);

-- Location: LABCELL_X33_Y55_N30
\CP|NP|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~29_sumout\ = SUM(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add6~30\ = CARRY(( \CP|NP|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|NP|Add6~29_sumout\,
	cout => \CP|NP|Add6~30\);

-- Location: MLABCELL_X34_Y53_N48
\CP|NP|out~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~37_combout\ = ( !\CP|NP|out~30_combout\ & ( (((\CP|NP|Add6~29_sumout\ & ((\CP|NP|out~3_combout\)))) # (\CP|NP|out~34_combout\)) # (\CP|NP|out~33_combout\) ) ) # ( \CP|NP|out~30_combout\ & ( ((((\CP|NP|Add0~29_sumout\ & \CP|NP|out~3_combout\)) # 
-- (\CP|NP|out~32_combout\)) # (\CP|NP|out~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101110111001100111111111101111111011111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out~33_combout\,
	datab => \CP|NP|ALT_INV_out~34_combout\,
	datac => \CP|NP|ALT_INV_Add0~29_sumout\,
	datad => \CP|NP|ALT_INV_out~32_combout\,
	datae => \CP|NP|ALT_INV_out~30_combout\,
	dataf => \CP|NP|ALT_INV_out~3_combout\,
	datag => \CP|NP|ALT_INV_Add6~29_sumout\,
	combout => \CP|NP|out~37_combout\);

-- Location: MLABCELL_X34_Y53_N30
\CP|NP|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Equal0~2_combout\ = ( \CP|NP|Equal0~0_combout\ & ( \CP|NP|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_Equal0~1_combout\,
	dataf => \CP|NP|ALT_INV_Equal0~0_combout\,
	combout => \CP|NP|Equal0~2_combout\);

-- Location: MLABCELL_X34_Y53_N54
\CP|NP|out~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~29_combout\ = ( \CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|RCenable~combout\ & !\CP|NP|LessThan10~1_combout\)) ) ) # ( !\CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|RCenable~combout\ & !\CP|NP|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110100111101001111010011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \CP|NP|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|NP|ALT_INV_LessThan10~1_combout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out~29_combout\);

-- Location: FF_X34_Y53_N50
\CP|NP|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~37_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(0));

-- Location: LABCELL_X33_Y55_N33
\CP|NP|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add6~30\ ))
-- \CP|NP|Add6~26\ = CARRY(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add6~30\,
	sumout => \CP|NP|Add6~25_sumout\,
	cout => \CP|NP|Add6~26\);

-- Location: LABCELL_X33_Y55_N36
\CP|NP|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add6~26\ ))
-- \CP|NP|Add6~22\ = CARRY(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add6~26\,
	sumout => \CP|NP|Add6~21_sumout\,
	cout => \CP|NP|Add6~22\);

-- Location: LABCELL_X33_Y55_N39
\CP|NP|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add6~22\ ))
-- \CP|NP|Add6~18\ = CARRY(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add6~22\,
	sumout => \CP|NP|Add6~17_sumout\,
	cout => \CP|NP|Add6~18\);

-- Location: LABCELL_X35_Y53_N6
\CP|NP|out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[2]~4_combout\ = ( !\CP|NP|out\(6) & ( \CP|NP|out\(7) & ( (!\CP|NP|out\(4) & (((\CP|NP|out\(5)) # (\CP|NP|out\(3))) # (\CP|NP|out\(2)))) # (\CP|NP|out\(4) & ((!\CP|NP|out\(5)) # ((!\CP|NP|out\(2) & !\CP|NP|out\(3))))) ) ) ) # ( \CP|NP|out\(6) & 
-- ( !\CP|NP|out\(7) & ( (!\CP|NP|out\(3) & (!\CP|NP|out\(4) & !\CP|NP|out\(5))) ) ) ) # ( !\CP|NP|out\(6) & ( !\CP|NP|out\(7) & ( (\CP|NP|out\(2) & (\CP|NP|out\(3) & (\CP|NP|out\(4) & \CP|NP|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110000000000000001111111111110000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(2),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(5),
	datae => \CP|NP|ALT_INV_out\(6),
	dataf => \CP|NP|ALT_INV_out\(7),
	combout => \CP|NP|out[2]~4_combout\);

-- Location: LABCELL_X37_Y53_N3
\CP|NP|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add10~30\ ))
-- \CP|NP|Add10~26\ = CARRY(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add10~30\,
	sumout => \CP|NP|Add10~25_sumout\,
	cout => \CP|NP|Add10~26\);

-- Location: LABCELL_X37_Y53_N6
\CP|NP|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add10~26\ ))
-- \CP|NP|Add10~22\ = CARRY(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add10~26\,
	sumout => \CP|NP|Add10~21_sumout\,
	cout => \CP|NP|Add10~22\);

-- Location: LABCELL_X37_Y53_N9
\CP|NP|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add10~22\ ))
-- \CP|NP|Add10~18\ = CARRY(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add10~22\,
	sumout => \CP|NP|Add10~17_sumout\,
	cout => \CP|NP|Add10~18\);

-- Location: MLABCELL_X34_Y53_N3
\CP|NP|Add7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add7~4_combout\ = ( \CP|NP|out\(3) & ( !\CP|NP|out\(2) ) ) # ( !\CP|NP|out\(3) & ( \CP|NP|out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(3),
	combout => \CP|NP|Add7~4_combout\);

-- Location: LABCELL_X37_Y53_N33
\CP|NP|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add9~30\ ))
-- \CP|NP|Add9~26\ = CARRY(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add9~30\,
	sumout => \CP|NP|Add9~25_sumout\,
	cout => \CP|NP|Add9~26\);

-- Location: LABCELL_X37_Y53_N36
\CP|NP|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add9~26\ ))
-- \CP|NP|Add9~22\ = CARRY(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add9~26\,
	sumout => \CP|NP|Add9~21_sumout\,
	cout => \CP|NP|Add9~22\);

-- Location: LABCELL_X37_Y53_N39
\CP|NP|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add9~22\ ))
-- \CP|NP|Add9~18\ = CARRY(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add9~22\,
	sumout => \CP|NP|Add9~17_sumout\,
	cout => \CP|NP|Add9~18\);

-- Location: MLABCELL_X34_Y55_N33
\CP|NP|out[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[2]~5_combout\ = ( \CP|NP|out\(4) & ( \CP|NP|out\(6) & ( (!\CP|NP|out\(7) & !\CP|NP|out\(5)) ) ) ) # ( !\CP|NP|out\(4) & ( \CP|NP|out\(6) & ( (!\CP|NP|out\(7) & !\CP|NP|out\(5)) ) ) ) # ( \CP|NP|out\(4) & ( !\CP|NP|out\(6) & ( (!\CP|NP|out\(7) & 
-- (\CP|NP|out\(5) & (\CP|NP|out\(3) & \CP|NP|out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(7),
	datab => \CP|NP|ALT_INV_out\(5),
	datac => \CP|NP|ALT_INV_out\(3),
	datad => \CP|NP|ALT_INV_out\(2),
	datae => \CP|NP|ALT_INV_out\(4),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|out[2]~5_combout\);

-- Location: LABCELL_X33_Y55_N0
\CP|NP|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add8~26\ = CARRY(( \CP|NP|out\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(1),
	cin => GND,
	sumout => \CP|NP|Add8~25_sumout\,
	cout => \CP|NP|Add8~26\);

-- Location: LABCELL_X33_Y55_N3
\CP|NP|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add8~26\ ))
-- \CP|NP|Add8~22\ = CARRY(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add8~26\,
	sumout => \CP|NP|Add8~21_sumout\,
	cout => \CP|NP|Add8~22\);

-- Location: LABCELL_X33_Y55_N6
\CP|NP|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add8~22\ ))
-- \CP|NP|Add8~18\ = CARRY(( \CP|NP|out\(3) ) + ( VCC ) + ( \CP|NP|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add8~22\,
	sumout => \CP|NP|Add8~17_sumout\,
	cout => \CP|NP|Add8~18\);

-- Location: LABCELL_X37_Y53_N24
\CP|NP|out~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~19_combout\ = ( \CP|NP|out[2]~5_combout\ & ( \CP|NP|Add8~17_sumout\ & ( (!\CP|NP|out[2]~4_combout\) # (\CP|NP|Add9~17_sumout\) ) ) ) # ( !\CP|NP|out[2]~5_combout\ & ( \CP|NP|Add8~17_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & 
-- (\CP|NP|Add10~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|Add7~4_combout\))) ) ) ) # ( \CP|NP|out[2]~5_combout\ & ( !\CP|NP|Add8~17_sumout\ & ( (\CP|NP|out[2]~4_combout\ & \CP|NP|Add9~17_sumout\) ) ) ) # ( !\CP|NP|out[2]~5_combout\ & ( 
-- !\CP|NP|Add8~17_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add10~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|Add7~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010000000000101010101110010011100101010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out[2]~4_combout\,
	datab => \CP|NP|ALT_INV_Add10~17_sumout\,
	datac => \CP|NP|ALT_INV_Add7~4_combout\,
	datad => \CP|NP|ALT_INV_Add9~17_sumout\,
	datae => \CP|NP|ALT_INV_out[2]~5_combout\,
	dataf => \CP|NP|ALT_INV_Add8~17_sumout\,
	combout => \CP|NP|out~19_combout\);

-- Location: LABCELL_X35_Y52_N36
\CP|NP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add0~26\ ))
-- \CP|NP|Add0~22\ = CARRY(( \CP|NP|out\(2) ) + ( VCC ) + ( \CP|NP|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add0~26\,
	sumout => \CP|NP|Add0~21_sumout\,
	cout => \CP|NP|Add0~22\);

-- Location: LABCELL_X35_Y52_N39
\CP|NP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add0~22\ ))
-- \CP|NP|Add0~18\ = CARRY(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add0~22\,
	sumout => \CP|NP|Add0~17_sumout\,
	cout => \CP|NP|Add0~18\);

-- Location: MLABCELL_X34_Y55_N3
\CP|NP|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add4~30\ ))
-- \CP|NP|Add4~26\ = CARRY(( \CP|NP|out\(1) ) + ( VCC ) + ( \CP|NP|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add4~30\,
	sumout => \CP|NP|Add4~25_sumout\,
	cout => \CP|NP|Add4~26\);

-- Location: MLABCELL_X34_Y55_N6
\CP|NP|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add4~26\ ))
-- \CP|NP|Add4~22\ = CARRY(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add4~26\,
	sumout => \CP|NP|Add4~21_sumout\,
	cout => \CP|NP|Add4~22\);

-- Location: MLABCELL_X34_Y55_N9
\CP|NP|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add4~22\ ))
-- \CP|NP|Add4~18\ = CARRY(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add4~22\,
	sumout => \CP|NP|Add4~17_sumout\,
	cout => \CP|NP|Add4~18\);

-- Location: MLABCELL_X34_Y52_N0
\CP|NP|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add2~26\ = CARRY(( \CP|NP|out\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(1),
	cin => GND,
	sumout => \CP|NP|Add2~25_sumout\,
	cout => \CP|NP|Add2~26\);

-- Location: MLABCELL_X34_Y52_N3
\CP|NP|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add2~26\ ))
-- \CP|NP|Add2~22\ = CARRY(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add2~26\,
	sumout => \CP|NP|Add2~21_sumout\,
	cout => \CP|NP|Add2~22\);

-- Location: MLABCELL_X34_Y52_N6
\CP|NP|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add2~22\ ))
-- \CP|NP|Add2~18\ = CARRY(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add2~22\,
	sumout => \CP|NP|Add2~17_sumout\,
	cout => \CP|NP|Add2~18\);

-- Location: LABCELL_X35_Y52_N3
\CP|NP|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add3~30\ ))
-- \CP|NP|Add3~26\ = CARRY(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add3~30\,
	sumout => \CP|NP|Add3~25_sumout\,
	cout => \CP|NP|Add3~26\);

-- Location: LABCELL_X35_Y52_N6
\CP|NP|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~21_sumout\ = SUM(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add3~26\ ))
-- \CP|NP|Add3~22\ = CARRY(( \CP|NP|out\(2) ) + ( GND ) + ( \CP|NP|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_out\(2),
	cin => \CP|NP|Add3~26\,
	sumout => \CP|NP|Add3~21_sumout\,
	cout => \CP|NP|Add3~22\);

-- Location: LABCELL_X35_Y52_N9
\CP|NP|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~17_sumout\ = SUM(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add3~22\ ))
-- \CP|NP|Add3~18\ = CARRY(( \CP|NP|out\(3) ) + ( GND ) + ( \CP|NP|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(3),
	cin => \CP|NP|Add3~22\,
	sumout => \CP|NP|Add3~17_sumout\,
	cout => \CP|NP|Add3~18\);

-- Location: LABCELL_X35_Y53_N54
\CP|NP|out~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~20_combout\ = ( \CP|NP|Add2~17_sumout\ & ( \CP|NP|Add3~17_sumout\ & ( ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add7~4_combout\)))) # (\CP|NP|out[2]~5_combout\) ) ) ) # ( 
-- !\CP|NP|Add2~17_sumout\ & ( \CP|NP|Add3~17_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add7~4_combout\))))) # (\CP|NP|out[2]~5_combout\ & 
-- (\CP|NP|out[2]~4_combout\)) ) ) ) # ( \CP|NP|Add2~17_sumout\ & ( !\CP|NP|Add3~17_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add7~4_combout\))))) # 
-- (\CP|NP|out[2]~5_combout\ & (!\CP|NP|out[2]~4_combout\)) ) ) ) # ( !\CP|NP|Add2~17_sumout\ & ( !\CP|NP|Add3~17_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~17_sumout\)) # (\CP|NP|out[2]~4_combout\ & 
-- ((\CP|NP|Add7~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out[2]~5_combout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add4~17_sumout\,
	datad => \CP|NP|ALT_INV_Add7~4_combout\,
	datae => \CP|NP|ALT_INV_Add2~17_sumout\,
	dataf => \CP|NP|ALT_INV_Add3~17_sumout\,
	combout => \CP|NP|out~20_combout\);

-- Location: MLABCELL_X34_Y53_N42
\CP|NP|out~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~21_combout\ = ( \CP|NP|out~20_combout\ & ( \CP|NP|out~3_combout\ & ( (!\CP|NP|p|out~q\ & ((\CP|NP|Add0~17_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~17_sumout\)) ) ) ) # ( !\CP|NP|out~20_combout\ & ( \CP|NP|out~3_combout\ & ( 
-- (!\CP|NP|p|out~q\ & ((\CP|NP|Add0~17_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~17_sumout\)) ) ) ) # ( \CP|NP|out~20_combout\ & ( !\CP|NP|out~3_combout\ & ( (!\CP|NP|p|out~q\) # (\CP|NP|out~19_combout\) ) ) ) # ( !\CP|NP|out~20_combout\ & ( 
-- !\CP|NP|out~3_combout\ & ( (\CP|NP|p|out~q\ & \CP|NP|out~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add6~17_sumout\,
	datab => \CP|NP|p|ALT_INV_out~q\,
	datac => \CP|NP|ALT_INV_out~19_combout\,
	datad => \CP|NP|ALT_INV_Add0~17_sumout\,
	datae => \CP|NP|ALT_INV_out~20_combout\,
	dataf => \CP|NP|ALT_INV_out~3_combout\,
	combout => \CP|NP|out~21_combout\);

-- Location: MLABCELL_X34_Y53_N27
\CP|NP|out[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[2]~9_combout\ = ( \CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|RCenable~combout\ & !\CP|NP|LessThan10~1_combout\)) ) ) # ( !\CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|RCenable~combout\ & !\CP|NP|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011100110111001101110011011101110011001101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|NP|ALT_INV_Equal0~2_combout\,
	datad => \CP|NP|ALT_INV_LessThan10~1_combout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out[2]~9_combout\);

-- Location: FF_X34_Y53_N44
\CP|NP|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~21_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(3));

-- Location: LABCELL_X35_Y52_N42
\CP|NP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add0~18\ ))
-- \CP|NP|Add0~14\ = CARRY(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add0~18\,
	sumout => \CP|NP|Add0~13_sumout\,
	cout => \CP|NP|Add0~14\);

-- Location: LABCELL_X33_Y55_N42
\CP|NP|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add6~18\ ))
-- \CP|NP|Add6~14\ = CARRY(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add6~18\,
	sumout => \CP|NP|Add6~13_sumout\,
	cout => \CP|NP|Add6~14\);

-- Location: LABCELL_X37_Y53_N12
\CP|NP|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add10~18\ ))
-- \CP|NP|Add10~14\ = CARRY(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add10~18\,
	sumout => \CP|NP|Add10~13_sumout\,
	cout => \CP|NP|Add10~14\);

-- Location: LABCELL_X37_Y53_N42
\CP|NP|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add9~18\ ))
-- \CP|NP|Add9~14\ = CARRY(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add9~18\,
	sumout => \CP|NP|Add9~13_sumout\,
	cout => \CP|NP|Add9~14\);

-- Location: LABCELL_X33_Y55_N9
\CP|NP|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add8~18\ ))
-- \CP|NP|Add8~14\ = CARRY(( \CP|NP|out\(4) ) + ( VCC ) + ( \CP|NP|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add8~18\,
	sumout => \CP|NP|Add8~13_sumout\,
	cout => \CP|NP|Add8~14\);

-- Location: LABCELL_X36_Y53_N3
\CP|NP|Add7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add7~3_combout\ = ( \CP|NP|out\(3) & ( !\CP|NP|out\(4) ) ) # ( !\CP|NP|out\(3) & ( !\CP|NP|out\(4) $ (!\CP|NP|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(3),
	combout => \CP|NP|Add7~3_combout\);

-- Location: LABCELL_X37_Y53_N54
\CP|NP|out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~16_combout\ = ( \CP|NP|Add8~13_sumout\ & ( \CP|NP|Add7~3_combout\ & ( (!\CP|NP|out[2]~5_combout\ & (\CP|NP|Add10~13_sumout\ & (!\CP|NP|out[2]~4_combout\))) # (\CP|NP|out[2]~5_combout\ & (((!\CP|NP|out[2]~4_combout\) # 
-- (\CP|NP|Add9~13_sumout\)))) ) ) ) # ( !\CP|NP|Add8~13_sumout\ & ( \CP|NP|Add7~3_combout\ & ( (!\CP|NP|out[2]~5_combout\ & (\CP|NP|Add10~13_sumout\ & (!\CP|NP|out[2]~4_combout\))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\ & 
-- \CP|NP|Add9~13_sumout\)))) ) ) ) # ( \CP|NP|Add8~13_sumout\ & ( !\CP|NP|Add7~3_combout\ & ( (!\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\)) # (\CP|NP|Add10~13_sumout\))) # (\CP|NP|out[2]~5_combout\ & (((!\CP|NP|out[2]~4_combout\) # 
-- (\CP|NP|Add9~13_sumout\)))) ) ) ) # ( !\CP|NP|Add8~13_sumout\ & ( !\CP|NP|Add7~3_combout\ & ( (!\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\)) # (\CP|NP|Add10~13_sumout\))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\ & 
-- \CP|NP|Add9~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101111011110100111111100100000001001010111000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out[2]~5_combout\,
	datab => \CP|NP|ALT_INV_Add10~13_sumout\,
	datac => \CP|NP|ALT_INV_out[2]~4_combout\,
	datad => \CP|NP|ALT_INV_Add9~13_sumout\,
	datae => \CP|NP|ALT_INV_Add8~13_sumout\,
	dataf => \CP|NP|ALT_INV_Add7~3_combout\,
	combout => \CP|NP|out~16_combout\);

-- Location: LABCELL_X35_Y54_N45
\CP|NP|Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add1~3_combout\ = ( \CP|NP|out\(2) & ( !\CP|NP|out\(4) $ (!\CP|NP|out\(3)) ) ) # ( !\CP|NP|out\(2) & ( \CP|NP|out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(2),
	combout => \CP|NP|Add1~3_combout\);

-- Location: MLABCELL_X34_Y55_N12
\CP|NP|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add4~18\ ))
-- \CP|NP|Add4~14\ = CARRY(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add4~18\,
	sumout => \CP|NP|Add4~13_sumout\,
	cout => \CP|NP|Add4~14\);

-- Location: MLABCELL_X34_Y52_N9
\CP|NP|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add2~18\ ))
-- \CP|NP|Add2~14\ = CARRY(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add2~18\,
	sumout => \CP|NP|Add2~13_sumout\,
	cout => \CP|NP|Add2~14\);

-- Location: LABCELL_X35_Y52_N12
\CP|NP|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~13_sumout\ = SUM(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add3~18\ ))
-- \CP|NP|Add3~14\ = CARRY(( \CP|NP|out\(4) ) + ( GND ) + ( \CP|NP|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(4),
	cin => \CP|NP|Add3~18\,
	sumout => \CP|NP|Add3~13_sumout\,
	cout => \CP|NP|Add3~14\);

-- Location: LABCELL_X36_Y53_N30
\CP|NP|out~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~17_combout\ = ( \CP|NP|Add2~13_sumout\ & ( \CP|NP|Add3~13_sumout\ & ( ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add4~13_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add1~3_combout\))) # (\CP|NP|out[2]~5_combout\) ) ) ) # ( 
-- !\CP|NP|Add2~13_sumout\ & ( \CP|NP|Add3~13_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add4~13_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add1~3_combout\)))) # (\CP|NP|out[2]~5_combout\ & 
-- (((\CP|NP|out[2]~4_combout\)))) ) ) ) # ( \CP|NP|Add2~13_sumout\ & ( !\CP|NP|Add3~13_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add4~13_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add1~3_combout\)))) # 
-- (\CP|NP|out[2]~5_combout\ & (((!\CP|NP|out[2]~4_combout\)))) ) ) ) # ( !\CP|NP|Add2~13_sumout\ & ( !\CP|NP|Add3~13_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add4~13_sumout\))) # (\CP|NP|out[2]~4_combout\ & 
-- (\CP|NP|Add1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add1~3_combout\,
	datab => \CP|NP|ALT_INV_out[2]~5_combout\,
	datac => \CP|NP|ALT_INV_Add4~13_sumout\,
	datad => \CP|NP|ALT_INV_out[2]~4_combout\,
	datae => \CP|NP|ALT_INV_Add2~13_sumout\,
	dataf => \CP|NP|ALT_INV_Add3~13_sumout\,
	combout => \CP|NP|out~17_combout\);

-- Location: LABCELL_X36_Y53_N42
\CP|NP|out~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~18_combout\ = ( \CP|NP|out~16_combout\ & ( \CP|NP|out~17_combout\ & ( (!\CP|NP|out~3_combout\) # ((!\CP|NP|p|out~q\ & (\CP|NP|Add0~13_sumout\)) # (\CP|NP|p|out~q\ & ((\CP|NP|Add6~13_sumout\)))) ) ) ) # ( !\CP|NP|out~16_combout\ & ( 
-- \CP|NP|out~17_combout\ & ( (!\CP|NP|p|out~q\ & ((!\CP|NP|out~3_combout\) # ((\CP|NP|Add0~13_sumout\)))) # (\CP|NP|p|out~q\ & (\CP|NP|out~3_combout\ & ((\CP|NP|Add6~13_sumout\)))) ) ) ) # ( \CP|NP|out~16_combout\ & ( !\CP|NP|out~17_combout\ & ( 
-- (!\CP|NP|p|out~q\ & (\CP|NP|out~3_combout\ & (\CP|NP|Add0~13_sumout\))) # (\CP|NP|p|out~q\ & ((!\CP|NP|out~3_combout\) # ((\CP|NP|Add6~13_sumout\)))) ) ) ) # ( !\CP|NP|out~16_combout\ & ( !\CP|NP|out~17_combout\ & ( (\CP|NP|out~3_combout\ & 
-- ((!\CP|NP|p|out~q\ & (\CP|NP|Add0~13_sumout\)) # (\CP|NP|p|out~q\ & ((\CP|NP|Add6~13_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|p|ALT_INV_out~q\,
	datab => \CP|NP|ALT_INV_out~3_combout\,
	datac => \CP|NP|ALT_INV_Add0~13_sumout\,
	datad => \CP|NP|ALT_INV_Add6~13_sumout\,
	datae => \CP|NP|ALT_INV_out~16_combout\,
	dataf => \CP|NP|ALT_INV_out~17_combout\,
	combout => \CP|NP|out~18_combout\);

-- Location: FF_X36_Y53_N44
\CP|NP|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~18_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(4));

-- Location: MLABCELL_X34_Y52_N24
\CP|NP|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|always0~0_combout\ = ( \CP|NP|out\(7) & ( !\CP|NP|out\(6) & ( (!\CP|NP|out\(5) & (((\CP|NP|out\(2)) # (\CP|NP|out\(3))) # (\CP|NP|out\(4)))) # (\CP|NP|out\(5) & ((!\CP|NP|out\(4)) # ((!\CP|NP|out\(3) & !\CP|NP|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(5),
	datab => \CP|NP|ALT_INV_out\(4),
	datac => \CP|NP|ALT_INV_out\(3),
	datad => \CP|NP|ALT_INV_out\(2),
	datae => \CP|NP|ALT_INV_out\(7),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|always0~0_combout\);

-- Location: LABCELL_X35_Y52_N33
\CP|NP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~25_sumout\ = SUM(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add0~30\ ))
-- \CP|NP|Add0~26\ = CARRY(( \CP|NP|out\(1) ) + ( GND ) + ( \CP|NP|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(1),
	cin => \CP|NP|Add0~30\,
	sumout => \CP|NP|Add0~25_sumout\,
	cout => \CP|NP|Add0~26\);

-- Location: LABCELL_X35_Y55_N30
\CP|NP|out~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~25_combout\ = ( \CP|NP|Add0~25_sumout\ & ( (\CP|NP|p|out~q\ & !\CP|NP|Add6~25_sumout\) ) ) # ( !\CP|NP|Add0~25_sumout\ & ( (!\CP|NP|p|out~q\ & ((!\CP|NP|Equal0~1_combout\) # ((!\CP|NP|Equal0~0_combout\)))) # (\CP|NP|p|out~q\ & 
-- (((!\CP|NP|Add6~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111001000111110111100100000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Equal0~1_combout\,
	datab => \CP|NP|p|ALT_INV_out~q\,
	datac => \CP|NP|ALT_INV_Equal0~0_combout\,
	datad => \CP|NP|ALT_INV_Add6~25_sumout\,
	dataf => \CP|NP|ALT_INV_Add0~25_sumout\,
	combout => \CP|NP|out~25_combout\);

-- Location: MLABCELL_X34_Y55_N42
\CP|NP|out~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~26_combout\ = ( \CP|NP|Add4~25_sumout\ & ( \CP|NP|Add10~25_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|Equal0~1_combout\) # ((!\CP|NP|Equal0~0_combout\) # (\CP|NP|p|out~q\)))) ) ) ) # ( !\CP|NP|Add4~25_sumout\ & ( \CP|NP|Add10~25_sumout\ 
-- & ( (!\CP|NP|out[2]~5_combout\ & \CP|NP|p|out~q\) ) ) ) # ( \CP|NP|Add4~25_sumout\ & ( !\CP|NP|Add10~25_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (!\CP|NP|p|out~q\ & ((!\CP|NP|Equal0~1_combout\) # (!\CP|NP|Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000000000000000000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Equal0~1_combout\,
	datab => \CP|NP|ALT_INV_Equal0~0_combout\,
	datac => \CP|NP|ALT_INV_out[2]~5_combout\,
	datad => \CP|NP|p|ALT_INV_out~q\,
	datae => \CP|NP|ALT_INV_Add4~25_sumout\,
	dataf => \CP|NP|ALT_INV_Add10~25_sumout\,
	combout => \CP|NP|out~26_combout\);

-- Location: LABCELL_X35_Y55_N48
\CP|NP|out~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~35_combout\ = ( \CP|NP|out\(5) & ( \CP|NP|out\(4) & ( (!\CP|NP|out\(7) & (\CP|NP|out\(2) & (\CP|NP|out\(3) & !\CP|NP|out\(6)))) ) ) ) # ( !\CP|NP|out\(5) & ( !\CP|NP|out\(4) & ( (!\CP|NP|out\(7) & (!\CP|NP|out\(3) & \CP|NP|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(7),
	datab => \CP|NP|ALT_INV_out\(2),
	datac => \CP|NP|ALT_INV_out\(3),
	datad => \CP|NP|ALT_INV_out\(6),
	datae => \CP|NP|ALT_INV_out\(5),
	dataf => \CP|NP|ALT_INV_out\(4),
	combout => \CP|NP|out~35_combout\);

-- Location: LABCELL_X35_Y55_N36
\CP|NP|out~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~36_combout\ = ( \CP|NP|Add8~25_sumout\ & ( \CP|NP|p|out~q\ & ( (!\CP|NP|out\(7) & (!\CP|NP|out\(5) & \CP|NP|out\(6))) ) ) ) # ( \CP|NP|Add8~25_sumout\ & ( !\CP|NP|p|out~q\ & ( (!\CP|NP|out\(7) & (!\CP|NP|out\(5) & \CP|NP|out\(6))) ) ) ) # ( 
-- !\CP|NP|Add8~25_sumout\ & ( !\CP|NP|p|out~q\ & ( (!\CP|NP|out\(7) & (!\CP|NP|out\(5) & \CP|NP|out\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(7),
	datab => \CP|NP|ALT_INV_out\(5),
	datad => \CP|NP|ALT_INV_out\(6),
	datae => \CP|NP|ALT_INV_Add8~25_sumout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out~36_combout\);

-- Location: LABCELL_X35_Y55_N42
\CP|NP|out~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~27_combout\ = ( \CP|NP|out~36_combout\ & ( \CP|NP|Add3~25_sumout\ & ( (!\CP|NP|out~35_combout\ & (((\CP|NP|p|out~q\)) # (\CP|NP|Add2~25_sumout\))) # (\CP|NP|out~35_combout\ & (((!\CP|NP|p|out~q\) # (\CP|NP|Add9~25_sumout\)))) ) ) ) # ( 
-- !\CP|NP|out~36_combout\ & ( \CP|NP|Add3~25_sumout\ & ( (\CP|NP|out~35_combout\ & ((!\CP|NP|p|out~q\) # (\CP|NP|Add9~25_sumout\))) ) ) ) # ( \CP|NP|out~36_combout\ & ( !\CP|NP|Add3~25_sumout\ & ( (!\CP|NP|out~35_combout\ & (((\CP|NP|p|out~q\)) # 
-- (\CP|NP|Add2~25_sumout\))) # (\CP|NP|out~35_combout\ & (((\CP|NP|Add9~25_sumout\ & \CP|NP|p|out~q\)))) ) ) ) # ( !\CP|NP|out~36_combout\ & ( !\CP|NP|Add3~25_sumout\ & ( (\CP|NP|out~35_combout\ & (\CP|NP|Add9~25_sumout\ & \CP|NP|p|out~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001000101010111101010101000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out~35_combout\,
	datab => \CP|NP|ALT_INV_Add2~25_sumout\,
	datac => \CP|NP|ALT_INV_Add9~25_sumout\,
	datad => \CP|NP|p|ALT_INV_out~q\,
	datae => \CP|NP|ALT_INV_out~36_combout\,
	dataf => \CP|NP|ALT_INV_Add3~25_sumout\,
	combout => \CP|NP|out~27_combout\);

-- Location: LABCELL_X35_Y55_N54
\CP|NP|out~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~28_combout\ = ( \CP|NP|out~26_combout\ & ( \CP|NP|out~27_combout\ & ( (!\CP|NP|out~3_combout\ & (((!\CP|NP|always0~0_combout\)) # (\CP|NP|out\(1)))) # (\CP|NP|out~3_combout\ & (((!\CP|NP|out~25_combout\)))) ) ) ) # ( !\CP|NP|out~26_combout\ & ( 
-- \CP|NP|out~27_combout\ & ( (!\CP|NP|out~3_combout\ & (((!\CP|NP|always0~0_combout\)) # (\CP|NP|out\(1)))) # (\CP|NP|out~3_combout\ & (((!\CP|NP|out~25_combout\)))) ) ) ) # ( \CP|NP|out~26_combout\ & ( !\CP|NP|out~27_combout\ & ( (!\CP|NP|out~3_combout\ & 
-- (((!\CP|NP|always0~0_combout\)) # (\CP|NP|out\(1)))) # (\CP|NP|out~3_combout\ & (((!\CP|NP|out~25_combout\)))) ) ) ) # ( !\CP|NP|out~26_combout\ & ( !\CP|NP|out~27_combout\ & ( (!\CP|NP|out~3_combout\ & (\CP|NP|out\(1) & (\CP|NP|always0~0_combout\))) # 
-- (\CP|NP|out~3_combout\ & (((!\CP|NP|out~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000100111101111100010011110111110001001111011111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(1),
	datab => \CP|NP|ALT_INV_out~3_combout\,
	datac => \CP|NP|ALT_INV_always0~0_combout\,
	datad => \CP|NP|ALT_INV_out~25_combout\,
	datae => \CP|NP|ALT_INV_out~26_combout\,
	dataf => \CP|NP|ALT_INV_out~27_combout\,
	combout => \CP|NP|out~28_combout\);

-- Location: FF_X35_Y55_N53
\CP|NP|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|out~28_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \CP|NP|out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(1));

-- Location: MLABCELL_X34_Y53_N12
\CP|NP|out~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~22_combout\ = ( \CP|NP|Add9~21_sumout\ & ( \CP|NP|Add10~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\) # (\CP|NP|Add8~21_sumout\)))) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|out\(2)) # ((\CP|NP|out[2]~5_combout\)))) ) 
-- ) ) # ( !\CP|NP|Add9~21_sumout\ & ( \CP|NP|Add10~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\) # (\CP|NP|Add8~21_sumout\)))) # (\CP|NP|out[2]~4_combout\ & (!\CP|NP|out\(2) & ((!\CP|NP|out[2]~5_combout\)))) ) ) ) # ( 
-- \CP|NP|Add9~21_sumout\ & ( !\CP|NP|Add10~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|Add8~21_sumout\ & \CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|out\(2)) # ((\CP|NP|out[2]~5_combout\)))) ) ) ) # ( 
-- !\CP|NP|Add9~21_sumout\ & ( !\CP|NP|Add10~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|Add8~21_sumout\ & \CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & (!\CP|NP|out\(2) & ((!\CP|NP|out[2]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001100001000100011111111101110000011001110111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(2),
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add8~21_sumout\,
	datad => \CP|NP|ALT_INV_out[2]~5_combout\,
	datae => \CP|NP|ALT_INV_Add9~21_sumout\,
	dataf => \CP|NP|ALT_INV_Add10~21_sumout\,
	combout => \CP|NP|out~22_combout\);

-- Location: MLABCELL_X34_Y52_N54
\CP|NP|out~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~23_combout\ = ( \CP|NP|Add3~21_sumout\ & ( \CP|NP|Add4~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\)) # (\CP|NP|Add2~21_sumout\))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out\(2)) # (\CP|NP|out[2]~5_combout\)))) ) ) 
-- ) # ( !\CP|NP|Add3~21_sumout\ & ( \CP|NP|Add4~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\)) # (\CP|NP|Add2~21_sumout\))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\ & !\CP|NP|out\(2))))) ) ) ) # ( 
-- \CP|NP|Add3~21_sumout\ & ( !\CP|NP|Add4~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add2~21_sumout\ & (\CP|NP|out[2]~5_combout\))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out\(2)) # (\CP|NP|out[2]~5_combout\)))) ) ) ) # ( !\CP|NP|Add3~21_sumout\ 
-- & ( !\CP|NP|Add4~21_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add2~21_sumout\ & (\CP|NP|out[2]~5_combout\))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\ & !\CP|NP|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000000100001101110000011111110100110001001111011111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add2~21_sumout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_out[2]~5_combout\,
	datad => \CP|NP|ALT_INV_out\(2),
	datae => \CP|NP|ALT_INV_Add3~21_sumout\,
	dataf => \CP|NP|ALT_INV_Add4~21_sumout\,
	combout => \CP|NP|out~23_combout\);

-- Location: MLABCELL_X34_Y53_N36
\CP|NP|out~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~24_combout\ = ( \CP|NP|out~23_combout\ & ( \CP|NP|out~3_combout\ & ( (!\CP|NP|p|out~q\ & (\CP|NP|Add0~21_sumout\)) # (\CP|NP|p|out~q\ & ((\CP|NP|Add6~21_sumout\))) ) ) ) # ( !\CP|NP|out~23_combout\ & ( \CP|NP|out~3_combout\ & ( 
-- (!\CP|NP|p|out~q\ & (\CP|NP|Add0~21_sumout\)) # (\CP|NP|p|out~q\ & ((\CP|NP|Add6~21_sumout\))) ) ) ) # ( \CP|NP|out~23_combout\ & ( !\CP|NP|out~3_combout\ & ( (!\CP|NP|p|out~q\) # (\CP|NP|out~22_combout\) ) ) ) # ( !\CP|NP|out~23_combout\ & ( 
-- !\CP|NP|out~3_combout\ & ( (\CP|NP|p|out~q\ & \CP|NP|out~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add0~21_sumout\,
	datab => \CP|NP|p|ALT_INV_out~q\,
	datac => \CP|NP|ALT_INV_Add6~21_sumout\,
	datad => \CP|NP|ALT_INV_out~22_combout\,
	datae => \CP|NP|ALT_INV_out~23_combout\,
	dataf => \CP|NP|ALT_INV_out~3_combout\,
	combout => \CP|NP|out~24_combout\);

-- Location: FF_X34_Y53_N38
\CP|NP|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~24_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(2));

-- Location: LABCELL_X35_Y53_N0
\CP|NP|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~3_combout\ = ( \CP|NP|out\(6) & ( \CP|NP|out\(7) & ( (!\CP|NP|out\(4)) # (!\CP|NP|out\(5)) ) ) ) # ( !\CP|NP|out\(6) & ( \CP|NP|out\(7) & ( (\CP|NP|out\(4) & (\CP|NP|out\(5) & ((\CP|NP|out\(3)) # (\CP|NP|out\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(2),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(5),
	datae => \CP|NP|ALT_INV_out\(6),
	dataf => \CP|NP|ALT_INV_out\(7),
	combout => \CP|NP|out~3_combout\);

-- Location: LABCELL_X33_Y55_N45
\CP|NP|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add6~14\ ))
-- \CP|NP|Add6~10\ = CARRY(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add6~14\,
	sumout => \CP|NP|Add6~9_sumout\,
	cout => \CP|NP|Add6~10\);

-- Location: LABCELL_X35_Y52_N45
\CP|NP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add0~14\ ))
-- \CP|NP|Add0~10\ = CARRY(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add0~14\,
	sumout => \CP|NP|Add0~9_sumout\,
	cout => \CP|NP|Add0~10\);

-- Location: MLABCELL_X34_Y55_N15
\CP|NP|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add4~14\ ))
-- \CP|NP|Add4~10\ = CARRY(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add4~14\,
	sumout => \CP|NP|Add4~9_sumout\,
	cout => \CP|NP|Add4~10\);

-- Location: LABCELL_X35_Y53_N21
\CP|NP|Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add1~2_combout\ = ( \CP|NP|out\(4) & ( !\CP|NP|out\(5) $ (((!\CP|NP|out\(3)) # (!\CP|NP|out\(2)))) ) ) # ( !\CP|NP|out\(4) & ( \CP|NP|out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_out\(5),
	datac => \CP|NP|ALT_INV_out\(3),
	datad => \CP|NP|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(4),
	combout => \CP|NP|Add1~2_combout\);

-- Location: MLABCELL_X34_Y52_N12
\CP|NP|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add2~14\ ))
-- \CP|NP|Add2~10\ = CARRY(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add2~14\,
	sumout => \CP|NP|Add2~9_sumout\,
	cout => \CP|NP|Add2~10\);

-- Location: LABCELL_X35_Y52_N15
\CP|NP|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add3~14\ ))
-- \CP|NP|Add3~10\ = CARRY(( \CP|NP|out\(5) ) + ( GND ) + ( \CP|NP|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add3~14\,
	sumout => \CP|NP|Add3~9_sumout\,
	cout => \CP|NP|Add3~10\);

-- Location: LABCELL_X35_Y53_N36
\CP|NP|out~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~14_combout\ = ( \CP|NP|Add2~9_sumout\ & ( \CP|NP|Add3~9_sumout\ & ( ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~9_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add1~2_combout\)))) # (\CP|NP|out[2]~5_combout\) ) ) ) # ( !\CP|NP|Add2~9_sumout\ 
-- & ( \CP|NP|Add3~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~9_sumout\ & ((!\CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & (((\CP|NP|out[2]~5_combout\) # (\CP|NP|Add1~2_combout\)))) ) ) ) # ( \CP|NP|Add2~9_sumout\ & ( 
-- !\CP|NP|Add3~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|out[2]~5_combout\)) # (\CP|NP|Add4~9_sumout\))) # (\CP|NP|out[2]~4_combout\ & (((\CP|NP|Add1~2_combout\ & !\CP|NP|out[2]~5_combout\)))) ) ) ) # ( !\CP|NP|Add2~9_sumout\ & ( 
-- !\CP|NP|Add3~9_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & (\CP|NP|Add4~9_sumout\)) # (\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add1~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add4~9_sumout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add1~2_combout\,
	datad => \CP|NP|ALT_INV_out[2]~5_combout\,
	datae => \CP|NP|ALT_INV_Add2~9_sumout\,
	dataf => \CP|NP|ALT_INV_Add3~9_sumout\,
	combout => \CP|NP|out~14_combout\);

-- Location: LABCELL_X37_Y53_N45
\CP|NP|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add9~14\ ))
-- \CP|NP|Add9~10\ = CARRY(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add9~14\,
	sumout => \CP|NP|Add9~9_sumout\,
	cout => \CP|NP|Add9~10\);

-- Location: LABCELL_X37_Y53_N15
\CP|NP|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add10~14\ ))
-- \CP|NP|Add10~10\ = CARRY(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add10~14\,
	sumout => \CP|NP|Add10~9_sumout\,
	cout => \CP|NP|Add10~10\);

-- Location: LABCELL_X35_Y53_N48
\CP|NP|Add7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add7~2_combout\ = ( \CP|NP|out\(5) & ( (!\CP|NP|out\(4) & (!\CP|NP|out\(2) & !\CP|NP|out\(3))) ) ) # ( !\CP|NP|out\(5) & ( ((\CP|NP|out\(3)) # (\CP|NP|out\(2))) # (\CP|NP|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(4),
	datac => \CP|NP|ALT_INV_out\(2),
	datad => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(5),
	combout => \CP|NP|Add7~2_combout\);

-- Location: LABCELL_X33_Y55_N12
\CP|NP|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~9_sumout\ = SUM(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add8~14\ ))
-- \CP|NP|Add8~10\ = CARRY(( \CP|NP|out\(5) ) + ( VCC ) + ( \CP|NP|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(5),
	cin => \CP|NP|Add8~14\,
	sumout => \CP|NP|Add8~9_sumout\,
	cout => \CP|NP|Add8~10\);

-- Location: LABCELL_X36_Y53_N12
\CP|NP|out~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~13_combout\ = ( \CP|NP|Add7~2_combout\ & ( \CP|NP|Add8~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|out[2]~5_combout\) # (\CP|NP|Add10~9_sumout\)))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add9~9_sumout\ & ((\CP|NP|out[2]~5_combout\)))) ) 
-- ) ) # ( !\CP|NP|Add7~2_combout\ & ( \CP|NP|Add8~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|out[2]~5_combout\) # (\CP|NP|Add10~9_sumout\)))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\)) # (\CP|NP|Add9~9_sumout\))) ) ) ) # ( 
-- \CP|NP|Add7~2_combout\ & ( !\CP|NP|Add8~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|Add10~9_sumout\ & !\CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add9~9_sumout\ & ((\CP|NP|out[2]~5_combout\)))) ) ) ) # ( 
-- !\CP|NP|Add7~2_combout\ & ( !\CP|NP|Add8~9_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|Add10~9_sumout\ & !\CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\)) # (\CP|NP|Add9~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100010001000011000001000100111111110111010000110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add9~9_sumout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add10~9_sumout\,
	datad => \CP|NP|ALT_INV_out[2]~5_combout\,
	datae => \CP|NP|ALT_INV_Add7~2_combout\,
	dataf => \CP|NP|ALT_INV_Add8~9_sumout\,
	combout => \CP|NP|out~13_combout\);

-- Location: LABCELL_X35_Y53_N42
\CP|NP|out~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~15_combout\ = ( \CP|NP|out~14_combout\ & ( \CP|NP|out~13_combout\ & ( (!\CP|NP|out~3_combout\) # ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~9_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~9_sumout\))) ) ) ) # ( !\CP|NP|out~14_combout\ & ( 
-- \CP|NP|out~13_combout\ & ( (!\CP|NP|out~3_combout\ & (\CP|NP|p|out~q\)) # (\CP|NP|out~3_combout\ & ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~9_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~9_sumout\)))) ) ) ) # ( \CP|NP|out~14_combout\ & ( !\CP|NP|out~13_combout\ 
-- & ( (!\CP|NP|out~3_combout\ & (!\CP|NP|p|out~q\)) # (\CP|NP|out~3_combout\ & ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~9_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~9_sumout\)))) ) ) ) # ( !\CP|NP|out~14_combout\ & ( !\CP|NP|out~13_combout\ & ( 
-- (\CP|NP|out~3_combout\ & ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~9_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out~3_combout\,
	datab => \CP|NP|p|ALT_INV_out~q\,
	datac => \CP|NP|ALT_INV_Add6~9_sumout\,
	datad => \CP|NP|ALT_INV_Add0~9_sumout\,
	datae => \CP|NP|ALT_INV_out~14_combout\,
	dataf => \CP|NP|ALT_INV_out~13_combout\,
	combout => \CP|NP|out~15_combout\);

-- Location: FF_X35_Y53_N44
\CP|NP|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~15_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(5));

-- Location: LABCELL_X33_Y55_N48
\CP|NP|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add6~10\ ))
-- \CP|NP|Add6~6\ = CARRY(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add6~10\,
	sumout => \CP|NP|Add6~5_sumout\,
	cout => \CP|NP|Add6~6\);

-- Location: LABCELL_X35_Y52_N48
\CP|NP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add0~10\ ))
-- \CP|NP|Add0~6\ = CARRY(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add0~10\,
	sumout => \CP|NP|Add0~5_sumout\,
	cout => \CP|NP|Add0~6\);

-- Location: LABCELL_X35_Y52_N18
\CP|NP|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add3~10\ ))
-- \CP|NP|Add3~6\ = CARRY(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add3~10\,
	sumout => \CP|NP|Add3~5_sumout\,
	cout => \CP|NP|Add3~6\);

-- Location: MLABCELL_X34_Y52_N15
\CP|NP|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add2~10\ ))
-- \CP|NP|Add2~6\ = CARRY(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add2~10\,
	sumout => \CP|NP|Add2~5_sumout\,
	cout => \CP|NP|Add2~6\);

-- Location: MLABCELL_X34_Y55_N27
\CP|NP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add1~1_combout\ = ( \CP|NP|out\(2) & ( !\CP|NP|out\(6) $ (((!\CP|NP|out\(3)) # ((!\CP|NP|out\(5)) # (!\CP|NP|out\(4))))) ) ) # ( !\CP|NP|out\(2) & ( \CP|NP|out\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(6),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(5),
	datad => \CP|NP|ALT_INV_out\(4),
	dataf => \CP|NP|ALT_INV_out\(2),
	combout => \CP|NP|Add1~1_combout\);

-- Location: MLABCELL_X34_Y55_N18
\CP|NP|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add4~10\ ))
-- \CP|NP|Add4~6\ = CARRY(( \CP|NP|out\(6) ) + ( GND ) + ( \CP|NP|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add4~10\,
	sumout => \CP|NP|Add4~5_sumout\,
	cout => \CP|NP|Add4~6\);

-- Location: MLABCELL_X34_Y55_N36
\CP|NP|out~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~11_combout\ = ( \CP|NP|Add1~1_combout\ & ( \CP|NP|Add4~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\) # ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add2~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add3~5_sumout\))) ) ) ) # ( 
-- !\CP|NP|Add1~1_combout\ & ( \CP|NP|Add4~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (!\CP|NP|out[2]~4_combout\)) # (\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add2~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add3~5_sumout\)))) 
-- ) ) ) # ( \CP|NP|Add1~1_combout\ & ( !\CP|NP|Add4~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (\CP|NP|out[2]~4_combout\)) # (\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add2~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & 
-- (\CP|NP|Add3~5_sumout\)))) ) ) ) # ( !\CP|NP|Add1~1_combout\ & ( !\CP|NP|Add4~5_sumout\ & ( (\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add2~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (\CP|NP|Add3~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out[2]~5_combout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add3~5_sumout\,
	datad => \CP|NP|ALT_INV_Add2~5_sumout\,
	datae => \CP|NP|ALT_INV_Add1~1_combout\,
	dataf => \CP|NP|ALT_INV_Add4~5_sumout\,
	combout => \CP|NP|out~11_combout\);

-- Location: LABCELL_X33_Y53_N33
\CP|NP|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add7~1_combout\ = ( !\CP|NP|out\(3) & ( \CP|NP|out\(6) & ( (!\CP|NP|out\(4) & (!\CP|NP|out\(2) & !\CP|NP|out\(5))) ) ) ) # ( \CP|NP|out\(3) & ( !\CP|NP|out\(6) ) ) # ( !\CP|NP|out\(3) & ( !\CP|NP|out\(6) & ( ((\CP|NP|out\(5)) # (\CP|NP|out\(2))) # 
-- (\CP|NP|out\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111111000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_out\(4),
	datac => \CP|NP|ALT_INV_out\(2),
	datad => \CP|NP|ALT_INV_out\(5),
	datae => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|Add7~1_combout\);

-- Location: LABCELL_X37_Y53_N18
\CP|NP|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add10~10\ ))
-- \CP|NP|Add10~6\ = CARRY(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add10~10\,
	sumout => \CP|NP|Add10~5_sumout\,
	cout => \CP|NP|Add10~6\);

-- Location: LABCELL_X37_Y53_N48
\CP|NP|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add9~10\ ))
-- \CP|NP|Add9~6\ = CARRY(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add9~10\,
	sumout => \CP|NP|Add9~5_sumout\,
	cout => \CP|NP|Add9~6\);

-- Location: LABCELL_X33_Y55_N15
\CP|NP|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~5_sumout\ = SUM(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add8~10\ ))
-- \CP|NP|Add8~6\ = CARRY(( \CP|NP|out\(6) ) + ( VCC ) + ( \CP|NP|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(6),
	cin => \CP|NP|Add8~10\,
	sumout => \CP|NP|Add8~5_sumout\,
	cout => \CP|NP|Add8~6\);

-- Location: MLABCELL_X34_Y55_N48
\CP|NP|out~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~10_combout\ = ( \CP|NP|Add9~5_sumout\ & ( \CP|NP|Add8~5_sumout\ & ( ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add10~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (!\CP|NP|Add7~1_combout\))) # (\CP|NP|out[2]~5_combout\) ) ) ) # ( 
-- !\CP|NP|Add9~5_sumout\ & ( \CP|NP|Add8~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add10~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (!\CP|NP|Add7~1_combout\)))) # (\CP|NP|out[2]~5_combout\ & 
-- (!\CP|NP|out[2]~4_combout\)) ) ) ) # ( \CP|NP|Add9~5_sumout\ & ( !\CP|NP|Add8~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add10~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & (!\CP|NP|Add7~1_combout\)))) # 
-- (\CP|NP|out[2]~5_combout\ & (\CP|NP|out[2]~4_combout\)) ) ) ) # ( !\CP|NP|Add9~5_sumout\ & ( !\CP|NP|Add8~5_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & ((!\CP|NP|out[2]~4_combout\ & ((\CP|NP|Add10~5_sumout\))) # (\CP|NP|out[2]~4_combout\ & 
-- (!\CP|NP|Add7~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001100011011100101100100111011000111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out[2]~5_combout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add7~1_combout\,
	datad => \CP|NP|ALT_INV_Add10~5_sumout\,
	datae => \CP|NP|ALT_INV_Add9~5_sumout\,
	dataf => \CP|NP|ALT_INV_Add8~5_sumout\,
	combout => \CP|NP|out~10_combout\);

-- Location: MLABCELL_X34_Y55_N54
\CP|NP|out~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~12_combout\ = ( \CP|NP|out~11_combout\ & ( \CP|NP|out~10_combout\ & ( (!\CP|NP|out~3_combout\) # ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~5_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~5_sumout\))) ) ) ) # ( !\CP|NP|out~11_combout\ & ( 
-- \CP|NP|out~10_combout\ & ( (!\CP|NP|p|out~q\ & (((\CP|NP|Add0~5_sumout\ & \CP|NP|out~3_combout\)))) # (\CP|NP|p|out~q\ & (((!\CP|NP|out~3_combout\)) # (\CP|NP|Add6~5_sumout\))) ) ) ) # ( \CP|NP|out~11_combout\ & ( !\CP|NP|out~10_combout\ & ( 
-- (!\CP|NP|p|out~q\ & (((!\CP|NP|out~3_combout\) # (\CP|NP|Add0~5_sumout\)))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~5_sumout\ & ((\CP|NP|out~3_combout\)))) ) ) ) # ( !\CP|NP|out~11_combout\ & ( !\CP|NP|out~10_combout\ & ( (\CP|NP|out~3_combout\ & 
-- ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~5_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add6~5_sumout\,
	datab => \CP|NP|p|ALT_INV_out~q\,
	datac => \CP|NP|ALT_INV_Add0~5_sumout\,
	datad => \CP|NP|ALT_INV_out~3_combout\,
	datae => \CP|NP|ALT_INV_out~11_combout\,
	dataf => \CP|NP|ALT_INV_out~10_combout\,
	combout => \CP|NP|out~12_combout\);

-- Location: FF_X34_Y55_N56
\CP|NP|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~12_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(6));

-- Location: MLABCELL_X34_Y53_N18
\CP|NP|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|LessThan10~0_combout\ = ( \CP|NP|out\(4) & ( \CP|NP|out\(1) & ( (\CP|NP|out\(3) & (\CP|NP|out\(2) & \CP|NP|out\(5))) ) ) ) # ( \CP|NP|out\(4) & ( !\CP|NP|out\(1) & ( (\CP|NP|out\(0) & (\CP|NP|out\(3) & (\CP|NP|out\(2) & \CP|NP|out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(0),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(2),
	datad => \CP|NP|ALT_INV_out\(5),
	datae => \CP|NP|ALT_INV_out\(4),
	dataf => \CP|NP|ALT_INV_out\(1),
	combout => \CP|NP|LessThan10~0_combout\);

-- Location: MLABCELL_X34_Y53_N6
\CP|NP|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|LessThan10~1_combout\ = ( !\CP|NP|LessThan10~0_combout\ & ( (!\CP|NP|out\(7) & !\CP|NP|out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_out\(7),
	datac => \CP|NP|ALT_INV_out\(6),
	dataf => \CP|NP|ALT_INV_LessThan10~0_combout\,
	combout => \CP|NP|LessThan10~1_combout\);

-- Location: LABCELL_X33_Y53_N0
\CP|NP|POSIN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|POSIN~0_combout\ = ( \CP|NP|Equal0~2_combout\ & ( \CP|NP|p|out~q\ & ( (!\CP|RCenable~combout\ & ((\CP|NP|POSIN~q\))) # (\CP|RCenable~combout\ & (!\CP|NP|LessThan10~1_combout\)) ) ) ) # ( !\CP|NP|Equal0~2_combout\ & ( \CP|NP|p|out~q\ & ( 
-- (!\CP|RCenable~combout\ & ((\CP|NP|POSIN~q\))) # (\CP|RCenable~combout\ & (!\CP|NP|LessThan10~1_combout\)) ) ) ) # ( \CP|NP|Equal0~2_combout\ & ( !\CP|NP|p|out~q\ & ( (\CP|NP|POSIN~q\) # (\CP|RCenable~combout\) ) ) ) # ( !\CP|NP|Equal0~2_combout\ & ( 
-- !\CP|NP|p|out~q\ & ( (!\CP|RCenable~combout\ & \CP|NP|POSIN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_LessThan10~1_combout\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|NP|ALT_INV_POSIN~q\,
	datae => \CP|NP|ALT_INV_Equal0~2_combout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|POSIN~0_combout\);

-- Location: LABCELL_X33_Y53_N24
\CP|NP|POSIN~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|POSIN~feeder_combout\ = \CP|NP|POSIN~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|NP|ALT_INV_POSIN~0_combout\,
	combout => \CP|NP|POSIN~feeder_combout\);

-- Location: FF_X33_Y53_N26
\CP|NP|POSIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|POSIN~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|POSIN~q\);

-- Location: LABCELL_X35_Y55_N33
\CP|NP|p|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|p|out~0_combout\ = ( \KEY[0]~input_o\ & ( \CP|NP|POSIN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_POSIN~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \CP|NP|p|out~0_combout\);

-- Location: FF_X34_Y55_N32
\CP|NP|p|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|NP|p|out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|p|out~q\);

-- Location: LABCELL_X33_Y55_N51
\CP|NP|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add6~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( VCC ) + ( \CP|NP|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add6~6\,
	sumout => \CP|NP|Add6~1_sumout\);

-- Location: LABCELL_X35_Y52_N51
\CP|NP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add0~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( GND ) + ( \CP|NP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add0~6\,
	sumout => \CP|NP|Add0~1_sumout\);

-- Location: LABCELL_X33_Y53_N48
\CP|NP|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add1~0_combout\ = ( \CP|NP|out\(3) & ( \CP|NP|out\(6) & ( !\CP|NP|out\(7) $ (((!\CP|NP|out\(4)) # ((!\CP|NP|out\(5)) # (!\CP|NP|out\(2))))) ) ) ) # ( !\CP|NP|out\(3) & ( \CP|NP|out\(6) & ( \CP|NP|out\(7) ) ) ) # ( \CP|NP|out\(3) & ( !\CP|NP|out\(6) 
-- & ( \CP|NP|out\(7) ) ) ) # ( !\CP|NP|out\(3) & ( !\CP|NP|out\(6) & ( \CP|NP|out\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(7),
	datab => \CP|NP|ALT_INV_out\(4),
	datac => \CP|NP|ALT_INV_out\(5),
	datad => \CP|NP|ALT_INV_out\(2),
	datae => \CP|NP|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|Add1~0_combout\);

-- Location: MLABCELL_X34_Y52_N18
\CP|NP|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add2~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( GND ) + ( \CP|NP|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add2~6\,
	sumout => \CP|NP|Add2~1_sumout\);

-- Location: MLABCELL_X34_Y55_N21
\CP|NP|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add4~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( GND ) + ( \CP|NP|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add4~6\,
	sumout => \CP|NP|Add4~1_sumout\);

-- Location: LABCELL_X35_Y52_N21
\CP|NP|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add3~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( GND ) + ( \CP|NP|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add3~6\,
	sumout => \CP|NP|Add3~1_sumout\);

-- Location: LABCELL_X36_Y53_N54
\CP|NP|out~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~7_combout\ = ( \CP|NP|Add4~1_sumout\ & ( \CP|NP|Add3~1_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (((!\CP|NP|out[2]~4_combout\)) # (\CP|NP|Add1~0_combout\))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\) # (\CP|NP|Add2~1_sumout\)))) 
-- ) ) ) # ( !\CP|NP|Add4~1_sumout\ & ( \CP|NP|Add3~1_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (\CP|NP|Add1~0_combout\ & ((\CP|NP|out[2]~4_combout\)))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|out[2]~4_combout\) # (\CP|NP|Add2~1_sumout\)))) ) ) ) # ( 
-- \CP|NP|Add4~1_sumout\ & ( !\CP|NP|Add3~1_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (((!\CP|NP|out[2]~4_combout\)) # (\CP|NP|Add1~0_combout\))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|Add2~1_sumout\ & !\CP|NP|out[2]~4_combout\)))) ) ) ) # ( 
-- !\CP|NP|Add4~1_sumout\ & ( !\CP|NP|Add3~1_sumout\ & ( (!\CP|NP|out[2]~5_combout\ & (\CP|NP|Add1~0_combout\ & ((\CP|NP|out[2]~4_combout\)))) # (\CP|NP|out[2]~5_combout\ & (((\CP|NP|Add2~1_sumout\ & !\CP|NP|out[2]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add1~0_combout\,
	datab => \CP|NP|ALT_INV_out[2]~5_combout\,
	datac => \CP|NP|ALT_INV_Add2~1_sumout\,
	datad => \CP|NP|ALT_INV_out[2]~4_combout\,
	datae => \CP|NP|ALT_INV_Add4~1_sumout\,
	dataf => \CP|NP|ALT_INV_Add3~1_sumout\,
	combout => \CP|NP|out~7_combout\);

-- Location: LABCELL_X35_Y51_N9
\CP|NP|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add7~0_combout\ = ( !\CP|NP|out\(7) & ( \CP|NP|out\(6) ) ) # ( \CP|NP|out\(7) & ( !\CP|NP|out\(6) & ( (!\CP|NP|out\(5) & (!\CP|NP|out\(3) & (!\CP|NP|out\(2) & !\CP|NP|out\(4)))) ) ) ) # ( !\CP|NP|out\(7) & ( !\CP|NP|out\(6) & ( (((\CP|NP|out\(4)) # 
-- (\CP|NP|out\(2))) # (\CP|NP|out\(3))) # (\CP|NP|out\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111100000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(5),
	datab => \CP|NP|ALT_INV_out\(3),
	datac => \CP|NP|ALT_INV_out\(2),
	datad => \CP|NP|ALT_INV_out\(4),
	datae => \CP|NP|ALT_INV_out\(7),
	dataf => \CP|NP|ALT_INV_out\(6),
	combout => \CP|NP|Add7~0_combout\);

-- Location: LABCELL_X37_Y53_N51
\CP|NP|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add9~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( VCC ) + ( \CP|NP|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add9~6\,
	sumout => \CP|NP|Add9~1_sumout\);

-- Location: LABCELL_X37_Y53_N21
\CP|NP|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add10~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( VCC ) + ( \CP|NP|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add10~6\,
	sumout => \CP|NP|Add10~1_sumout\);

-- Location: LABCELL_X33_Y55_N18
\CP|NP|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add8~1_sumout\ = SUM(( \CP|NP|out\(7) ) + ( VCC ) + ( \CP|NP|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(7),
	cin => \CP|NP|Add8~6\,
	sumout => \CP|NP|Add8~1_sumout\);

-- Location: LABCELL_X36_Y53_N6
\CP|NP|out~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~6_combout\ = ( \CP|NP|Add10~1_sumout\ & ( \CP|NP|Add8~1_sumout\ & ( (!\CP|NP|out[2]~4_combout\) # ((!\CP|NP|out[2]~5_combout\ & (!\CP|NP|Add7~0_combout\)) # (\CP|NP|out[2]~5_combout\ & ((\CP|NP|Add9~1_sumout\)))) ) ) ) # ( 
-- !\CP|NP|Add10~1_sumout\ & ( \CP|NP|Add8~1_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((\CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|out[2]~5_combout\ & (!\CP|NP|Add7~0_combout\)) # (\CP|NP|out[2]~5_combout\ & 
-- ((\CP|NP|Add9~1_sumout\))))) ) ) ) # ( \CP|NP|Add10~1_sumout\ & ( !\CP|NP|Add8~1_sumout\ & ( (!\CP|NP|out[2]~4_combout\ & (((!\CP|NP|out[2]~5_combout\)))) # (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|out[2]~5_combout\ & (!\CP|NP|Add7~0_combout\)) # 
-- (\CP|NP|out[2]~5_combout\ & ((\CP|NP|Add9~1_sumout\))))) ) ) ) # ( !\CP|NP|Add10~1_sumout\ & ( !\CP|NP|Add8~1_sumout\ & ( (\CP|NP|out[2]~4_combout\ & ((!\CP|NP|out[2]~5_combout\ & (!\CP|NP|Add7~0_combout\)) # (\CP|NP|out[2]~5_combout\ & 
-- ((\CP|NP|Add9~1_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000011111011100000001100100010110011111110111011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_Add7~0_combout\,
	datab => \CP|NP|ALT_INV_out[2]~4_combout\,
	datac => \CP|NP|ALT_INV_Add9~1_sumout\,
	datad => \CP|NP|ALT_INV_out[2]~5_combout\,
	datae => \CP|NP|ALT_INV_Add10~1_sumout\,
	dataf => \CP|NP|ALT_INV_Add8~1_sumout\,
	combout => \CP|NP|out~6_combout\);

-- Location: LABCELL_X36_Y53_N18
\CP|NP|out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~8_combout\ = ( \CP|NP|out~7_combout\ & ( \CP|NP|out~6_combout\ & ( (!\CP|NP|out~3_combout\) # ((!\CP|NP|p|out~q\ & ((\CP|NP|Add0~1_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~1_sumout\))) ) ) ) # ( !\CP|NP|out~7_combout\ & ( 
-- \CP|NP|out~6_combout\ & ( (!\CP|NP|p|out~q\ & (\CP|NP|out~3_combout\ & ((\CP|NP|Add0~1_sumout\)))) # (\CP|NP|p|out~q\ & ((!\CP|NP|out~3_combout\) # ((\CP|NP|Add6~1_sumout\)))) ) ) ) # ( \CP|NP|out~7_combout\ & ( !\CP|NP|out~6_combout\ & ( 
-- (!\CP|NP|p|out~q\ & ((!\CP|NP|out~3_combout\) # ((\CP|NP|Add0~1_sumout\)))) # (\CP|NP|p|out~q\ & (\CP|NP|out~3_combout\ & (\CP|NP|Add6~1_sumout\))) ) ) ) # ( !\CP|NP|out~7_combout\ & ( !\CP|NP|out~6_combout\ & ( (\CP|NP|out~3_combout\ & ((!\CP|NP|p|out~q\ 
-- & ((\CP|NP|Add0~1_sumout\))) # (\CP|NP|p|out~q\ & (\CP|NP|Add6~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|p|ALT_INV_out~q\,
	datab => \CP|NP|ALT_INV_out~3_combout\,
	datac => \CP|NP|ALT_INV_Add6~1_sumout\,
	datad => \CP|NP|ALT_INV_Add0~1_sumout\,
	datae => \CP|NP|ALT_INV_out~7_combout\,
	dataf => \CP|NP|ALT_INV_out~6_combout\,
	combout => \CP|NP|out~8_combout\);

-- Location: FF_X36_Y53_N20
\CP|NP|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out~8_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \CP|NP|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(7));

-- Location: LABCELL_X36_Y53_N24
\DP|Y|out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(7) = ( \CP|NP|out\(7) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|Y|out\(7)))) ) ) # ( !\CP|NP|out\(7) & ( (\KEY[0]~input_o\ & (\DP|Y|out\(7) & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|Y|ALT_INV_out\(7),
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(7),
	combout => \DP|Y|out\(7));

-- Location: MLABCELL_X34_Y55_N24
\DP|Y|out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(6) = ( \DP|Y|out\(6) & ( (\KEY[0]~input_o\ & ((!\CP|RCenable~combout\) # (\CP|NP|out\(6)))) ) ) # ( !\DP|Y|out\(6) & ( (\CP|NP|out\(6) & (\KEY[0]~input_o\ & \CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(6),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \DP|Y|ALT_INV_out\(6),
	combout => \DP|Y|out\(6));

-- Location: LABCELL_X35_Y53_N18
\DP|Y|out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(5) = ( \CP|NP|out\(5) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|Y|out\(5)))) ) ) # ( !\CP|NP|out\(5) & ( (\KEY[0]~input_o\ & (\DP|Y|out\(5) & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|Y|ALT_INV_out\(5),
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(5),
	combout => \DP|Y|out\(5));

-- Location: LABCELL_X36_Y53_N0
\DP|Y|out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(4) = ( \CP|NP|out\(4) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|Y|out\(4)))) ) ) # ( !\CP|NP|out\(4) & ( (\DP|Y|out\(4) & (!\CP|RCenable~combout\ & \KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Y|ALT_INV_out\(4),
	datac => \CP|ALT_INV_RCenable~combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|NP|ALT_INV_out\(4),
	combout => \DP|Y|out\(4));

-- Location: MLABCELL_X34_Y53_N0
\DP|Y|out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(3) = ( \CP|NP|out\(3) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|Y|out\(3)))) ) ) # ( !\CP|NP|out\(3) & ( (\KEY[0]~input_o\ & (\DP|Y|out\(3) & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|Y|ALT_INV_out\(3),
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(3),
	combout => \DP|Y|out\(3));

-- Location: LABCELL_X35_Y54_N3
\DP|Y|out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(2) = ( \CP|NP|out\(2) & ( (\KEY[0]~input_o\ & ((\DP|Y|out\(2)) # (\CP|RCenable~combout\))) ) ) # ( !\CP|NP|out\(2) & ( (!\CP|RCenable~combout\ & (\KEY[0]~input_o\ & \DP|Y|out\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|Y|ALT_INV_out\(2),
	dataf => \CP|NP|ALT_INV_out\(2),
	combout => \DP|Y|out\(2));

-- Location: LABCELL_X35_Y55_N27
\DP|Y|out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(1) = ( \CP|NP|out\(1) & ( (\KEY[0]~input_o\ & ((\DP|Y|out\(1)) # (\CP|RCenable~combout\))) ) ) # ( !\CP|NP|out\(1) & ( (\KEY[0]~input_o\ & (!\CP|RCenable~combout\ & \DP|Y|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|ALT_INV_RCenable~combout\,
	datad => \DP|Y|ALT_INV_out\(1),
	dataf => \CP|NP|ALT_INV_out\(1),
	combout => \DP|Y|out\(1));

-- Location: LABCELL_X35_Y55_N24
\DP|Y|out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Y|out\(0) = ( \CP|NP|out\(0) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|Y|out\(0)))) ) ) # ( !\CP|NP|out\(0) & ( (\KEY[0]~input_o\ & (\DP|Y|out\(0) & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|Y|ALT_INV_out\(0),
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(0),
	combout => \DP|Y|out\(0));

-- Location: LABCELL_X35_Y55_N0
\DP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~21_sumout\ = SUM(( \CP|RC|out\(0) ) + ( \DP|Y|out\(0) ) + ( !VCC ))
-- \DP|Add1~22\ = CARRY(( \CP|RC|out\(0) ) + ( \DP|Y|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|Y|ALT_INV_out\(0),
	datad => \CP|RC|ALT_INV_out\(0),
	cin => GND,
	sumout => \DP|Add1~21_sumout\,
	cout => \DP|Add1~22\);

-- Location: LABCELL_X35_Y55_N3
\DP|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~25_sumout\ = SUM(( \CP|RC|out\(1) ) + ( \DP|Y|out\(1) ) + ( \DP|Add1~22\ ))
-- \DP|Add1~26\ = CARRY(( \CP|RC|out\(1) ) + ( \DP|Y|out\(1) ) + ( \DP|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Y|ALT_INV_out\(1),
	datad => \CP|RC|ALT_INV_out\(1),
	cin => \DP|Add1~22\,
	sumout => \DP|Add1~25_sumout\,
	cout => \DP|Add1~26\);

-- Location: LABCELL_X35_Y55_N6
\DP|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~29_sumout\ = SUM(( \CP|RC|out\(2) ) + ( \DP|Y|out\(2) ) + ( \DP|Add1~26\ ))
-- \DP|Add1~30\ = CARRY(( \CP|RC|out\(2) ) + ( \DP|Y|out\(2) ) + ( \DP|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|Y|ALT_INV_out\(2),
	datad => \CP|RC|ALT_INV_out\(2),
	cin => \DP|Add1~26\,
	sumout => \DP|Add1~29_sumout\,
	cout => \DP|Add1~30\);

-- Location: LABCELL_X35_Y55_N9
\DP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~17_sumout\ = SUM(( \CP|RC|out\(3) ) + ( \DP|Y|out\(3) ) + ( \DP|Add1~30\ ))
-- \DP|Add1~18\ = CARRY(( \CP|RC|out\(3) ) + ( \DP|Y|out\(3) ) + ( \DP|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|Y|ALT_INV_out\(3),
	datad => \CP|RC|ALT_INV_out\(3),
	cin => \DP|Add1~30\,
	sumout => \DP|Add1~17_sumout\,
	cout => \DP|Add1~18\);

-- Location: LABCELL_X35_Y55_N12
\DP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~13_sumout\ = SUM(( \DP|Y|out\(4) ) + ( \CP|RC|out\(4) ) + ( \DP|Add1~18\ ))
-- \DP|Add1~14\ = CARRY(( \DP|Y|out\(4) ) + ( \CP|RC|out\(4) ) + ( \DP|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(4),
	datad => \DP|Y|ALT_INV_out\(4),
	cin => \DP|Add1~18\,
	sumout => \DP|Add1~13_sumout\,
	cout => \DP|Add1~14\);

-- Location: LABCELL_X35_Y55_N15
\DP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~9_sumout\ = SUM(( \DP|Y|out\(5) ) + ( GND ) + ( \DP|Add1~14\ ))
-- \DP|Add1~10\ = CARRY(( \DP|Y|out\(5) ) + ( GND ) + ( \DP|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|Y|ALT_INV_out\(5),
	cin => \DP|Add1~14\,
	sumout => \DP|Add1~9_sumout\,
	cout => \DP|Add1~10\);

-- Location: LABCELL_X35_Y55_N18
\DP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~5_sumout\ = SUM(( \DP|Y|out\(6) ) + ( GND ) + ( \DP|Add1~10\ ))
-- \DP|Add1~6\ = CARRY(( \DP|Y|out\(6) ) + ( GND ) + ( \DP|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|Y|ALT_INV_out\(6),
	cin => \DP|Add1~10\,
	sumout => \DP|Add1~5_sumout\,
	cout => \DP|Add1~6\);

-- Location: LABCELL_X35_Y55_N21
\DP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add1~1_sumout\ = SUM(( \DP|Y|out\(7) ) + ( GND ) + ( \DP|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|Y|ALT_INV_out\(7),
	cin => \DP|Add1~6\,
	sumout => \DP|Add1~1_sumout\);

-- Location: LABCELL_X36_Y55_N3
\DP|y_out[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[7]~0_combout\ = ( \DP|Add1~1_sumout\ & ( (!\CP|cenable~combout\) # (\CP|BGC|out\(7)) ) ) # ( !\DP|Add1~1_sumout\ & ( (\CP|BGC|out\(7) & \CP|cenable~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(7),
	datad => \CP|ALT_INV_cenable~combout\,
	dataf => \DP|ALT_INV_Add1~1_sumout\,
	combout => \DP|y_out[7]~0_combout\);

-- Location: LABCELL_X36_Y55_N33
\DP|y_out[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[7]~1_combout\ = ( \DP|Y|out\(2) & ( \DP|Y|out\(4) ) ) # ( !\DP|Y|out\(2) & ( (\DP|Y|out\(4) & ((\DP|Y|out\(1)) # (\DP|Y|out\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Y|ALT_INV_out\(4),
	datac => \DP|Y|ALT_INV_out\(3),
	datad => \DP|Y|ALT_INV_out\(1),
	dataf => \DP|Y|ALT_INV_out\(2),
	combout => \DP|y_out[7]~1_combout\);

-- Location: LABCELL_X36_Y55_N12
\DP|y_out[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[7]~2_combout\ = ( \DP|y_out[7]~1_combout\ & ( (!\DP|Y|out\(7)) # ((!\DP|Y|out\(6)) # (\CP|cenable~combout\)) ) ) # ( !\DP|y_out[7]~1_combout\ & ( (!\DP|Y|out\(7)) # (((!\DP|Y|out\(5)) # (!\DP|Y|out\(6))) # (\CP|cenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|Y|ALT_INV_out\(7),
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \DP|Y|ALT_INV_out\(5),
	datad => \DP|Y|ALT_INV_out\(6),
	dataf => \DP|ALT_INV_y_out[7]~1_combout\,
	combout => \DP|y_out[7]~2_combout\);

-- Location: LABCELL_X36_Y55_N0
\DP|y_out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(7) = ( \KEY[0]~input_o\ & ( (!\DP|y_out[7]~2_combout\ & ((\DP|y_out\(7)))) # (\DP|y_out[7]~2_combout\ & (\DP|y_out[7]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_y_out[7]~0_combout\,
	datab => \DP|ALT_INV_y_out[7]~2_combout\,
	datac => \DP|ALT_INV_y_out\(7),
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \DP|y_out\(7));

-- Location: LABCELL_X36_Y55_N36
\DP|y_out[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[6]~3_combout\ = ( \DP|Add1~5_sumout\ & ( (!\CP|cenable~combout\) # (\CP|BGC|out\(6)) ) ) # ( !\DP|Add1~5_sumout\ & ( (\CP|BGC|out\(6) & \CP|cenable~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(6),
	datad => \CP|ALT_INV_cenable~combout\,
	dataf => \DP|ALT_INV_Add1~5_sumout\,
	combout => \DP|y_out[6]~3_combout\);

-- Location: LABCELL_X36_Y55_N54
\DP|y_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(6) = ( \DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out[6]~3_combout\) ) ) # ( !\DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \DP|ALT_INV_y_out[6]~3_combout\,
	datad => \DP|ALT_INV_y_out\(6),
	dataf => \DP|ALT_INV_y_out[7]~2_combout\,
	combout => \DP|y_out\(6));

-- Location: LABCELL_X36_Y55_N45
\DP|y_out[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[5]~4_combout\ = ( \DP|Add1~9_sumout\ & ( (!\CP|cenable~combout\) # (\CP|BGC|out\(5)) ) ) # ( !\DP|Add1~9_sumout\ & ( (\CP|BGC|out\(5) & \CP|cenable~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(5),
	datac => \CP|ALT_INV_cenable~combout\,
	dataf => \DP|ALT_INV_Add1~9_sumout\,
	combout => \DP|y_out[5]~4_combout\);

-- Location: LABCELL_X36_Y55_N30
\DP|y_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(5) = ( \DP|y_out[7]~2_combout\ & ( (\DP|y_out[5]~4_combout\ & \KEY[0]~input_o\) ) ) # ( !\DP|y_out[7]~2_combout\ & ( (\DP|y_out\(5) & \KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|ALT_INV_y_out[5]~4_combout\,
	datac => \DP|ALT_INV_y_out\(5),
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \DP|ALT_INV_y_out[7]~2_combout\,
	combout => \DP|y_out\(5));

-- Location: LABCELL_X36_Y55_N27
\DP|y_out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[4]~5_combout\ = ( \CP|cenable~combout\ & ( \CP|BGC|out\(4) ) ) # ( !\CP|cenable~combout\ & ( \DP|Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(4),
	datad => \DP|ALT_INV_Add1~13_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|y_out[4]~5_combout\);

-- Location: LABCELL_X36_Y55_N6
\DP|y_out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(4) = ( \DP|y_out[7]~2_combout\ & ( (\DP|y_out[4]~5_combout\ & \KEY[0]~input_o\) ) ) # ( !\DP|y_out[7]~2_combout\ & ( (\DP|y_out\(4) & \KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_y_out[4]~5_combout\,
	datac => \DP|ALT_INV_y_out\(4),
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \DP|ALT_INV_y_out[7]~2_combout\,
	combout => \DP|y_out\(4));

-- Location: LABCELL_X36_Y55_N15
\DP|y_out[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[3]~9_combout\ = ( \DP|Add1~17_sumout\ & ( (!\CP|cenable~combout\) # (\CP|BGC|out\(3)) ) ) # ( !\DP|Add1~17_sumout\ & ( (\CP|cenable~combout\ & \CP|BGC|out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_cenable~combout\,
	datad => \CP|BGC|ALT_INV_out\(3),
	dataf => \DP|ALT_INV_Add1~17_sumout\,
	combout => \DP|y_out[3]~9_combout\);

-- Location: LABCELL_X36_Y55_N21
\DP|y_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(3) = ( \DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out[3]~9_combout\) ) ) # ( !\DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|ALT_INV_y_out[3]~9_combout\,
	datad => \DP|ALT_INV_y_out\(3),
	dataf => \DP|ALT_INV_y_out[7]~2_combout\,
	combout => \DP|y_out\(3));

-- Location: MLABCELL_X34_Y54_N9
\DP|y_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[0]~6_combout\ = ( \DP|Add1~21_sumout\ & ( \CP|cenable~combout\ & ( \CP|BGC|out\(0) ) ) ) # ( !\DP|Add1~21_sumout\ & ( \CP|cenable~combout\ & ( \CP|BGC|out\(0) ) ) ) # ( \DP|Add1~21_sumout\ & ( !\CP|cenable~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(0),
	datae => \DP|ALT_INV_Add1~21_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|y_out[0]~6_combout\);

-- Location: LABCELL_X36_Y54_N54
\DP|y_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(0) = ( \DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out[0]~6_combout\) ) ) # ( !\DP|y_out[7]~2_combout\ & ( (\KEY[0]~input_o\ & \DP|y_out\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|ALT_INV_y_out[0]~6_combout\,
	datad => \DP|ALT_INV_y_out\(0),
	dataf => \DP|ALT_INV_y_out[7]~2_combout\,
	combout => \DP|y_out\(0));

-- Location: MLABCELL_X34_Y54_N30
\CP|NP|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~13_sumout\ = SUM(( \CP|NP|out\(8) ) + ( VCC ) + ( !VCC ))
-- \CP|NP|Add5~14\ = CARRY(( \CP|NP|out\(8) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(8),
	cin => GND,
	sumout => \CP|NP|Add5~13_sumout\,
	cout => \CP|NP|Add5~14\);

-- Location: MLABCELL_X34_Y53_N33
\CP|NP|out[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[9]~0_combout\ = ( \CP|NP|p|out~q\ & ( !\KEY[0]~input_o\ ) ) # ( !\CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|NP|Equal0~1_combout\ & \CP|NP|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011101010101011101110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|NP|ALT_INV_Equal0~1_combout\,
	datad => \CP|NP|ALT_INV_Equal0~0_combout\,
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out[9]~0_combout\);

-- Location: LABCELL_X35_Y54_N6
\CP|NP|out[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[9]~1_combout\ = ( \CP|NP|out\(6) & ( \CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # (\CP|RCenable~combout\) ) ) ) # ( !\CP|NP|out\(6) & ( \CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # ((\CP|RCenable~combout\ & ((\CP|NP|out\(7)) # 
-- (\CP|NP|LessThan10~0_combout\)))) ) ) ) # ( \CP|NP|out\(6) & ( !\CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # (\CP|RCenable~combout\) ) ) ) # ( !\CP|NP|out\(6) & ( !\CP|NP|p|out~q\ & ( (!\KEY[0]~input_o\) # (\CP|RCenable~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111000100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_LessThan10~0_combout\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|NP|ALT_INV_out\(7),
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|NP|ALT_INV_out\(6),
	dataf => \CP|NP|p|ALT_INV_out~q\,
	combout => \CP|NP|out[9]~1_combout\);

-- Location: FF_X35_Y54_N11
\CP|NP|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~13_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(8));

-- Location: MLABCELL_X34_Y54_N33
\CP|NP|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~17_sumout\ = SUM(( \CP|NP|out\(9) ) + ( GND ) + ( \CP|NP|Add5~14\ ))
-- \CP|NP|Add5~18\ = CARRY(( \CP|NP|out\(9) ) + ( GND ) + ( \CP|NP|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(9),
	cin => \CP|NP|Add5~14\,
	sumout => \CP|NP|Add5~17_sumout\,
	cout => \CP|NP|Add5~18\);

-- Location: FF_X35_Y54_N5
\CP|NP|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~17_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(9));

-- Location: MLABCELL_X34_Y54_N36
\CP|NP|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~21_sumout\ = SUM(( \CP|NP|out\(10) ) + ( GND ) + ( \CP|NP|Add5~18\ ))
-- \CP|NP|Add5~22\ = CARRY(( \CP|NP|out\(10) ) + ( GND ) + ( \CP|NP|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(10),
	cin => \CP|NP|Add5~18\,
	sumout => \CP|NP|Add5~21_sumout\,
	cout => \CP|NP|Add5~22\);

-- Location: FF_X35_Y54_N23
\CP|NP|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~21_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(10));

-- Location: MLABCELL_X34_Y54_N39
\CP|NP|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~25_sumout\ = SUM(( \CP|NP|out\(11) ) + ( GND ) + ( \CP|NP|Add5~22\ ))
-- \CP|NP|Add5~26\ = CARRY(( \CP|NP|out\(11) ) + ( GND ) + ( \CP|NP|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(11),
	cin => \CP|NP|Add5~22\,
	sumout => \CP|NP|Add5~25_sumout\,
	cout => \CP|NP|Add5~26\);

-- Location: FF_X35_Y54_N8
\CP|NP|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~25_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(11));

-- Location: MLABCELL_X34_Y54_N42
\CP|NP|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~29_sumout\ = SUM(( \CP|NP|out\(12) ) + ( GND ) + ( \CP|NP|Add5~26\ ))
-- \CP|NP|Add5~30\ = CARRY(( \CP|NP|out\(12) ) + ( GND ) + ( \CP|NP|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|NP|ALT_INV_out\(12),
	cin => \CP|NP|Add5~26\,
	sumout => \CP|NP|Add5~29_sumout\,
	cout => \CP|NP|Add5~30\);

-- Location: FF_X36_Y54_N58
\CP|NP|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~29_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(12));

-- Location: MLABCELL_X34_Y54_N45
\CP|NP|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~33_sumout\ = SUM(( \CP|NP|out\(13) ) + ( GND ) + ( \CP|NP|Add5~30\ ))
-- \CP|NP|Add5~34\ = CARRY(( \CP|NP|out\(13) ) + ( GND ) + ( \CP|NP|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(13),
	cin => \CP|NP|Add5~30\,
	sumout => \CP|NP|Add5~33_sumout\,
	cout => \CP|NP|Add5~34\);

-- Location: FF_X35_Y54_N2
\CP|NP|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~33_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(13));

-- Location: MLABCELL_X34_Y54_N48
\CP|NP|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~9_sumout\ = SUM(( \CP|NP|out\(14) ) + ( GND ) + ( \CP|NP|Add5~34\ ))
-- \CP|NP|Add5~10\ = CARRY(( \CP|NP|out\(14) ) + ( GND ) + ( \CP|NP|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(14),
	cin => \CP|NP|Add5~34\,
	sumout => \CP|NP|Add5~9_sumout\,
	cout => \CP|NP|Add5~10\);

-- Location: FF_X35_Y54_N20
\CP|NP|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~9_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(14));

-- Location: MLABCELL_X34_Y54_N51
\CP|NP|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~5_sumout\ = SUM(( \CP|NP|out\(15) ) + ( GND ) + ( \CP|NP|Add5~10\ ))
-- \CP|NP|Add5~6\ = CARRY(( \CP|NP|out\(15) ) + ( GND ) + ( \CP|NP|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_out\(15),
	cin => \CP|NP|Add5~10\,
	sumout => \CP|NP|Add5~5_sumout\,
	cout => \CP|NP|Add5~6\);

-- Location: LABCELL_X33_Y53_N54
\CP|NP|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out~2_combout\ = ( \CP|NP|Equal0~2_combout\ & ( \CP|NP|Add5~5_sumout\ & ( ((\CP|RCenable~combout\ & ((!\CP|NP|LessThan10~1_combout\) # (!\CP|NP|p|out~q\)))) # (\CP|NP|out\(15)) ) ) ) # ( !\CP|NP|Equal0~2_combout\ & ( \CP|NP|Add5~5_sumout\ & ( 
-- ((\CP|RCenable~combout\ & ((!\CP|NP|LessThan10~1_combout\) # (!\CP|NP|p|out~q\)))) # (\CP|NP|out\(15)) ) ) ) # ( \CP|NP|Equal0~2_combout\ & ( !\CP|NP|Add5~5_sumout\ & ( (!\CP|RCenable~combout\ & (((\CP|NP|out\(15))))) # (\CP|RCenable~combout\ & 
-- ((!\CP|NP|p|out~q\) # ((\CP|NP|LessThan10~1_combout\ & \CP|NP|out\(15))))) ) ) ) # ( !\CP|NP|Equal0~2_combout\ & ( !\CP|NP|Add5~5_sumout\ & ( (\CP|NP|out\(15) & ((!\CP|RCenable~combout\) # ((\CP|NP|LessThan10~1_combout\ & \CP|NP|p|out~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001101001100001111110100110010111111110011001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|NP|ALT_INV_LessThan10~1_combout\,
	datab => \CP|ALT_INV_RCenable~combout\,
	datac => \CP|NP|p|ALT_INV_out~q\,
	datad => \CP|NP|ALT_INV_out\(15),
	datae => \CP|NP|ALT_INV_Equal0~2_combout\,
	dataf => \CP|NP|ALT_INV_Add5~5_sumout\,
	combout => \CP|NP|out~2_combout\);

-- Location: LABCELL_X33_Y54_N30
\CP|NP|out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|out[15]~feeder_combout\ = ( \CP|NP|out~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CP|NP|ALT_INV_out~2_combout\,
	combout => \CP|NP|out[15]~feeder_combout\);

-- Location: FF_X33_Y54_N32
\CP|NP|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	d => \CP|NP|out[15]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(15));

-- Location: MLABCELL_X34_Y54_N54
\CP|NP|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|NP|Add5~1_sumout\ = SUM(( \CP|NP|out\(16) ) + ( GND ) + ( \CP|NP|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|NP|ALT_INV_out\(16),
	cin => \CP|NP|Add5~6\,
	sumout => \CP|NP|Add5~1_sumout\);

-- Location: FF_X35_Y54_N38
\CP|NP|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP|CLK60|out~q\,
	asdata => \CP|NP|Add5~1_sumout\,
	sclr => \CP|NP|out[9]~0_combout\,
	sload => VCC,
	ena => \CP|NP|out[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|NP|out\(16));

-- Location: LABCELL_X35_Y54_N36
\DP|X|out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(8) = (\KEY[0]~input_o\ & ((!\CP|RCenable~combout\ & (\DP|X|out\(8))) # (\CP|RCenable~combout\ & ((\CP|NP|out\(16))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(8),
	datad => \CP|NP|ALT_INV_out\(16),
	combout => \DP|X|out\(8));

-- Location: LABCELL_X33_Y54_N48
\DP|X|out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(7) = ( \CP|NP|out\(15) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|X|out\(7)))) ) ) # ( !\CP|NP|out\(15) & ( (\KEY[0]~input_o\ & (\DP|X|out\(7) & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(7),
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(15),
	combout => \DP|X|out\(7));

-- Location: LABCELL_X35_Y54_N30
\DP|X|out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(6) = ( \CP|NP|out\(14) & ( (\KEY[0]~input_o\ & ((\CP|RCenable~combout\) # (\DP|X|out\(6)))) ) ) # ( !\CP|NP|out\(14) & ( (\DP|X|out\(6) & (\KEY[0]~input_o\ & !\CP|RCenable~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|X|ALT_INV_out\(6),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \CP|ALT_INV_RCenable~combout\,
	dataf => \CP|NP|ALT_INV_out\(14),
	combout => \DP|X|out\(6));

-- Location: LABCELL_X35_Y54_N0
\DP|X|out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(5) = (\KEY[0]~input_o\ & ((!\CP|RCenable~combout\ & (\DP|X|out\(5))) # (\CP|RCenable~combout\ & ((\CP|NP|out\(13))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(5),
	datad => \CP|NP|ALT_INV_out\(13),
	combout => \DP|X|out\(5));

-- Location: LABCELL_X36_Y54_N57
\DP|X|out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(4) = ( \CP|RCenable~combout\ & ( (\KEY[0]~input_o\ & \CP|NP|out\(12)) ) ) # ( !\CP|RCenable~combout\ & ( (\KEY[0]~input_o\ & \DP|X|out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(4),
	datad => \CP|NP|ALT_INV_out\(12),
	dataf => \CP|ALT_INV_RCenable~combout\,
	combout => \DP|X|out\(4));

-- Location: LABCELL_X35_Y54_N24
\DP|X|out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(3) = ( \CP|NP|out\(11) & ( (\KEY[0]~input_o\ & ((\DP|X|out\(3)) # (\CP|RCenable~combout\))) ) ) # ( !\CP|NP|out\(11) & ( (!\CP|RCenable~combout\ & (\KEY[0]~input_o\ & \DP|X|out\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(3),
	dataf => \CP|NP|ALT_INV_out\(11),
	combout => \DP|X|out\(3));

-- Location: LABCELL_X35_Y54_N21
\DP|X|out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(2) = ( \CP|RCenable~combout\ & ( (\KEY[0]~input_o\ & \CP|NP|out\(10)) ) ) # ( !\CP|RCenable~combout\ & ( (\KEY[0]~input_o\ & \DP|X|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(2),
	datad => \CP|NP|ALT_INV_out\(10),
	dataf => \CP|ALT_INV_RCenable~combout\,
	combout => \DP|X|out\(2));

-- Location: LABCELL_X35_Y54_N48
\DP|X|out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(1) = (\KEY[0]~input_o\ & ((!\CP|RCenable~combout\ & (\DP|X|out\(1))) # (\CP|RCenable~combout\ & ((\CP|NP|out\(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000010000100110000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|X|ALT_INV_out\(1),
	datad => \CP|NP|ALT_INV_out\(9),
	combout => \DP|X|out\(1));

-- Location: LABCELL_X35_Y54_N27
\DP|X|out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|X|out\(0) = ( \CP|NP|out\(8) & ( (\KEY[0]~input_o\ & ((\DP|X|out\(0)) # (\CP|RCenable~combout\))) ) ) # ( !\CP|NP|out\(8) & ( (!\CP|RCenable~combout\ & (\KEY[0]~input_o\ & \DP|X|out\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_RCenable~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \DP|X|ALT_INV_out\(0),
	dataf => \CP|NP|ALT_INV_out\(8),
	combout => \DP|X|out\(0));

-- Location: LABCELL_X36_Y54_N0
\DP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~13_sumout\ = SUM(( \DP|X|out\(0) ) + ( \CP|RC|out\(5) ) + ( !VCC ))
-- \DP|Add0~14\ = CARRY(( \DP|X|out\(0) ) + ( \CP|RC|out\(5) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(5),
	datad => \DP|X|ALT_INV_out\(0),
	cin => GND,
	sumout => \DP|Add0~13_sumout\,
	cout => \DP|Add0~14\);

-- Location: LABCELL_X36_Y54_N3
\DP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~17_sumout\ = SUM(( \DP|X|out\(1) ) + ( \CP|RC|out\(6) ) + ( \DP|Add0~14\ ))
-- \DP|Add0~18\ = CARRY(( \DP|X|out\(1) ) + ( \CP|RC|out\(6) ) + ( \DP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(6),
	datad => \DP|X|ALT_INV_out\(1),
	cin => \DP|Add0~14\,
	sumout => \DP|Add0~17_sumout\,
	cout => \DP|Add0~18\);

-- Location: LABCELL_X36_Y54_N6
\DP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~21_sumout\ = SUM(( \DP|X|out\(2) ) + ( \CP|RC|out\(7) ) + ( \DP|Add0~18\ ))
-- \DP|Add0~22\ = CARRY(( \DP|X|out\(2) ) + ( \CP|RC|out\(7) ) + ( \DP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|X|ALT_INV_out\(2),
	dataf => \CP|RC|ALT_INV_out\(7),
	cin => \DP|Add0~18\,
	sumout => \DP|Add0~21_sumout\,
	cout => \DP|Add0~22\);

-- Location: LABCELL_X36_Y54_N9
\DP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~25_sumout\ = SUM(( \CP|RC|out\(8) ) + ( \DP|X|out\(3) ) + ( \DP|Add0~22\ ))
-- \DP|Add0~26\ = CARRY(( \CP|RC|out\(8) ) + ( \DP|X|out\(3) ) + ( \DP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(8),
	datac => \DP|X|ALT_INV_out\(3),
	cin => \DP|Add0~22\,
	sumout => \DP|Add0~25_sumout\,
	cout => \DP|Add0~26\);

-- Location: LABCELL_X36_Y54_N12
\DP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~29_sumout\ = SUM(( \DP|X|out\(4) ) + ( \CP|RC|out\(9) ) + ( \DP|Add0~26\ ))
-- \DP|Add0~30\ = CARRY(( \DP|X|out\(4) ) + ( \CP|RC|out\(9) ) + ( \DP|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(9),
	datad => \DP|X|ALT_INV_out\(4),
	cin => \DP|Add0~26\,
	sumout => \DP|Add0~29_sumout\,
	cout => \DP|Add0~30\);

-- Location: LABCELL_X36_Y54_N15
\DP|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~33_sumout\ = SUM(( \DP|X|out\(5) ) + ( GND ) + ( \DP|Add0~30\ ))
-- \DP|Add0~34\ = CARRY(( \DP|X|out\(5) ) + ( GND ) + ( \DP|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|X|ALT_INV_out\(5),
	cin => \DP|Add0~30\,
	sumout => \DP|Add0~33_sumout\,
	cout => \DP|Add0~34\);

-- Location: LABCELL_X36_Y54_N18
\DP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~9_sumout\ = SUM(( \DP|X|out\(6) ) + ( GND ) + ( \DP|Add0~34\ ))
-- \DP|Add0~10\ = CARRY(( \DP|X|out\(6) ) + ( GND ) + ( \DP|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|X|ALT_INV_out\(6),
	cin => \DP|Add0~34\,
	sumout => \DP|Add0~9_sumout\,
	cout => \DP|Add0~10\);

-- Location: LABCELL_X36_Y54_N21
\DP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~5_sumout\ = SUM(( \DP|X|out\(7) ) + ( GND ) + ( \DP|Add0~10\ ))
-- \DP|Add0~6\ = CARRY(( \DP|X|out\(7) ) + ( GND ) + ( \DP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|X|ALT_INV_out\(7),
	cin => \DP|Add0~10\,
	sumout => \DP|Add0~5_sumout\,
	cout => \DP|Add0~6\);

-- Location: LABCELL_X36_Y54_N24
\DP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|Add0~1_sumout\ = SUM(( \DP|X|out\(8) ) + ( GND ) + ( \DP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|X|ALT_INV_out\(8),
	cin => \DP|Add0~6\,
	sumout => \DP|Add0~1_sumout\);

-- Location: LABCELL_X36_Y54_N30
\VGA|user_input_translator|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~53_sumout\ = SUM(( \DP|y_out\(0) ) + ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~1_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(16))))) ) + ( !VCC ))
-- \VGA|user_input_translator|Add0~54\ = CARRY(( \DP|y_out\(0) ) + ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~1_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(16))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101101110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \CP|BGC|ALT_INV_out\(16),
	datad => \DP|ALT_INV_y_out\(0),
	dataf => \DP|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \VGA|user_input_translator|Add0~53_sumout\,
	cout => \VGA|user_input_translator|Add0~54\);

-- Location: LABCELL_X36_Y54_N33
\VGA|user_input_translator|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~57_sumout\ = SUM(( \DP|y_out\(3) ) + ( GND ) + ( \VGA|user_input_translator|Add0~54\ ))
-- \VGA|user_input_translator|Add0~58\ = CARRY(( \DP|y_out\(3) ) + ( GND ) + ( \VGA|user_input_translator|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|ALT_INV_y_out\(3),
	cin => \VGA|user_input_translator|Add0~54\,
	sumout => \VGA|user_input_translator|Add0~57_sumout\,
	cout => \VGA|user_input_translator|Add0~58\);

-- Location: LABCELL_X36_Y54_N36
\VGA|user_input_translator|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~61_sumout\ = SUM(( \DP|y_out\(4) ) + ( GND ) + ( \VGA|user_input_translator|Add0~58\ ))
-- \VGA|user_input_translator|Add0~62\ = CARRY(( \DP|y_out\(4) ) + ( GND ) + ( \VGA|user_input_translator|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|ALT_INV_y_out\(4),
	cin => \VGA|user_input_translator|Add0~58\,
	sumout => \VGA|user_input_translator|Add0~61_sumout\,
	cout => \VGA|user_input_translator|Add0~62\);

-- Location: LABCELL_X36_Y54_N39
\VGA|user_input_translator|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~65_sumout\ = SUM(( \DP|y_out\(5) ) + ( GND ) + ( \VGA|user_input_translator|Add0~62\ ))
-- \VGA|user_input_translator|Add0~66\ = CARRY(( \DP|y_out\(5) ) + ( GND ) + ( \VGA|user_input_translator|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|ALT_INV_y_out\(5),
	cin => \VGA|user_input_translator|Add0~62\,
	sumout => \VGA|user_input_translator|Add0~65_sumout\,
	cout => \VGA|user_input_translator|Add0~66\);

-- Location: LABCELL_X36_Y54_N42
\VGA|user_input_translator|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~69_sumout\ = SUM(( \DP|y_out\(6) ) + ( GND ) + ( \VGA|user_input_translator|Add0~66\ ))
-- \VGA|user_input_translator|Add0~70\ = CARRY(( \DP|y_out\(6) ) + ( GND ) + ( \VGA|user_input_translator|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|ALT_INV_y_out\(6),
	cin => \VGA|user_input_translator|Add0~66\,
	sumout => \VGA|user_input_translator|Add0~69_sumout\,
	cout => \VGA|user_input_translator|Add0~70\);

-- Location: LABCELL_X36_Y54_N45
\VGA|user_input_translator|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~45_sumout\ = SUM(( \DP|y_out\(7) ) + ( GND ) + ( \VGA|user_input_translator|Add0~70\ ))
-- \VGA|user_input_translator|Add0~46\ = CARRY(( \DP|y_out\(7) ) + ( GND ) + ( \VGA|user_input_translator|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DP|ALT_INV_y_out\(7),
	cin => \VGA|user_input_translator|Add0~70\,
	sumout => \VGA|user_input_translator|Add0~45_sumout\,
	cout => \VGA|user_input_translator|Add0~46\);

-- Location: LABCELL_X36_Y54_N48
\VGA|user_input_translator|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~49_sumout\ = SUM(( GND ) + ( GND ) + ( \VGA|user_input_translator|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \VGA|user_input_translator|Add0~46\,
	sumout => \VGA|user_input_translator|Add0~49_sumout\);

-- Location: LABCELL_X36_Y55_N48
\DP|y_out[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[2]~8_combout\ = ( \CP|cenable~combout\ & ( \CP|BGC|out\(2) ) ) # ( !\CP|cenable~combout\ & ( \DP|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|ALT_INV_Add1~29_sumout\,
	datad => \CP|BGC|ALT_INV_out\(2),
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|y_out[2]~8_combout\);

-- Location: LABCELL_X36_Y55_N51
\DP|y_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(2) = ( \DP|y_out\(2) & ( (\KEY[0]~input_o\ & ((!\DP|y_out[7]~2_combout\) # (\DP|y_out[2]~8_combout\))) ) ) # ( !\DP|y_out\(2) & ( (\KEY[0]~input_o\ & (\DP|y_out[2]~8_combout\ & \DP|y_out[7]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \DP|ALT_INV_y_out[2]~8_combout\,
	datac => \DP|ALT_INV_y_out[7]~2_combout\,
	dataf => \DP|ALT_INV_y_out\(2),
	combout => \DP|y_out\(2));

-- Location: LABCELL_X36_Y55_N9
\DP|y_out[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out[1]~7_combout\ = ( \CP|cenable~combout\ & ( \CP|BGC|out\(1) ) ) # ( !\CP|cenable~combout\ & ( \DP|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DP|ALT_INV_Add1~25_sumout\,
	datac => \CP|BGC|ALT_INV_out\(1),
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|y_out[1]~7_combout\);

-- Location: LABCELL_X36_Y55_N18
\DP|y_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|y_out\(1) = ( \DP|y_out\(1) & ( (\KEY[0]~input_o\ & ((!\DP|y_out[7]~2_combout\) # (\DP|y_out[1]~7_combout\))) ) ) # ( !\DP|y_out\(1) & ( (\KEY[0]~input_o\ & (\DP|y_out[7]~2_combout\ & \DP|y_out[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \DP|ALT_INV_y_out[7]~2_combout\,
	datac => \DP|ALT_INV_y_out[1]~7_combout\,
	dataf => \DP|ALT_INV_y_out\(1),
	combout => \DP|y_out\(1));

-- Location: LABCELL_X37_Y54_N0
\VGA|user_input_translator|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~17_sumout\ = SUM(( \DP|y_out\(0) ) + ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~9_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(14))))) ) + ( !VCC ))
-- \VGA|user_input_translator|Add0~18\ = CARRY(( \DP|y_out\(0) ) + ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~9_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(14))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101011101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_out\(14),
	datad => \DP|ALT_INV_y_out\(0),
	dataf => \DP|ALT_INV_Add0~9_sumout\,
	cin => GND,
	sumout => \VGA|user_input_translator|Add0~17_sumout\,
	cout => \VGA|user_input_translator|Add0~18\);

-- Location: LABCELL_X37_Y54_N3
\VGA|user_input_translator|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~21_sumout\ = SUM(( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~5_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(15))))) ) + ( \DP|y_out\(1) ) + ( \VGA|user_input_translator|Add0~18\ ))
-- \VGA|user_input_translator|Add0~22\ = CARRY(( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & ((\DP|Add0~5_sumout\))) # (\CP|cenable~combout\ & (\CP|BGC|out\(15))))) ) + ( \DP|y_out\(1) ) + ( \VGA|user_input_translator|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_out\(15),
	datad => \DP|ALT_INV_Add0~5_sumout\,
	dataf => \DP|ALT_INV_y_out\(1),
	cin => \VGA|user_input_translator|Add0~18\,
	sumout => \VGA|user_input_translator|Add0~21_sumout\,
	cout => \VGA|user_input_translator|Add0~22\);

-- Location: LABCELL_X37_Y54_N6
\VGA|user_input_translator|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~25_sumout\ = SUM(( \DP|y_out\(2) ) + ( \VGA|user_input_translator|Add0~53_sumout\ ) + ( \VGA|user_input_translator|Add0~22\ ))
-- \VGA|user_input_translator|Add0~26\ = CARRY(( \DP|y_out\(2) ) + ( \VGA|user_input_translator|Add0~53_sumout\ ) + ( \VGA|user_input_translator|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|user_input_translator|ALT_INV_Add0~53_sumout\,
	datad => \DP|ALT_INV_y_out\(2),
	cin => \VGA|user_input_translator|Add0~22\,
	sumout => \VGA|user_input_translator|Add0~25_sumout\,
	cout => \VGA|user_input_translator|Add0~26\);

-- Location: LABCELL_X37_Y54_N9
\VGA|user_input_translator|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~29_sumout\ = SUM(( \VGA|user_input_translator|Add0~57_sumout\ ) + ( \DP|y_out\(1) ) + ( \VGA|user_input_translator|Add0~26\ ))
-- \VGA|user_input_translator|Add0~30\ = CARRY(( \VGA|user_input_translator|Add0~57_sumout\ ) + ( \DP|y_out\(1) ) + ( \VGA|user_input_translator|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~57_sumout\,
	datac => \DP|ALT_INV_y_out\(1),
	cin => \VGA|user_input_translator|Add0~26\,
	sumout => \VGA|user_input_translator|Add0~29_sumout\,
	cout => \VGA|user_input_translator|Add0~30\);

-- Location: LABCELL_X37_Y54_N12
\VGA|user_input_translator|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~33_sumout\ = SUM(( \DP|y_out\(2) ) + ( \VGA|user_input_translator|Add0~61_sumout\ ) + ( \VGA|user_input_translator|Add0~30\ ))
-- \VGA|user_input_translator|Add0~34\ = CARRY(( \DP|y_out\(2) ) + ( \VGA|user_input_translator|Add0~61_sumout\ ) + ( \VGA|user_input_translator|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|ALT_INV_Add0~61_sumout\,
	datad => \DP|ALT_INV_y_out\(2),
	cin => \VGA|user_input_translator|Add0~30\,
	sumout => \VGA|user_input_translator|Add0~33_sumout\,
	cout => \VGA|user_input_translator|Add0~34\);

-- Location: LABCELL_X37_Y54_N15
\VGA|user_input_translator|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~37_sumout\ = SUM(( \VGA|user_input_translator|Add0~65_sumout\ ) + ( \DP|y_out\(3) ) + ( \VGA|user_input_translator|Add0~34\ ))
-- \VGA|user_input_translator|Add0~38\ = CARRY(( \VGA|user_input_translator|Add0~65_sumout\ ) + ( \DP|y_out\(3) ) + ( \VGA|user_input_translator|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~65_sumout\,
	datac => \DP|ALT_INV_y_out\(3),
	cin => \VGA|user_input_translator|Add0~34\,
	sumout => \VGA|user_input_translator|Add0~37_sumout\,
	cout => \VGA|user_input_translator|Add0~38\);

-- Location: LABCELL_X37_Y54_N18
\VGA|user_input_translator|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~41_sumout\ = SUM(( \DP|y_out\(4) ) + ( \VGA|user_input_translator|Add0~69_sumout\ ) + ( \VGA|user_input_translator|Add0~38\ ))
-- \VGA|user_input_translator|Add0~42\ = CARRY(( \DP|y_out\(4) ) + ( \VGA|user_input_translator|Add0~69_sumout\ ) + ( \VGA|user_input_translator|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|ALT_INV_Add0~69_sumout\,
	datad => \DP|ALT_INV_y_out\(4),
	cin => \VGA|user_input_translator|Add0~38\,
	sumout => \VGA|user_input_translator|Add0~41_sumout\,
	cout => \VGA|user_input_translator|Add0~42\);

-- Location: LABCELL_X37_Y54_N21
\VGA|user_input_translator|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~1_sumout\ = SUM(( \DP|y_out\(5) ) + ( \VGA|user_input_translator|Add0~45_sumout\ ) + ( \VGA|user_input_translator|Add0~42\ ))
-- \VGA|user_input_translator|Add0~2\ = CARRY(( \DP|y_out\(5) ) + ( \VGA|user_input_translator|Add0~45_sumout\ ) + ( \VGA|user_input_translator|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~45_sumout\,
	datad => \DP|ALT_INV_y_out\(5),
	cin => \VGA|user_input_translator|Add0~42\,
	sumout => \VGA|user_input_translator|Add0~1_sumout\,
	cout => \VGA|user_input_translator|Add0~2\);

-- Location: LABCELL_X37_Y54_N24
\VGA|user_input_translator|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~9_sumout\ = SUM(( \VGA|user_input_translator|Add0~49_sumout\ ) + ( \DP|y_out\(6) ) + ( \VGA|user_input_translator|Add0~2\ ))
-- \VGA|user_input_translator|Add0~10\ = CARRY(( \VGA|user_input_translator|Add0~49_sumout\ ) + ( \DP|y_out\(6) ) + ( \VGA|user_input_translator|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|ALT_INV_Add0~49_sumout\,
	datac => \DP|ALT_INV_y_out\(6),
	cin => \VGA|user_input_translator|Add0~2\,
	sumout => \VGA|user_input_translator|Add0~9_sumout\,
	cout => \VGA|user_input_translator|Add0~10\);

-- Location: LABCELL_X37_Y54_N27
\VGA|user_input_translator|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~13_sumout\ = SUM(( \DP|y_out\(7) ) + ( GND ) + ( \VGA|user_input_translator|Add0~10\ ))
-- \VGA|user_input_translator|Add0~14\ = CARRY(( \DP|y_out\(7) ) + ( GND ) + ( \VGA|user_input_translator|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DP|ALT_INV_y_out\(7),
	cin => \VGA|user_input_translator|Add0~10\,
	sumout => \VGA|user_input_translator|Add0~13_sumout\,
	cout => \VGA|user_input_translator|Add0~14\);

-- Location: LABCELL_X37_Y55_N54
\VGA|writeEn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~0_combout\ = ( \CP|BGC|out\(15) & ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\) # (\CP|BGC|out\(16)))) ) ) # ( !\CP|BGC|out\(15) & ( (\KEY[0]~input_o\ & ((!\CP|cenable~combout\) # ((\CP|BGC|out\(14) & \CP|BGC|out\(16))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001101000000001100110100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(14),
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \CP|BGC|ALT_INV_out\(16),
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|BGC|ALT_INV_out\(15),
	combout => \VGA|writeEn~0_combout\);

-- Location: LABCELL_X36_Y55_N39
\VGA|writeEn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~1_combout\ = ( \DP|y_out\(5) & ( (!\CP|currentState.resetState_124~combout\ & ((!\DP|y_out\(6)) # ((!\DP|y_out\(4)) # (!\DP|y_out\(7))))) ) ) # ( !\DP|y_out\(5) & ( !\CP|currentState.resetState_124~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_y_out\(6),
	datab => \CP|ALT_INV_currentState.resetState_124~combout\,
	datac => \DP|ALT_INV_y_out\(4),
	datad => \DP|ALT_INV_y_out\(7),
	dataf => \DP|ALT_INV_y_out\(5),
	combout => \VGA|writeEn~1_combout\);

-- Location: LABCELL_X37_Y55_N39
\VGA|writeEn~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~2_combout\ = ( \DP|Add0~1_sumout\ & ( \VGA|writeEn~1_combout\ & ( (!\VGA|writeEn~0_combout\) # ((!\DP|Add0~9_sumout\ & (!\DP|Add0~5_sumout\ & !\CP|cenable~combout\))) ) ) ) # ( !\DP|Add0~1_sumout\ & ( \VGA|writeEn~1_combout\ & ( 
-- (!\VGA|writeEn~0_combout\) # (!\CP|cenable~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_Add0~9_sumout\,
	datab => \VGA|ALT_INV_writeEn~0_combout\,
	datac => \DP|ALT_INV_Add0~5_sumout\,
	datad => \CP|ALT_INV_cenable~combout\,
	datae => \DP|ALT_INV_Add0~1_sumout\,
	dataf => \VGA|ALT_INV_writeEn~1_combout\,
	combout => \VGA|writeEn~2_combout\);

-- Location: LABCELL_X37_Y54_N30
\VGA|user_input_translator|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~5_sumout\ = SUM(( GND ) + ( GND ) + ( \VGA|user_input_translator|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \VGA|user_input_translator|Add0~14\,
	sumout => \VGA|user_input_translator|Add0~5_sumout\);

-- Location: LABCELL_X37_Y54_N48
\VGA|VideoMemory|auto_generated|decode2|w_anode596w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~9_sumout\ & (!\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~13_sumout\ & 
-- \VGA|writeEn~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	datad => \VGA|ALT_INV_writeEn~2_combout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3));

-- Location: FF_X37_Y56_N49
\VGA|controller|yCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[6]~DUPLICATE_q\);

-- Location: FF_X37_Y56_N40
\VGA|controller|yCounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y56_N0
\VGA|controller|controller_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~17_sumout\ = SUM(( !\VGA|controller|xCounter[7]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(1)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~18\ = CARRY(( !\VGA|controller|xCounter[7]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(1)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~19\ = SHARE((\VGA|controller|xCounter[7]~DUPLICATE_q\ & \VGA|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_xCounter[7]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter\(1),
	cin => GND,
	sharein => GND,
	sumout => \VGA|controller|controller_translator|Add1~17_sumout\,
	cout => \VGA|controller|controller_translator|Add1~18\,
	shareout => \VGA|controller|controller_translator|Add1~19\);

-- Location: MLABCELL_X39_Y56_N3
\VGA|controller|controller_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~21_sumout\ = SUM(( !\VGA|controller|xCounter\(8) $ (!\VGA|controller|yCounter\(2)) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~22\ = CARRY(( !\VGA|controller|xCounter\(8) $ (!\VGA|controller|yCounter\(2)) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~23\ = SHARE((\VGA|controller|xCounter\(8) & \VGA|controller|yCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(8),
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|controller_translator|Add1~18\,
	sharein => \VGA|controller|controller_translator|Add1~19\,
	sumout => \VGA|controller|controller_translator|Add1~21_sumout\,
	cout => \VGA|controller|controller_translator|Add1~22\,
	shareout => \VGA|controller|controller_translator|Add1~23\);

-- Location: MLABCELL_X39_Y56_N6
\VGA|controller|controller_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~25_sumout\ = SUM(( !\VGA|controller|xCounter[9]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (\VGA|controller|yCounter\(1))) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( 
-- \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~26\ = CARRY(( !\VGA|controller|xCounter[9]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (\VGA|controller|yCounter\(1))) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( 
-- \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~27\ = SHARE((!\VGA|controller|xCounter[9]~DUPLICATE_q\ & (\VGA|controller|yCounter[3]~DUPLICATE_q\ & \VGA|controller|yCounter\(1))) # (\VGA|controller|xCounter[9]~DUPLICATE_q\ & ((\VGA|controller|yCounter\(1)) # 
-- (\VGA|controller|yCounter[3]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	cin => \VGA|controller|controller_translator|Add1~22\,
	sharein => \VGA|controller|controller_translator|Add1~23\,
	sumout => \VGA|controller|controller_translator|Add1~25_sumout\,
	cout => \VGA|controller|controller_translator|Add1~26\,
	shareout => \VGA|controller|controller_translator|Add1~27\);

-- Location: MLABCELL_X39_Y56_N9
\VGA|controller|controller_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~29_sumout\ = SUM(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~30\ = CARRY(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~31\ = SHARE((\VGA|controller|yCounter\(2) & \VGA|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(2),
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|controller_translator|Add1~26\,
	sharein => \VGA|controller|controller_translator|Add1~27\,
	sumout => \VGA|controller|controller_translator|Add1~29_sumout\,
	cout => \VGA|controller|controller_translator|Add1~30\,
	shareout => \VGA|controller|controller_translator|Add1~31\);

-- Location: MLABCELL_X39_Y56_N12
\VGA|controller|controller_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~33_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~34\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~35\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~30\,
	sharein => \VGA|controller|controller_translator|Add1~31\,
	sumout => \VGA|controller|controller_translator|Add1~33_sumout\,
	cout => \VGA|controller|controller_translator|Add1~34\,
	shareout => \VGA|controller|controller_translator|Add1~35\);

-- Location: MLABCELL_X39_Y56_N15
\VGA|controller|controller_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~37_sumout\ = SUM(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~38\ = CARRY(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~39\ = SHARE((\VGA|controller|yCounter[6]~DUPLICATE_q\ & \VGA|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|controller_translator|Add1~34\,
	sharein => \VGA|controller|controller_translator|Add1~35\,
	sumout => \VGA|controller|controller_translator|Add1~37_sumout\,
	cout => \VGA|controller|controller_translator|Add1~38\,
	shareout => \VGA|controller|controller_translator|Add1~39\);

-- Location: MLABCELL_X39_Y56_N18
\VGA|controller|controller_translator|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~41_sumout\ = SUM(( !\VGA|controller|yCounter\(7) $ (!\VGA|controller|yCounter\(5)) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~42\ = CARRY(( !\VGA|controller|yCounter\(7) $ (!\VGA|controller|yCounter\(5)) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~43\ = SHARE((\VGA|controller|yCounter\(7) & \VGA|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(7),
	datac => \VGA|controller|ALT_INV_yCounter\(5),
	cin => \VGA|controller|controller_translator|Add1~38\,
	sharein => \VGA|controller|controller_translator|Add1~39\,
	sumout => \VGA|controller|controller_translator|Add1~41_sumout\,
	cout => \VGA|controller|controller_translator|Add1~42\,
	shareout => \VGA|controller|controller_translator|Add1~43\);

-- Location: MLABCELL_X39_Y56_N21
\VGA|controller|controller_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~1_sumout\ = SUM(( !\VGA|controller|yCounter\(8) $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~43\ ) + ( \VGA|controller|controller_translator|Add1~42\ ))
-- \VGA|controller|controller_translator|Add1~2\ = CARRY(( !\VGA|controller|yCounter\(8) $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~43\ ) + ( \VGA|controller|controller_translator|Add1~42\ ))
-- \VGA|controller|controller_translator|Add1~3\ = SHARE((\VGA|controller|yCounter\(8) & \VGA|controller|yCounter[6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(8),
	datac => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~42\,
	sharein => \VGA|controller|controller_translator|Add1~43\,
	sumout => \VGA|controller|controller_translator|Add1~1_sumout\,
	cout => \VGA|controller|controller_translator|Add1~2\,
	shareout => \VGA|controller|controller_translator|Add1~3\);

-- Location: MLABCELL_X39_Y56_N24
\VGA|controller|controller_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))
-- \VGA|controller|controller_translator|Add1~10\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))
-- \VGA|controller|controller_translator|Add1~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~2\,
	sharein => \VGA|controller|controller_translator|Add1~3\,
	sumout => \VGA|controller|controller_translator|Add1~9_sumout\,
	cout => \VGA|controller|controller_translator|Add1~10\,
	shareout => \VGA|controller|controller_translator|Add1~11\);

-- Location: MLABCELL_X39_Y56_N27
\VGA|controller|controller_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~14\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~10\,
	sharein => \VGA|controller|controller_translator|Add1~11\,
	sumout => \VGA|controller|controller_translator|Add1~13_sumout\,
	cout => \VGA|controller|controller_translator|Add1~14\,
	shareout => \VGA|controller|controller_translator|Add1~15\);

-- Location: MLABCELL_X39_Y56_N30
\VGA|controller|controller_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~5_sumout\ = SUM(( GND ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( \VGA|controller|controller_translator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|controller|controller_translator|Add1~14\,
	sharein => \VGA|controller|controller_translator|Add1~15\,
	sumout => \VGA|controller|controller_translator|Add1~5_sumout\);

-- Location: MLABCELL_X39_Y56_N57
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\ = ( \VGA|controller|controller_translator|Add1~9_sumout\ & ( (!\VGA|controller|controller_translator|Add1~13_sumout\ & (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\);

-- Location: MLABCELL_X25_Y54_N0
\CP|BGtranslator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~17_sumout\ = SUM(( !\CP|BGC|out\(14) $ (!\CP|BGC|out\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CP|BGtranslator|Add1~18\ = CARRY(( !\CP|BGC|out\(14) $ (!\CP|BGC|out\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CP|BGtranslator|Add1~19\ = SHARE((\CP|BGC|out\(14) & \CP|BGC|out\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(14),
	datac => \CP|BGC|ALT_INV_out\(0),
	cin => GND,
	sharein => GND,
	sumout => \CP|BGtranslator|Add1~17_sumout\,
	cout => \CP|BGtranslator|Add1~18\,
	shareout => \CP|BGtranslator|Add1~19\);

-- Location: MLABCELL_X25_Y54_N3
\CP|BGtranslator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~21_sumout\ = SUM(( !\CP|BGC|out\(1) $ (!\CP|BGC|out\(15)) ) + ( \CP|BGtranslator|Add1~19\ ) + ( \CP|BGtranslator|Add1~18\ ))
-- \CP|BGtranslator|Add1~22\ = CARRY(( !\CP|BGC|out\(1) $ (!\CP|BGC|out\(15)) ) + ( \CP|BGtranslator|Add1~19\ ) + ( \CP|BGtranslator|Add1~18\ ))
-- \CP|BGtranslator|Add1~23\ = SHARE((\CP|BGC|out\(1) & \CP|BGC|out\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(1),
	datad => \CP|BGC|ALT_INV_out\(15),
	cin => \CP|BGtranslator|Add1~18\,
	sharein => \CP|BGtranslator|Add1~19\,
	sumout => \CP|BGtranslator|Add1~21_sumout\,
	cout => \CP|BGtranslator|Add1~22\,
	shareout => \CP|BGtranslator|Add1~23\);

-- Location: MLABCELL_X25_Y54_N6
\CP|BGtranslator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~25_sumout\ = SUM(( !\CP|BGC|out\(2) $ (!\CP|BGC|out\(0) $ (\CP|BGC|out\(16))) ) + ( \CP|BGtranslator|Add1~23\ ) + ( \CP|BGtranslator|Add1~22\ ))
-- \CP|BGtranslator|Add1~26\ = CARRY(( !\CP|BGC|out\(2) $ (!\CP|BGC|out\(0) $ (\CP|BGC|out\(16))) ) + ( \CP|BGtranslator|Add1~23\ ) + ( \CP|BGtranslator|Add1~22\ ))
-- \CP|BGtranslator|Add1~27\ = SHARE((!\CP|BGC|out\(2) & (\CP|BGC|out\(0) & \CP|BGC|out\(16))) # (\CP|BGC|out\(2) & ((\CP|BGC|out\(16)) # (\CP|BGC|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGC|ALT_INV_out\(2),
	datac => \CP|BGC|ALT_INV_out\(0),
	datad => \CP|BGC|ALT_INV_out\(16),
	cin => \CP|BGtranslator|Add1~22\,
	sharein => \CP|BGtranslator|Add1~23\,
	sumout => \CP|BGtranslator|Add1~25_sumout\,
	cout => \CP|BGtranslator|Add1~26\,
	shareout => \CP|BGtranslator|Add1~27\);

-- Location: MLABCELL_X25_Y54_N9
\CP|BGtranslator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~29_sumout\ = SUM(( !\CP|BGC|out\(1) $ (!\CP|BGC|out\(3)) ) + ( \CP|BGtranslator|Add1~27\ ) + ( \CP|BGtranslator|Add1~26\ ))
-- \CP|BGtranslator|Add1~30\ = CARRY(( !\CP|BGC|out\(1) $ (!\CP|BGC|out\(3)) ) + ( \CP|BGtranslator|Add1~27\ ) + ( \CP|BGtranslator|Add1~26\ ))
-- \CP|BGtranslator|Add1~31\ = SHARE((\CP|BGC|out\(1) & \CP|BGC|out\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(1),
	datad => \CP|BGC|ALT_INV_out\(3),
	cin => \CP|BGtranslator|Add1~26\,
	sharein => \CP|BGtranslator|Add1~27\,
	sumout => \CP|BGtranslator|Add1~29_sumout\,
	cout => \CP|BGtranslator|Add1~30\,
	shareout => \CP|BGtranslator|Add1~31\);

-- Location: MLABCELL_X25_Y54_N12
\CP|BGtranslator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~33_sumout\ = SUM(( !\CP|BGC|out\(4) $ (!\CP|BGC|out\(2)) ) + ( \CP|BGtranslator|Add1~31\ ) + ( \CP|BGtranslator|Add1~30\ ))
-- \CP|BGtranslator|Add1~34\ = CARRY(( !\CP|BGC|out\(4) $ (!\CP|BGC|out\(2)) ) + ( \CP|BGtranslator|Add1~31\ ) + ( \CP|BGtranslator|Add1~30\ ))
-- \CP|BGtranslator|Add1~35\ = SHARE((\CP|BGC|out\(4) & \CP|BGC|out\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(4),
	datad => \CP|BGC|ALT_INV_out\(2),
	cin => \CP|BGtranslator|Add1~30\,
	sharein => \CP|BGtranslator|Add1~31\,
	sumout => \CP|BGtranslator|Add1~33_sumout\,
	cout => \CP|BGtranslator|Add1~34\,
	shareout => \CP|BGtranslator|Add1~35\);

-- Location: MLABCELL_X25_Y54_N15
\CP|BGtranslator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~37_sumout\ = SUM(( !\CP|BGC|out\(3) $ (!\CP|BGC|out\(5)) ) + ( \CP|BGtranslator|Add1~35\ ) + ( \CP|BGtranslator|Add1~34\ ))
-- \CP|BGtranslator|Add1~38\ = CARRY(( !\CP|BGC|out\(3) $ (!\CP|BGC|out\(5)) ) + ( \CP|BGtranslator|Add1~35\ ) + ( \CP|BGtranslator|Add1~34\ ))
-- \CP|BGtranslator|Add1~39\ = SHARE((\CP|BGC|out\(3) & \CP|BGC|out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(3),
	datad => \CP|BGC|ALT_INV_out\(5),
	cin => \CP|BGtranslator|Add1~34\,
	sharein => \CP|BGtranslator|Add1~35\,
	sumout => \CP|BGtranslator|Add1~37_sumout\,
	cout => \CP|BGtranslator|Add1~38\,
	shareout => \CP|BGtranslator|Add1~39\);

-- Location: MLABCELL_X25_Y54_N18
\CP|BGtranslator|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~41_sumout\ = SUM(( !\CP|BGC|out\(4) $ (!\CP|BGC|out\(6)) ) + ( \CP|BGtranslator|Add1~39\ ) + ( \CP|BGtranslator|Add1~38\ ))
-- \CP|BGtranslator|Add1~42\ = CARRY(( !\CP|BGC|out\(4) $ (!\CP|BGC|out\(6)) ) + ( \CP|BGtranslator|Add1~39\ ) + ( \CP|BGtranslator|Add1~38\ ))
-- \CP|BGtranslator|Add1~43\ = SHARE((\CP|BGC|out\(4) & \CP|BGC|out\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGC|ALT_INV_out\(4),
	datac => \CP|BGC|ALT_INV_out\(6),
	cin => \CP|BGtranslator|Add1~38\,
	sharein => \CP|BGtranslator|Add1~39\,
	sumout => \CP|BGtranslator|Add1~41_sumout\,
	cout => \CP|BGtranslator|Add1~42\,
	shareout => \CP|BGtranslator|Add1~43\);

-- Location: MLABCELL_X25_Y54_N21
\CP|BGtranslator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~1_sumout\ = SUM(( !\CP|BGC|out\(7) $ (!\CP|BGC|out\(5)) ) + ( \CP|BGtranslator|Add1~43\ ) + ( \CP|BGtranslator|Add1~42\ ))
-- \CP|BGtranslator|Add1~2\ = CARRY(( !\CP|BGC|out\(7) $ (!\CP|BGC|out\(5)) ) + ( \CP|BGtranslator|Add1~43\ ) + ( \CP|BGtranslator|Add1~42\ ))
-- \CP|BGtranslator|Add1~3\ = SHARE((\CP|BGC|out\(7) & \CP|BGC|out\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(7),
	datad => \CP|BGC|ALT_INV_out\(5),
	cin => \CP|BGtranslator|Add1~42\,
	sharein => \CP|BGtranslator|Add1~43\,
	sumout => \CP|BGtranslator|Add1~1_sumout\,
	cout => \CP|BGtranslator|Add1~2\,
	shareout => \CP|BGtranslator|Add1~3\);

-- Location: MLABCELL_X25_Y54_N24
\CP|BGtranslator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~9_sumout\ = SUM(( \CP|BGC|out\(6) ) + ( \CP|BGtranslator|Add1~3\ ) + ( \CP|BGtranslator|Add1~2\ ))
-- \CP|BGtranslator|Add1~10\ = CARRY(( \CP|BGC|out\(6) ) + ( \CP|BGtranslator|Add1~3\ ) + ( \CP|BGtranslator|Add1~2\ ))
-- \CP|BGtranslator|Add1~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(6),
	cin => \CP|BGtranslator|Add1~2\,
	sharein => \CP|BGtranslator|Add1~3\,
	sumout => \CP|BGtranslator|Add1~9_sumout\,
	cout => \CP|BGtranslator|Add1~10\,
	shareout => \CP|BGtranslator|Add1~11\);

-- Location: MLABCELL_X25_Y54_N27
\CP|BGtranslator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~13_sumout\ = SUM(( \CP|BGC|out\(7) ) + ( \CP|BGtranslator|Add1~11\ ) + ( \CP|BGtranslator|Add1~10\ ))
-- \CP|BGtranslator|Add1~14\ = CARRY(( \CP|BGC|out\(7) ) + ( \CP|BGtranslator|Add1~11\ ) + ( \CP|BGtranslator|Add1~10\ ))
-- \CP|BGtranslator|Add1~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CP|BGC|ALT_INV_out\(7),
	cin => \CP|BGtranslator|Add1~10\,
	sharein => \CP|BGtranslator|Add1~11\,
	sumout => \CP|BGtranslator|Add1~13_sumout\,
	cout => \CP|BGtranslator|Add1~14\,
	shareout => \CP|BGtranslator|Add1~15\);

-- Location: MLABCELL_X25_Y54_N30
\CP|BGtranslator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|BGtranslator|Add1~5_sumout\ = SUM(( GND ) + ( \CP|BGtranslator|Add1~15\ ) + ( \CP|BGtranslator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CP|BGtranslator|Add1~14\,
	sharein => \CP|BGtranslator|Add1~15\,
	sumout => \CP|BGtranslator|Add1~5_sumout\);

-- Location: MLABCELL_X25_Y54_N36
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]~feeder_combout\ = ( \CP|BGtranslator|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]~feeder_combout\);

-- Location: FF_X25_Y54_N37
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(3));

-- Location: LABCELL_X35_Y54_N15
\CP|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector1~1_combout\ = ( !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(3) & ( \CP|cenable~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_cenable~combout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(3),
	combout => \CP|Selector1~1_combout\);

-- Location: FF_X24_Y54_N7
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGtranslator|Add1~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y54_N45
\CP|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector1~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ & ( \CP|cenable~combout\ ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ & ( \CP|cenable~combout\ & ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(3),
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a[2]~DUPLICATE_q\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \CP|Selector1~0_combout\);

-- Location: LABCELL_X33_Y54_N12
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X33_Y50_N0
\CP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~1_sumout\ = SUM(( \CP|RC|out\(8) ) + ( \CP|RC|out\(0) ) + ( !VCC ))
-- \CP|Add0~2\ = CARRY(( \CP|RC|out\(8) ) + ( \CP|RC|out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(8),
	dataf => \CP|RC|ALT_INV_out\(0),
	cin => GND,
	sumout => \CP|Add0~1_sumout\,
	cout => \CP|Add0~2\);

-- Location: LABCELL_X33_Y50_N3
\CP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~5_sumout\ = SUM(( !\CP|RC|out\(1) $ (!\CP|RC|out\(9)) ) + ( \CP|RC|out\(0) ) + ( \CP|Add0~2\ ))
-- \CP|Add0~6\ = CARRY(( !\CP|RC|out\(1) $ (!\CP|RC|out\(9)) ) + ( \CP|RC|out\(0) ) + ( \CP|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|RC|ALT_INV_out\(1),
	datad => \CP|RC|ALT_INV_out\(9),
	dataf => \CP|RC|ALT_INV_out\(0),
	cin => \CP|Add0~2\,
	sumout => \CP|Add0~5_sumout\,
	cout => \CP|Add0~6\);

-- Location: LABCELL_X33_Y50_N6
\CP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~9_sumout\ = SUM(( (\CP|RC|out\(1) & !\CP|RC|out\(9)) ) + ( \CP|RC|out\(2) ) + ( \CP|Add0~6\ ))
-- \CP|Add0~10\ = CARRY(( (\CP|RC|out\(1) & !\CP|RC|out\(9)) ) + ( \CP|RC|out\(2) ) + ( \CP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|RC|ALT_INV_out\(1),
	datac => \CP|RC|ALT_INV_out\(2),
	datad => \CP|RC|ALT_INV_out\(9),
	cin => \CP|Add0~6\,
	sumout => \CP|Add0~9_sumout\,
	cout => \CP|Add0~10\);

-- Location: LABCELL_X33_Y50_N9
\CP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~13_sumout\ = SUM(( !\CP|RC|out\(3) $ (((!\CP|RC|out\(1)) # (!\CP|RC|out\(9)))) ) + ( \CP|RC|out\(2) ) + ( \CP|Add0~10\ ))
-- \CP|Add0~14\ = CARRY(( !\CP|RC|out\(3) $ (((!\CP|RC|out\(1)) # (!\CP|RC|out\(9)))) ) + ( \CP|RC|out\(2) ) + ( \CP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(3),
	datab => \CP|RC|ALT_INV_out\(1),
	datac => \CP|RC|ALT_INV_out\(2),
	datad => \CP|RC|ALT_INV_out\(9),
	cin => \CP|Add0~10\,
	sumout => \CP|Add0~13_sumout\,
	cout => \CP|Add0~14\);

-- Location: LABCELL_X33_Y50_N12
\CP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~17_sumout\ = SUM(( (\CP|RC|out\(3) & ((!\CP|RC|out\(1)) # (!\CP|RC|out\(9)))) ) + ( \CP|RC|out\(4) ) + ( \CP|Add0~14\ ))
-- \CP|Add0~18\ = CARRY(( (\CP|RC|out\(3) & ((!\CP|RC|out\(1)) # (!\CP|RC|out\(9)))) ) + ( \CP|RC|out\(4) ) + ( \CP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(3),
	datab => \CP|RC|ALT_INV_out\(1),
	datac => \CP|RC|ALT_INV_out\(4),
	datad => \CP|RC|ALT_INV_out\(9),
	cin => \CP|Add0~14\,
	sumout => \CP|Add0~17_sumout\,
	cout => \CP|Add0~18\);

-- Location: LABCELL_X33_Y50_N15
\CP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~21_sumout\ = SUM(( (\CP|RC|out\(3) & (\CP|RC|out\(1) & \CP|RC|out\(9))) ) + ( \CP|RC|out\(4) ) + ( \CP|Add0~18\ ))
-- \CP|Add0~22\ = CARRY(( (\CP|RC|out\(3) & (\CP|RC|out\(1) & \CP|RC|out\(9))) ) + ( \CP|RC|out\(4) ) + ( \CP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|RC|ALT_INV_out\(3),
	datab => \CP|RC|ALT_INV_out\(1),
	datac => \CP|RC|ALT_INV_out\(9),
	dataf => \CP|RC|ALT_INV_out\(4),
	cin => \CP|Add0~18\,
	sumout => \CP|Add0~21_sumout\,
	cout => \CP|Add0~22\);

-- Location: LABCELL_X33_Y50_N18
\CP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Add0~25_sumout\ = SUM(( GND ) + ( GND ) + ( \CP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CP|Add0~22\,
	sumout => \CP|Add0~25_sumout\);

-- Location: M10K_X26_Y50_N0
\CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0701C070180401806018060180600000000000000701C0701C000000701C0701C070180401806018060180601004010040100401C070000401C0701C0701C0701804018060180601806010040100401004010040000701C0701C0701C0701804018060180601806010040100401004010000000701C0701C0701C0701804018060100",
	mem_init2 => "6018060100401004010040100001C0701C0701C0701C07018040180601006018060100401004010040180001C0701C0701C0701C06018060180401006018060100401006018060180401C0701C0701C0701C06010060100001806018040180401000010060100701C0701C0701C0701C06000000000001006018040180401000018060100701C0701C0701C0701C07000000000401006018040180401004018060100701C0701C0701C0701C06010040100601806010040100400004018040000701C0701C0701C0701C06010040180601806010040100001004018000180701C0701C0701C0701C060180001806018040100000004010040100401C0701C070",
	mem_init1 => "1C0701C0701C07018000100601000010000100701C0701C0701C0701C0701C0701C0701C0701C0601000000040180401C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C070180401C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C070180601C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C070180601C07018000000701C0701C0701C0701C0701C0701C0701C0701C070180701C07018060180701C0701C0701C0701C0701C0701C0701C0701C070180601C060180401C0701C0701C0701C0701C0701C0701C0701C0701C0601807018060180601C0701C0701C0701C0701C0701C0701C0701C0701C0601C",
	mem_init0 => "07018060100701C0701C0701C0701C0701C0701C0701C07010070180701C06018060180701C0701C0701C0701C0701C0701C0701C070180601C07018060180401C0701C0701C0701C0701C0701C0701C0701C070180001806018060180601C0701C0701C0701C0701C0701C0701C0701C0701C0601C06018060100701C0701C0701C0701C0701C0701C0701C0701C0701C0601C06010060180701C0701C0701C0701C0701C0701C0701C0701C0701C06018060180601C0701C0701C0701C0701C0701C0701C0701C0701C0701C07018060180601C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0601C0701C0701C0701C0701C0701C0701C07",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "robot24x30.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|Robot24x30:robot_reg|altsyncram:altsyncram_component|altsyncram_slo1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 720,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|robot_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X17_Y54_N27
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = ( \CP|BGtranslator|Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X17_Y54_N28
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X24_Y54_N8
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGtranslator|Add1~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: FF_X11_Y54_N40
\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CP|BGtranslator|Add1~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LABCELL_X11_Y54_N15
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w\(3) = ( \CP|BGtranslator|Add1~1_sumout\ & ( (!\CP|BGtranslator|Add1~9_sumout\ & (!\CP|BGtranslator|Add1~13_sumout\ & \CP|BGtranslator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datad => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w\(3));

-- Location: M10K_X26_Y53_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N33
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\(3) = ( !\CP|BGtranslator|Add1~1_sumout\ & ( (!\CP|BGtranslator|Add1~9_sumout\ & (!\CP|BGtranslator|Add1~13_sumout\ & \CP|BGtranslator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datad => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\(3));

-- Location: M10K_X5_Y54_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LABCELL_X24_Y54_N21
\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\ & ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a29\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000010000000100000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(2),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a29\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\);

-- Location: LABCELL_X11_Y54_N42
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\(3) = ( !\CP|BGtranslator|Add1~1_sumout\ & ( !\CP|BGtranslator|Add1~13_sumout\ & ( (!\CP|BGtranslator|Add1~5_sumout\ & !\CP|BGtranslator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	dataf => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\(3));

-- Location: M10K_X26_Y59_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N3
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\ = ( \CP|BGtranslator|Add1~1_sumout\ & ( (!\CP|BGtranslator|Add1~9_sumout\ & (!\CP|BGtranslator|Add1~13_sumout\ & !\CP|BGtranslator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datad => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\);

-- Location: M10K_X26_Y47_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N6
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\ = ( !\CP|BGtranslator|Add1~1_sumout\ & ( !\CP|BGtranslator|Add1~13_sumout\ & ( (!\CP|BGtranslator|Add1~5_sumout\ & \CP|BGtranslator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	dataf => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\);

-- Location: M10K_X14_Y48_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000380070001C000E0180000000000000000000070000000000000000000000000000003800000000003800300018000E01800000000000000000000E0000000000000000000000000000003800000000003800380018000C01800000000000000000000E0000000000000000000000000000001C00000000003800380008001C01800000000000000000001E0000000000000000000000000000001E00000000003800380008001C01800000000000000000001C0000000000000000000000000000000F00000000003800180000001C01800000000000000000003800000000000000000000000000000007800000000038001C0000001801800000",
	mem_init2 => "000000000000007800000000000000000000000000000003C00000000038001C000000380180000000000000000000F000000000000000000000000000000001F00000000038001C000000380180000000000000000003E000000000000000000000000000000000FE0000000038001C00000038018000000000000000000FC0000000000000000000000000000000003FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000FFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFE0000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N48
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\ = ( \CP|BGtranslator|Add1~1_sumout\ & ( !\CP|BGtranslator|Add1~13_sumout\ & ( (!\CP|BGtranslator|Add1~5_sumout\ & \CP|BGtranslator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	dataf => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\);

-- Location: M10K_X14_Y47_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "001C00030000FFFFFFFFFFC000000000000000001FFFFFFFFC0003F800381C00000000003800000C001C00030000FFFFFFFFFFC00000000000000000000000001E0001F800380C001FFFF8003800000C001C00038000E000000000000000000000000000000000000F0000F000380E000FFFF8003000000C001C000380007000000000000000000000000000000000001F80002000380E000FFFF0007000000C001C000380003800000000000000000000000000000000003F00000000380E000E0070007000000C001C0001C0003C0000000000000000000000000000000000F800000000380600070070007000000C001C0001E0001E000000000000000000",
	mem_init2 => "0000000000000001F000000000380700070060006000000C001C0000E0000F0000000000000000000000000000000003C0000000003807000700E000E000000C001C0000700007800000000000000000000000000000000780000000003807000300E000E000000C001C0000380003800000000000000000000000000000000F001FFFF8003807000380C000E000000C001C00003C0001C00000000000000000000000000000001E007FFFF8003803000381C000C000000C001C00001E0001E00000000000000000000000000000001C00F80038003803800381C001C000000C001C00000F0000F00000000000000000000000000000003800E0003800380380",
	mem_init1 => "01C1C001C000000C001C0000078000780000000000000000000000000000003801C000380038038001C38001C000000C001C0000038000380000000000000000000000000000007001C000380038018001C380018000000C001C000001C0001C0000000000000000000000000000007001800038003801C000C380038000000C001C000001E0000E0000000000000000000000000000007001800038003801C000E300038000000C001C000000F0000E0000000000000000000000000000006001800038003801C000E700038000000C001C0000007800060000000000000000000000000000006001800038003800C0006700038000000C001C000000380007",
	mem_init0 => "0000000000000000000000000000006001C00038003800E00076000301FFFFFC001FFFFFFFFC00070000000000000000000000000000006001E00038003800E0007E000701FFFFFC001FFFFFFFF800070000000000000000000000000000006000F80038003800E0007E000701FFFFFC001FFFFFFFF8000700000000000000000000000000000060007FFFF800380060003E000701800000000000000000000700000000000000000000000000000070003FFFF800380070003C0006018000000000000000000007000000000000000000000000000000700003FFF800380070003C000E01800000000000000000000700000000000000000000000000000070",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LABCELL_X23_Y54_N3
\CP|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector0~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))))) ) ) ) # ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (((\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) # (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( 
-- !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a5~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	combout => \CP|Selector0~0_combout\);

-- Location: LABCELL_X11_Y54_N24
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\ = ( \CP|BGtranslator|Add1~1_sumout\ & ( \CP|BGtranslator|Add1~13_sumout\ & ( (!\CP|BGtranslator|Add1~5_sumout\ & !\CP|BGtranslator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	dataf => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\);

-- Location: M10K_X26_Y51_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FE000E00C000E038003801C001C01E00700060000000000000000000000000F0000F000007800FFFFE000E00E000E030003801C003C00E00700070000000000000000000000000700007800007001FFFFE000E00E0006070003001C003C00E0078007000000000000000000000000038000380000E003C000E000E00E00070700070018003E00E00F800700000000000000000000000003C0001C0000E0078000E000E00600070700070038003E00E00F800300000000000000000000000001E0000E0001C0070000E000E00700070E00070038003E00C00F800380000000000000000000000000F0000E0001C0060000E000E00700038E00060038007E00400",
	mem_init2 => "FC003800000000000000000000000007800070001C0060000E000E00700038E000E0038007600401DC00380000000000000000000000000380007000180060000E000E00300038C000E0070007700401DC001800000000000000000000000001C0003000180060000E000E00380019C000E0070006700001DC001C00000000000000000000000001E0003800180070000E000E0038001DC000E0070006700001CC001C0000000000000000001FFFFFFFE0003800180078000E000E0038001D8000C007000E3000018E001C0000000000000000001FFFFFFFC000380018003C000E000E0038000F8001C006000E3800038E000C0000000000000000001C000000",
	mem_init1 => "0000380018001FFFFE000E0018000F8001C00E000E3800038E000E0000000000000000001C000000000038001C000FFFFE000E001C000F8001C00E000C38000386000E0000000000000000001C000000000038001C0003FFFE000E001C000F0001800E001C18000307000E0000000000000000001C000000000030001C00000000000E001C00070003800C001C18000707000E0000000000000000001C000000000070000E00000000000E000C00070003801C001C1C00070700060000000000000000001C000000000070000E00000000000E000E00060003801C00181C00070700070000000000000000001C000000000070000700000000000E000E000200",
	mem_init0 => "03001C00181C00070300070000000000000000001C0000000000E0000700000000000E000E00020007001800380C00060380070000000000000000001C0000000001E0000380000000000E000600000007003800380E000E0380030000000000000000001C0000000003C00003C0000000000E000700000007003800380E000E0380038000000000000000001C0000000007800001F0000000000E000700000006003800300E000E0180038000000000000000001C000000000F000000F8000000000E00070000000E0030007006000C01C0038000000000000000001C000000003E0000003F000000000E00030000000E0070007006000C01C0018000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N21
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\ = ( !\CP|BGtranslator|Add1~1_sumout\ & ( (!\CP|BGtranslator|Add1~9_sumout\ & (\CP|BGtranslator|Add1~13_sumout\ & !\CP|BGtranslator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datad => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\);

-- Location: M10K_X26_Y58_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000001FFFFFFFFFFC0000001FFFFFFFFFFE0003FFFFFFFE007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFFF000000007FFFFFFFFFE0003FFFFFFFC007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFF8000000000FFFFFFFFFE0003FFFFFFFC007FFFE007FFFC00FFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFC00003FFFF1FFFFC00001FFFF80000FFFFC0000001FFFFFFFFFFFC000000000000000001FFFFFFFFF80003FFFF9FFFFC00003FFFF80000FFFFC000001FFFFFFFFFFFFC000000000000000001FFFFFFFFFC0003FFFF9FFFFC00003FFFF80000FFFFC000007FFFFFFFFFFFFC000000000000000001C00000003E000380038C000E00003800300000C001C00000FC00000000000C000000000000000001C00000000F000380038E000E00003000700000C001C00001E000000",
	mem_init1 => "000000C000000000000000001C000000007800380038E000E00007000700000C001C00003C000000000000C000000000000000001C000000003C00380038E000E00007000700000C001C000078000000000000C000000000000000001C000000001E003800386000600007000600000C001C0000F0000000000000C000000000000000001C000000000F0038003870007FFFFE000E00000C001C0000E0000000000000C000000000000000001C00000000078038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C0000000003C038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C000000",
	mem_init0 => "0001E03800383000000000000E00000C001C000380000000000000C000000000000000001C0000000000F03800383800000000000C00000C001C000380000000000000C000000000000000001C0000000000783800383800000000001C00000C001C000380000000000000C000000000000000001C00000000003C3800383800000000001C00000C001C000300000000000000C000000000000000001C00000000001E3800381800000000001C00000C001C000300000000000000C000000000000000001FFFFFFFF0000F3800381C00000000001800000C001C000300007FFFFFFFFFC000000000000000001FFFFFFFF80007B800381C00000000003800000C",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N57
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\ = ( !\CP|BGtranslator|Add1~1_sumout\ & ( (\CP|BGtranslator|Add1~9_sumout\ & (\CP|BGtranslator|Add1~13_sumout\ & !\CP|BGtranslator|Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datad => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\);

-- Location: M10K_X5_Y53_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFF8000000000000000000000000001FFFFFFFFFFFFFE0000FFFFE3FFFF00000FFFFE007FFFF803FFFF8000000000000000000000000007F000000000000F8000E000E3800380000E000E00700038038001C00000000000000000000000000F80000000000003C000E000E3800380000E000C00700038038001C00000000000000000000000001E00000000000001E000E000E3800380000C001C00600038030001C00000000000000000000000003C00000000000000F000E000E1800180001C001C00E00018070000C000000000000000000000000078000000000000007800E000E1C001C0001C001C00E0001C070000E0000000000000000000000000700",
	mem_init2 => "00000000000003C00E000E1C001FFFFFC001800E0001C070000E0000000000000000000000000E0000000000000001E00E000E1C001FFFFF8003800C0001C060000E0000000000000000000000000E0000000000000000F00E000E0C000FFFFF8003801C0000C0E000060000000000000000000000001C0000000000000000780E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000003C0E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000001E0E000E0E000000000003001C0000E0E000070000000000000000000000001800000000000000000F0E000E0E00000000",
	mem_init1 => "000700180000E0C00003000000000000000000000000180000000000000000070E000E060000000000070038000061C00003800000000000000000000000180001FFFFFFFFF80003CE000E070000000000070038000071C00003800000000000000000000000180007FFFFFFFFFE0001CE000E070000000000060038000071C00003800000000000000000000000180007FFFFFFFFFF0000EE000E0700000000000E0030000071800003800000000000000000000000180007000000000780007E000E030003FFFE000E00700000338000018000000000000000000000001C00038000000003C0003C000E038003FFFE000E007000003B800001C00000000000",
	mem_init0 => "0000000000001C0003C000000003E00018000E038003FFFC000C007000803B802001C000000000000000000000000E0001E00000000FC00000000E038001801C001C006000803B802001C000000000000000000000000E0000F00000003F000000000E018001C01C001C00E000803F002000C00000000000000000000000070000700000007C000000000E01C001C01C001C00E001801F003000E0000000000000000000000007800038000000F0000000000E01C001C038001800E001801F007000E0000000000000000000000003C0003C000001E0000000000E01C000E038003800C001C01F007000E0000000000000000000000001E0001E000003C003FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LABCELL_X11_Y54_N36
\CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\ = ( \CP|BGtranslator|Add1~1_sumout\ & ( \CP|BGtranslator|Add1~9_sumout\ & ( (\CP|BGtranslator|Add1~13_sumout\ & !\CP|BGtranslator|Add1~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CP|BGtranslator|ALT_INV_Add1~13_sumout\,
	datac => \CP|BGtranslator|ALT_INV_Add1~5_sumout\,
	datae => \CP|BGtranslator|ALT_INV_Add1~1_sumout\,
	dataf => \CP|BGtranslator|ALT_INV_Add1~9_sumout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\);

-- Location: M10K_X14_Y59_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFC0000FFFFE7FFFF000007FFFE003FFFF003F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LABCELL_X23_Y54_N48
\CP|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector0~1_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) 
-- & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)))) ) ) ) # ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & ( 
-- !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a17~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\,
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\,
	combout => \CP|Selector0~1_combout\);

-- Location: LABCELL_X23_Y54_N15
\CP|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector0~2_combout\ = ( \CP|Selector0~0_combout\ & ( \CP|Selector0~1_combout\ & ( ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(2))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\)))) # (\CP|Selector1~1_combout\) ) ) ) # ( !\CP|Selector0~0_combout\ & ( \CP|Selector0~1_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & 
-- (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(2))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (\CP|Selector1~0_combout\)) ) ) ) # ( 
-- \CP|Selector0~0_combout\ & ( !\CP|Selector0~1_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(2))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (!\CP|Selector1~0_combout\)) ) ) ) # ( !\CP|Selector0~0_combout\ & ( !\CP|Selector0~1_combout\ & ( (!\CP|Selector1~1_combout\ & 
-- ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(2))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w2_n1_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_Selector1~1_combout\,
	datab => \CP|ALT_INV_Selector1~0_combout\,
	datac => \CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w2_n1_mux_dataout~0_combout\,
	datae => \CP|ALT_INV_Selector0~0_combout\,
	dataf => \CP|ALT_INV_Selector0~1_combout\,
	combout => \CP|Selector0~2_combout\);

-- Location: LABCELL_X23_Y54_N54
\CP|color_from_CP[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|color_from_CP\(2) = ( \CP|currentState.resetState_124~combout\ & ( \CP|Selector0~2_combout\ & ( \CP|color_from_CP\(2) ) ) ) # ( !\CP|currentState.resetState_124~combout\ & ( \CP|Selector0~2_combout\ ) ) # ( \CP|currentState.resetState_124~combout\ & ( 
-- !\CP|Selector0~2_combout\ & ( \CP|color_from_CP\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_color_from_CP\(2),
	datae => \CP|ALT_INV_currentState.resetState_124~combout\,
	dataf => \CP|ALT_INV_Selector0~2_combout\,
	combout => \CP|color_from_CP\(2));

-- Location: LABCELL_X33_Y53_N21
\DP|x_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[0]~0_combout\ = ( \CP|BGC|out\(8) & ( \CP|cenable~combout\ & ( \KEY[0]~input_o\ ) ) ) # ( \CP|BGC|out\(8) & ( !\CP|cenable~combout\ & ( (\DP|Add0~13_sumout\ & \KEY[0]~input_o\) ) ) ) # ( !\CP|BGC|out\(8) & ( !\CP|cenable~combout\ & ( 
-- (\DP|Add0~13_sumout\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_out\(8),
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|x_out[0]~0_combout\);

-- Location: MLABCELL_X34_Y53_N24
\DP|x_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[1]~1_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & \CP|BGC|out\(9)) ) ) # ( !\CP|cenable~combout\ & ( (\KEY[0]~input_o\ & \DP|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \DP|ALT_INV_Add0~17_sumout\,
	datad => \CP|BGC|ALT_INV_out\(9),
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|x_out[1]~1_combout\);

-- Location: LABCELL_X33_Y53_N36
\DP|x_out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[2]~2_combout\ = ( \KEY[0]~input_o\ & ( \CP|cenable~combout\ & ( \CP|BGC|out\(10) ) ) ) # ( \KEY[0]~input_o\ & ( !\CP|cenable~combout\ & ( \DP|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALT_INV_Add0~21_sumout\,
	datac => \CP|BGC|ALT_INV_out\(10),
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|x_out[2]~2_combout\);

-- Location: LABCELL_X31_Y54_N39
\DP|x_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[3]~3_combout\ = ( \CP|BGC|out\(11) & ( (\KEY[0]~input_o\ & ((\DP|Add0~25_sumout\) # (\CP|cenable~combout\))) ) ) # ( !\CP|BGC|out\(11) & ( (!\CP|cenable~combout\ & (\DP|Add0~25_sumout\ & \KEY[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000001110000011100000010000000100000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_cenable~combout\,
	datab => \DP|ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \CP|BGC|ALT_INV_out\(11),
	combout => \DP|x_out[3]~3_combout\);

-- Location: LABCELL_X35_Y54_N18
\DP|x_out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[4]~4_combout\ = ( \CP|cenable~combout\ & ( (\KEY[0]~input_o\ & \CP|BGC|out\(12)) ) ) # ( !\CP|cenable~combout\ & ( (\KEY[0]~input_o\ & \DP|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|BGC|ALT_INV_out\(12),
	datac => \DP|ALT_INV_Add0~29_sumout\,
	dataf => \CP|ALT_INV_cenable~combout\,
	combout => \DP|x_out[4]~4_combout\);

-- Location: LABCELL_X33_Y54_N36
\DP|x_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DP|x_out[5]~5_combout\ = (\KEY[0]~input_o\ & ((!\CP|cenable~combout\ & (\DP|Add0~33_sumout\)) # (\CP|cenable~combout\ & ((\CP|BGC|out\(13))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \CP|ALT_INV_cenable~combout\,
	datac => \DP|ALT_INV_Add0~33_sumout\,
	datad => \CP|BGC|ALT_INV_out\(13),
	combout => \DP|x_out[5]~5_combout\);

-- Location: M10K_X26_Y54_N0
\VGA|VideoMemory|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000380070001C000E0180000000000000000000070000000000000000000000000000003800000000003800300018000E01800000000000000000000E0000000000000000000000000000003800000000003800380018000C01800000000000000000000E0000000000000000000000000000001C00000000003800380008001C01800000000000000000001E0000000000000000000000000000001E00000000003800380008001C01800000000000000000001C0000000000000000000000000000000F00000000003800180000001C01800000000000000000003800000000000000000000000000000007800000000038001C0000001801800000",
	mem_init2 => "000000000000007800000000000000000000000000000003C00000000038001C000000380180000000000000000000F000000000000000000000000000000001F00000000038001C000000380180000000000000000003E000000000000000000000000000000000FE0000000038001C00000038018000000000000000000FC0000000000000000000000000000000003FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000FFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFE0000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y54_N39
\VGA|VideoMemory|auto_generated|decode2|w_anode569w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (!\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~9_sumout\ & (\VGA|writeEn~2_combout\ & 
-- !\VGA|user_input_translator|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|ALT_INV_writeEn~2_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3));

-- Location: MLABCELL_X39_Y56_N39
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\(3) = (!\VGA|controller|controller_translator|Add1~9_sumout\ & (!\VGA|controller|controller_translator|Add1~1_sumout\ & (!\VGA|controller|controller_translator|Add1~5_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\(3));

-- Location: M10K_X38_Y47_N0
\VGA|VideoMemory|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X39_Y56_N34
\VGA|VideoMemory|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(0));

-- Location: FF_X40_Y56_N49
\VGA|VideoMemory|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(0));

-- Location: LABCELL_X37_Y54_N45
\VGA|VideoMemory|auto_generated|decode2|w_anode586w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~9_sumout\ & (\VGA|writeEn~2_combout\ & 
-- !\VGA|user_input_translator|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|ALT_INV_writeEn~2_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3));

-- Location: MLABCELL_X39_Y56_N54
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~13_sumout\ & (\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\);

-- Location: M10K_X41_Y52_N0
\VGA|VideoMemory|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y57_N54
\VGA|VideoMemory|auto_generated|decode2|w_anode606w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( !\VGA|user_input_translator|Add0~13_sumout\ & ( (\VGA|user_input_translator|Add0~9_sumout\ & (\VGA|user_input_translator|Add0~1_sumout\ & 
-- \VGA|writeEn~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datad => \VGA|ALT_INV_writeEn~2_combout\,
	datae => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3));

-- Location: LABCELL_X40_Y56_N36
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~9_sumout\ & (\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\);

-- Location: M10K_X38_Y59_N0
\VGA|VideoMemory|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "001C00030000FFFFFFFFFFC000000000000000001FFFFFFFFC0003F800381C00000000003800000C001C00030000FFFFFFFFFFC00000000000000000000000001E0001F800380C001FFFF8003800000C001C00038000E000000000000000000000000000000000000F0000F000380E000FFFF8003000000C001C000380007000000000000000000000000000000000001F80002000380E000FFFF0007000000C001C000380003800000000000000000000000000000000003F00000000380E000E0070007000000C001C0001C0003C0000000000000000000000000000000000F800000000380600070070007000000C001C0001E0001E000000000000000000",
	mem_init2 => "0000000000000001F000000000380700070060006000000C001C0000E0000F0000000000000000000000000000000003C0000000003807000700E000E000000C001C0000700007800000000000000000000000000000000780000000003807000300E000E000000C001C0000380003800000000000000000000000000000000F001FFFF8003807000380C000E000000C001C00003C0001C00000000000000000000000000000001E007FFFF8003803000381C000C000000C001C00001E0001E00000000000000000000000000000001C00F80038003803800381C001C000000C001C00000F0000F00000000000000000000000000000003800E0003800380380",
	mem_init1 => "01C1C001C000000C001C0000078000780000000000000000000000000000003801C000380038038001C38001C000000C001C0000038000380000000000000000000000000000007001C000380038018001C380018000000C001C000001C0001C0000000000000000000000000000007001800038003801C000C380038000000C001C000001E0000E0000000000000000000000000000007001800038003801C000E300038000000C001C000000F0000E0000000000000000000000000000006001800038003801C000E700038000000C001C0000007800060000000000000000000000000000006001800038003800C0006700038000000C001C000000380007",
	mem_init0 => "0000000000000000000000000000006001C00038003800E00076000301FFFFFC001FFFFFFFFC00070000000000000000000000000000006001E00038003800E0007E000701FFFFFC001FFFFFFFF800070000000000000000000000000000006000F80038003800E0007E000701FFFFFC001FFFFFFFF8000700000000000000000000000000000060007FFFF800380060003E000701800000000000000000000700000000000000000000000000000070003FFFF800380070003C0006018000000000000000000007000000000000000000000000000000700003FFF800380070003C000E01800000000000000000000700000000000000000000000000000070",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: FF_X39_Y56_N25
\VGA|VideoMemory|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|controller_translator|Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(1));

-- Location: FF_X40_Y56_N5
\VGA|VideoMemory|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(1));

-- Location: LABCELL_X37_Y55_N15
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\ & 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ 
-- & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\);

-- Location: FF_X39_Y56_N28
\VGA|VideoMemory|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|controller_translator|Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(2));

-- Location: FF_X40_Y56_N10
\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\);

-- Location: FF_X39_Y56_N31
\VGA|VideoMemory|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|controller_translator|Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(3));

-- Location: FF_X40_Y56_N16
\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y57_N15
\VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\ = ( !\VGA|user_input_translator|Add0~9_sumout\ & ( !\VGA|user_input_translator|Add0~13_sumout\ & ( (!\VGA|user_input_translator|Add0~1_sumout\ & (\VGA|user_input_translator|Add0~5_sumout\ & 
-- \VGA|writeEn~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	datac => \VGA|ALT_INV_writeEn~2_combout\,
	datae => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\);

-- Location: MLABCELL_X39_Y56_N36
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\(3) = ( \VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\(3));

-- Location: M10K_X41_Y57_N0
\VGA|VideoMemory|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y54_N57
\VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\ = ( \VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~9_sumout\ & (!\VGA|user_input_translator|Add0~13_sumout\ & 
-- \VGA|writeEn~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	datad => \VGA|ALT_INV_writeEn~2_combout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\);

-- Location: LABCELL_X40_Y56_N39
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w\(3) = ( \VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~1_sumout\ & (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w\(3));

-- Location: M10K_X14_Y53_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: MLABCELL_X25_Y53_N51
\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ & !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a[2]~DUPLICATE_q\ & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & \CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100010001000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a[2]~DUPLICATE_q\,
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\);

-- Location: M10K_X14_Y55_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y54_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "001C00030000FFFFFFFFFFC000000000000000001FFFFFFFFC0003F800381C00000000003800000C001C00030000FFFFFFFFFFC00000000000000000000000001E0001F800380C001FFFF8003800000C001C00038000E000000000000000000000000000000000000F0000F000380E000FFFF8003000000C001C000380007000000000000000000000000000000000001F80002000380E000FFFF0007000000C001C000380003800000000000000000000000000000000003F00000000380E000E0070007000000C001C0001C0003C0000000000000000000000000000000000F800000000380600070070007000000C001C0001E0001E000000000000000000",
	mem_init2 => "0000000000000001F000000000380700070060006000000C001C0000E0000F0000000000000000000000000000000003C0000000003807000700E000E000000C001C0000700007000000000000000000000000000000000780000000003807000300E000E000000C001C0000380003800000000000000000000000000000000E001FFFF8003803000380C000E000000C001C00003C0001C00000000000000000000000000000001E007FFFF8003803000381C000C000000C001C00001E0001E00000000000000000000000000000001C00F80038003803800181C001C000000C001C00000F0000F00000000000000000000000000000003800E0003800380380",
	mem_init1 => "01C1C001C000000C001C0000078000780000000000000000000000000000003801C000380038038001C38001C000000C001C0000038000380000000000000000000000000000007001C000380038018001C380018000000C001C000001C0001C0000000000000000000000000000007001800038003801C000C380018000000C001C000000E0000E0000000000000000000000000000007001800038003801C000E300038000000C001C000000F0000E0000000000000000000000000000006001800038003801C000E700038000000C001C0000007800060000000000000000000000000000006001800038003800C0006700038000000C001C000000380007",
	mem_init0 => "0000000000000000000000000000006001C00038003800E00076000301FFFFFC001FFFFFFFFC00070000000000000000000000000000006001E00038003800E0007E000701FFFFFC001FFFFFFFF800070000000000000000000000000000006000F80038003800E0007E000701FFFFFC001FFFFFFFF8000700000000000000000000000000000060007FFFF800380060003E000701800000000000000000000700000000000000000000000000000070003FFFF800380070003C0006018000000000000000000007000000000000000000000000000000700003FFF800380070003C000E01800000000000000000000700000000000000000000000000000070",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y56_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000380070001C000E0180000000000000000000070000000000000000000000000000003800000000003800300018000E01800000000000000000000E0000000000000000000000000000003800000000003800380018000C01800000000000000000000E0000000000000000000000000000001C00000000003800380008001C01800000000000000000001E0000000000000000000000000000001E00000000003800380008001C01800000000000000000001C0000000000000000000000000000000E00000000003800180000001C01800000000000000000003800000000000000000000000000000007800000000038001C0000001801800000",
	mem_init2 => "000000000000007800000000000000000000000000000003C00000000038001C000000380180000000000000000000F000000000000000000000000000000001F00000000038001C000000380180000000000000000003E000000000000000000000000000000000FE0000000038000C00000038018000000000000000000FC0000000000000000000000000000000003FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000FFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFE0000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y57_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: MLABCELL_X15_Y54_N36
\CP|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector1~2_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0)) # ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0)) # ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & ( 
-- !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ( (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a4~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a10~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \CP|Selector1~2_combout\);

-- Location: M10K_X5_Y55_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFC0000FFFFE7FFFF000007FFFE003FFFF003F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M10K_X5_Y52_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FE000E00C000E038003801C001C01E00700060000000000000000000000000E0000F000007800FFFFE000E00E000E030003801C001C00E00700070000000000000000000000000700007800007001FFFFE000E00E0006070003001C003C00E0078007000000000000000000000000038000380000E003C000E000E00E00070700070018003E00E00F800700000000000000000000000003C0001C0000E0078000E000E00600070700070038003E00E00F800300000000000000000000000001E0000E0001C0070000E000E00700070E00070038003E00C00F800380000000000000000000000000F0000E0001C0060000E000E00700038E00060038007E00400",
	mem_init2 => "FC003800000000000000000000000007800070001C0060000E000E00700038E00060030007600401DC00380000000000000000000000000380007000180060000E000E00300038C000E0030007700401DC001800000000000000000000000001C0003000180060000E000E00380019C000E0070006700001CC001C00000000000000000000000001E0003800180070000E000E0038001DC000E0070006700001CC001C0000000000000000001FFFFFFFE0003800180078000E000E0038001D8000C007000E3000018E001C0000000000000000001FFFFFFFC000380018003C000E000E0038000F8001C006000E3800038E000C0000000000000000001C000000",
	mem_init1 => "0000380018001FFFFE000E0018000F8001C00E000E3800038E000C0000000000000000001C000000000038001C000FFFFE000E001C000F8001C00E000C38000386000E0000000000000000001C000000000038001C0003FFFE000E001C000F0001800E001C18000307000E0000000000000000001C000000000030001C00000000000E001C00070003800C001C18000307000E0000000000000000001C000000000070000E00000000000E000C00070003801C001C1C00070700060000000000000000001C000000000070000E00000000000E000E00060003801C00181C00070700070000000000000000001C000000000070000700000000000E000E000200",
	mem_init0 => "03001C00181C00070300070000000000000000001C0000000000E0000700000000000E000E00020007001800380C00060380070000000000000000001C0000000001C0000380000000000E000600000007003800380E000E0380030000000000000000001C0000000003C00001C0000000000E000700000007003800380E000E0380038000000000000000001C0000000007800001F0000000000E000700000006003800300E000E0180038000000000000000001C000000000F000000F8000000000E00070000000E0030007006000C01C0038000000000000000001C000000003E0000003F000000000E00030000000E0070007006000C01C0018000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M10K_X5_Y51_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000001FFFFFFFFFFC0000001FFFFFFFFFFE0003FFFFFFFE007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFFF000000007FFFFFFFFFE0003FFFFFFFC007FFFE007FFFC01FFFFC000000000000000001FFFFFFFFF80000000007FFFFFFFFE0003FFFFFFFC007FFFE007FFFC00FFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFC00003FFFF1FFFFC00001FFFF80000FFFFC0000001FFFFFFFFFFFC000000000000000001FFFFFFFFF80003FFFF9FFFFC00003FFFF80000FFFFC000001FFFFFFFFFFFFC000000000000000001FFFFFFFFFC0003FFFF8FFFFC00003FFFF80000FFFFC000007FFFFFFFFFFFFC000000000000000001C00000003E000380038C000E00003800300000C001C00000FC00000000000C000000000000000001C00000000F000380038E000E00003000700000C001C00001E000000",
	mem_init1 => "000000C000000000000000001C000000007800380038E000E00007000700000C001C00003C000000000000C000000000000000001C000000003C00380038E000E00007000700000C001C000078000000000000C000000000000000001C000000001E003800386000600007000600000C001C0000F0000000000000C000000000000000001C000000000F0038003870007FFFFE000600000C001C0000E0000000000000C000000000000000001C00000000078038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C0000000003C038003870003FFFFE000E00000C001C0001C0000000000000C000000000000000001C000000",
	mem_init0 => "0001E03800383000000000000E00000C001C000380000000000000C000000000000000001C0000000000F03800383800000000000C00000C001C000380000000000000C000000000000000001C0000000000783800383800000000001C00000C001C000380000000000000C000000000000000001C00000000003C3800383800000000001C00000C001C000300000000000000C000000000000000001C00000000001E3800381800000000001C00000C001C000300000000000000C000000000000000001FFFFFFFF0000F3800381C00000000001800000C001C000300007FFFFFFFFFC000000000000000001FFFFFFFF80007B800381C00000000003800000C",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y49_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFF8000000000000000000000000001FFFFFFFFFFFFFE0000FFFFE3FFFF00000FFFFE007FFFF803FFFF8000000000000000000000000007F000000000000F0000E000E3800380000E000E00700038038001C00000000000000000000000000F800000000000038000E000E3800380000E000C00700038038001C00000000000000000000000001E00000000000001E000E000E3800380000C001C00600018030001C00000000000000000000000003C00000000000000E000E000E1800180001C001C00E00018070000C000000000000000000000000078000000000000007000E000E1C001C0001C001C00E0001C070000E0000000000000000000000000700",
	mem_init2 => "00000000000003800E000E1C001FFFFFC001800E0001C070000E0000000000000000000000000E0000000000000001C00E000E1C001FFFFF8001800C0001C060000E0000000000000000000000000E0000000000000000E00E000E0C000FFFFF8003801C0000C0E000060000000000000000000000001C0000000000000000700E000E0E000000000003801C0000E0E000070000000000000000000000001C0000000000000000380E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000001C0E000E0E000000000003001C0000E0E000070000000000000000000000001800000000000000000E0E000E0E00000000",
	mem_init1 => "00070018000060C00003000000000000000000000000180000000000000000070E000E060000000000070038000061C00003800000000000000000000000180001FFFFFFFFF800038E000E070000000000070038000071C00003800000000000000000000000180007FFFFFFFFFE0001CE000E070000000000060038000071C00003800000000000000000000000180007FFFFFFFFFF0000EE000E0700000000000E0030000071800003800000000000000000000000180007000000000780007E000E030003FFFE000E00700000338000018000000000000000000000001C00038000000003C0003C000E038003FFFE000E007000003B800001C00000000000",
	mem_init0 => "0000000000001C0003C000000003E00018000E038003FFFC000C007000803B802001C000000000000000000000000E0001E00000000FC00000000E038001801C001C006000803B802001C000000000000000000000000E0000E00000003F000000000E018001C01C001C00E000803F002000C00000000000000000000000070000700000007C000000000E01C001C01C001C00E001801F003000E0000000000000000000000007800038000000F0000000000E01C001C018001800E001801F007000E0000000000000000000000003C0003C000001E0000000000E01C000C038003800C001C01F007000E0000000000000000000000001E0001E000003C003FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LABCELL_X24_Y54_N24
\CP|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector1~3_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0)) 
-- # ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & ( 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a22~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\,
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\,
	combout => \CP|Selector1~3_combout\);

-- Location: LABCELL_X24_Y54_N15
\CP|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector1~4_combout\ = ( \CP|Selector1~2_combout\ & ( \CP|Selector1~3_combout\ & ( ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(1))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\)))) # (\CP|Selector1~1_combout\) ) ) ) # ( !\CP|Selector1~2_combout\ & ( \CP|Selector1~3_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & 
-- (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(1))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (((\CP|Selector1~0_combout\)))) ) ) ) # ( 
-- \CP|Selector1~2_combout\ & ( !\CP|Selector1~3_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(1))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (((!\CP|Selector1~0_combout\)))) ) ) ) # ( !\CP|Selector1~2_combout\ & ( !\CP|Selector1~3_combout\ & ( (!\CP|Selector1~1_combout\ & 
-- ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(1))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w1_n1_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \CP|ALT_INV_Selector1~1_combout\,
	datac => \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w1_n1_mux_dataout~0_combout\,
	datad => \CP|ALT_INV_Selector1~0_combout\,
	datae => \CP|ALT_INV_Selector1~2_combout\,
	dataf => \CP|ALT_INV_Selector1~3_combout\,
	combout => \CP|Selector1~4_combout\);

-- Location: LABCELL_X24_Y54_N57
\CP|color_from_CP[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|color_from_CP\(1) = ( \CP|color_from_CP\(1) & ( \CP|Selector1~4_combout\ ) ) # ( !\CP|color_from_CP\(1) & ( \CP|Selector1~4_combout\ & ( !\CP|currentState.resetState_124~combout\ ) ) ) # ( \CP|color_from_CP\(1) & ( !\CP|Selector1~4_combout\ & ( 
-- \CP|currentState.resetState_124~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CP|ALT_INV_currentState.resetState_124~combout\,
	datae => \CP|ALT_INV_color_from_CP\(1),
	dataf => \CP|ALT_INV_Selector1~4_combout\,
	combout => \CP|color_from_CP\(1));

-- Location: M10K_X38_Y54_N0
\VGA|VideoMemory|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N45
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\ = (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X37_Y54_N54
\VGA|VideoMemory|auto_generated|decode2|w_anode616w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3) = ( \VGA|writeEn~2_combout\ & ( (!\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~9_sumout\ & (!\VGA|user_input_translator|Add0~5_sumout\ & 
-- \VGA|user_input_translator|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	datad => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	dataf => \VGA|ALT_INV_writeEn~2_combout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3));

-- Location: MLABCELL_X39_Y56_N51
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\);

-- Location: M10K_X41_Y54_N0
\VGA|VideoMemory|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000001FFFFFFFFFFC0000001FFFFFFFFFFE0003FFFFFFFE007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFFF000000007FFFFFFFFFE0003FFFFFFFC007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFF8000000000FFFFFFFFFE0003FFFFFFFC007FFFE007FFFC00FFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFC00003FFFF1FFFFC00001FFFF80000FFFFC0000001FFFFFFFFFFFC000000000000000001FFFFFFFFF80003FFFF9FFFFC00003FFFF80000FFFFC000001FFFFFFFFFFFFC000000000000000001FFFFFFFFFC0003FFFF9FFFFC00003FFFF80000FFFFC000007FFFFFFFFFFFFC000000000000000001C00000003E000380038C000E00003800300000C001C00000FC00000000000C000000000000000001C00000000F000380038E000E00003000700000C001C00001E000000",
	mem_init1 => "000000C000000000000000001C000000007800380038E000E00007000700000C001C00003C000000000000C000000000000000001C000000003C00380038E000E00007000700000C001C000078000000000000C000000000000000001C000000001E003800386000600007000600000C001C0000F0000000000000C000000000000000001C000000000F0038003870007FFFFE000E00000C001C0000E0000000000000C000000000000000001C00000000078038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C0000000003C038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C000000",
	mem_init0 => "0001E03800383000000000000E00000C001C000380000000000000C000000000000000001C0000000000F03800383800000000000C00000C001C000380000000000000C000000000000000001C0000000000783800383800000000001C00000C001C000380000000000000C000000000000000001C00000000003C3800383800000000001C00000C001C000300000000000000C000000000000000001C00000000001E3800381800000000001C00000C001C000300000000000000C000000000000000001FFFFFFFF0000F3800381C00000000001800000C001C000300007FFFFFFFFFC000000000000000001FFFFFFFF80007B800381C00000000003800000C",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y54_N36
\VGA|VideoMemory|auto_generated|decode2|w_anode626w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~1_sumout\ & (!\VGA|user_input_translator|Add0~9_sumout\ & (\VGA|user_input_translator|Add0~13_sumout\ & 
-- \VGA|writeEn~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	datad => \VGA|ALT_INV_writeEn~2_combout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3));

-- Location: MLABCELL_X39_Y56_N42
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & (\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\);

-- Location: M10K_X38_Y53_N0
\VGA|VideoMemory|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FE000E00C000E038003801C001C01E00700060000000000000000000000000F0000F000007800FFFFE000E00E000E030003801C003C00E00700070000000000000000000000000700007800007001FFFFE000E00E0006070003001C003C00E0078007000000000000000000000000038000380000E003C000E000E00E00070700070018003E00E00F800700000000000000000000000003C0001C0000E0078000E000E00600070700070038003E00E00F800300000000000000000000000001E0000E0001C0070000E000E00700070E00070038003E00C00F800380000000000000000000000000F0000E0001C0060000E000E00700038E00060038007E00400",
	mem_init2 => "FC003800000000000000000000000007800070001C0060000E000E00700038E000E0038007600401DC00380000000000000000000000000380007000180060000E000E00300038C000E0070007700401DC001800000000000000000000000001C0003000180060000E000E00380019C000E0070006700001DC001C00000000000000000000000001E0003800180070000E000E0038001DC000E0070006700001CC001C0000000000000000001FFFFFFFE0003800180078000E000E0038001D8000C007000E3000018E001C0000000000000000001FFFFFFFC000380018003C000E000E0038000F8001C006000E3800038E000C0000000000000000001C000000",
	mem_init1 => "0000380018001FFFFE000E0018000F8001C00E000E3800038E000E0000000000000000001C000000000038001C000FFFFE000E001C000F8001C00E000C38000386000E0000000000000000001C000000000038001C0003FFFE000E001C000F0001800E001C18000307000E0000000000000000001C000000000030001C00000000000E001C00070003800C001C18000707000E0000000000000000001C000000000070000E00000000000E000C00070003801C001C1C00070700060000000000000000001C000000000070000E00000000000E000E00060003801C00181C00070700070000000000000000001C000000000070000700000000000E000E000200",
	mem_init0 => "03001C00181C00070300070000000000000000001C0000000000E0000700000000000E000E00020007001800380C00060380070000000000000000001C0000000001E0000380000000000E000600000007003800380E000E0380030000000000000000001C0000000003C00003C0000000000E000700000007003800380E000E0380038000000000000000001C0000000007800001F0000000000E000700000006003800300E000E0180038000000000000000001C000000000F000000F8000000000E00070000000E0030007006000C01C0038000000000000000001C000000003E0000003F000000000E00030000000E0070007006000C01C0018000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y54_N51
\VGA|VideoMemory|auto_generated|decode2|w_anode636w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~9_sumout\ & (!\VGA|user_input_translator|Add0~1_sumout\ & (\VGA|user_input_translator|Add0~13_sumout\ & 
-- \VGA|writeEn~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	datad => \VGA|ALT_INV_writeEn~2_combout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3));

-- Location: MLABCELL_X39_Y56_N45
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~9_sumout\ & (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\);

-- Location: M10K_X41_Y58_N0
\VGA|VideoMemory|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFF8000000000000000000000000001FFFFFFFFFFFFFE0000FFFFE3FFFF00000FFFFE007FFFF803FFFF8000000000000000000000000007F000000000000F8000E000E3800380000E000E00700038038001C00000000000000000000000000F80000000000003C000E000E3800380000E000C00700038038001C00000000000000000000000001E00000000000001E000E000E3800380000C001C00600038030001C00000000000000000000000003C00000000000000F000E000E1800180001C001C00E00018070000C000000000000000000000000078000000000000007800E000E1C001C0001C001C00E0001C070000E0000000000000000000000000700",
	mem_init2 => "00000000000003C00E000E1C001FFFFFC001800E0001C070000E0000000000000000000000000E0000000000000001E00E000E1C001FFFFF8003800C0001C060000E0000000000000000000000000E0000000000000000F00E000E0C000FFFFF8003801C0000C0E000060000000000000000000000001C0000000000000000780E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000003C0E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000001E0E000E0E000000000003001C0000E0E000070000000000000000000000001800000000000000000F0E000E0E00000000",
	mem_init1 => "000700180000E0C00003000000000000000000000000180000000000000000070E000E060000000000070038000061C00003800000000000000000000000180001FFFFFFFFF80003CE000E070000000000070038000071C00003800000000000000000000000180007FFFFFFFFFE0001CE000E070000000000060038000071C00003800000000000000000000000180007FFFFFFFFFF0000EE000E0700000000000E0030000071800003800000000000000000000000180007000000000780007E000E030003FFFE000E00700000338000018000000000000000000000001C00038000000003C0003C000E038003FFFE000E007000003B800001C00000000000",
	mem_init0 => "0000000000001C0003C000000003E00018000E038003FFFC000C007000803B802001C000000000000000000000000E0001E00000000FC00000000E038001801C001C006000803B802001C000000000000000000000000E0000F00000003F000000000E018001C01C001C00E000803F002000C00000000000000000000000070000700000007C000000000E01C001C01C001C00E001801F003000E0000000000000000000000007800038000000F0000000000E01C001C038001800E001801F007000E0000000000000000000000003C0003C000001E0000000000E01C000E038003800C001C01F007000E0000000000000000000000001E0001E000003C003FF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y54_N42
\VGA|VideoMemory|auto_generated|decode2|w_anode646w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3) = ( !\VGA|user_input_translator|Add0~5_sumout\ & ( (\VGA|user_input_translator|Add0~1_sumout\ & (\VGA|user_input_translator|Add0~9_sumout\ & (\VGA|writeEn~2_combout\ & 
-- \VGA|user_input_translator|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|ALT_INV_Add0~1_sumout\,
	datab => \VGA|user_input_translator|ALT_INV_Add0~9_sumout\,
	datac => \VGA|ALT_INV_writeEn~2_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add0~13_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add0~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3));

-- Location: MLABCELL_X39_Y56_N48
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~9_sumout\ & (\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\);

-- Location: M10K_X38_Y50_N0
\VGA|VideoMemory|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFC0000FFFFE7FFFF000007FFFE003FFFF003F",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y57_N24
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ & ( 
-- (\VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\))) ) ) ) # ( 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X37_Y57_N42
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ & ((\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\) # (\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\ & 
-- ((!\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ & (\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\))))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\ & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ & ( (\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ & 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\)) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- !\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b[2]~DUPLICATE_q\ & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b[3]~DUPLICATE_q\ & ((\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100000001110000011111000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[2]~DUPLICATE_q\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b[3]~DUPLICATE_q\,
	datad => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\);

-- Location: M10K_X38_Y51_N0
\VGA|VideoMemory|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y46_N0
\VGA|VideoMemory|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M10K_X26_Y55_N0
\VGA|VideoMemory|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000380070001C000E0180000000000000000000070000000000000000000000000000003800000000003800300018000E01800000000000000000000E0000000000000000000000000000003800000000003800380018000C01800000000000000000000E0000000000000000000000000000001C00000000003800380008001C01800000000000000000001E0000000000000000000000000000001E00000000003800380008001C01800000000000000000001C0000000000000000000000000000000E00000000003800180000001C01800000000000000000003800000000000000000000000000000007800000000038001C0000001801800000",
	mem_init2 => "000000000000007800000000000000000000000000000003C00000000038001C000000380180000000000000000000F000000000000000000000000000000001F00000000038001C000000380180000000000000000003E000000000000000000000000000000000FE0000000038000C00000038018000000000000000000FC0000000000000000000000000000000003FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000FFFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000FFFFFFFFF8000FFFFFFFF001FFFFFFFFFFFFFFFFFFE0000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y59_N0
\VGA|VideoMemory|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "001C00030000FFFFFFFFFFC000000000000000001FFFFFFFFC0003F800381C00000000003800000C001C00030000FFFFFFFFFFC00000000000000000000000001E0001F800380C001FFFF8003800000C001C00038000E000000000000000000000000000000000000F0000F000380E000FFFF8003000000C001C000380007000000000000000000000000000000000001F80002000380E000FFFF0007000000C001C000380003800000000000000000000000000000000003F00000000380E000E0070007000000C001C0001C0003C0000000000000000000000000000000000F800000000380600070070007000000C001C0001E0001E000000000000000000",
	mem_init2 => "0000000000000001F000000000380700070060006000000C001C0000E0000F0000000000000000000000000000000003C0000000003807000700E000E000000C001C0000700007000000000000000000000000000000000780000000003807000300E000E000000C001C0000380003800000000000000000000000000000000E001FFFF8003803000380C000E000000C001C00003C0001C00000000000000000000000000000001E007FFFF8003803000381C000C000000C001C00001E0001E00000000000000000000000000000001C00F80038003803800181C001C000000C001C00000F0000F00000000000000000000000000000003800E0003800380380",
	mem_init1 => "01C1C001C000000C001C0000078000780000000000000000000000000000003801C000380038038001C38001C000000C001C0000038000380000000000000000000000000000007001C000380038018001C380018000000C001C000001C0001C0000000000000000000000000000007001800038003801C000C380018000000C001C000000E0000E0000000000000000000000000000007001800038003801C000E300038000000C001C000000F0000E0000000000000000000000000000006001800038003801C000E700038000000C001C0000007800060000000000000000000000000000006001800038003800C0006700038000000C001C000000380007",
	mem_init0 => "0000000000000000000000000000006001C00038003800E00076000301FFFFFC001FFFFFFFFC00070000000000000000000000000000006001E00038003800E0007E000701FFFFFC001FFFFFFFF800070000000000000000000000000000006000F80038003800E0007E000701FFFFFC001FFFFFFFF8000700000000000000000000000000000060007FFFF800380060003E000701800000000000000000000700000000000000000000000000000070003FFFF800380070003C0006018000000000000000000007000000000000000000000000000000700003FFF800380070003C000E01800000000000000000000700000000000000000000000000000070",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N24
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\) 
-- # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\)) ) ) ) # ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\);

-- Location: FF_X40_Y56_N11
\VGA|VideoMemory|auto_generated|out_address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(2));

-- Location: M10K_X38_Y52_N0
\VGA|VideoMemory|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000001FFFFFFFFFFC0000001FFFFFFFFFFE0003FFFFFFFE007FFFF007FFFC01FFFFC000000000000000001FFFFFFFFFF000000007FFFFFFFFFE0003FFFFFFFC007FFFE007FFFC01FFFFC000000000000000001FFFFFFFFF80000000007FFFFFFFFE0003FFFFFFFC007FFFE007FFFC00FFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFC00003FFFF1FFFFC00001FFFF80000FFFFC0000001FFFFFFFFFFFC000000000000000001FFFFFFFFF80003FFFF9FFFFC00003FFFF80000FFFFC000001FFFFFFFFFFFFC000000000000000001FFFFFFFFFC0003FFFF8FFFFC00003FFFF80000FFFFC000007FFFFFFFFFFFFC000000000000000001C00000003E000380038C000E00003800300000C001C00000FC00000000000C000000000000000001C00000000F000380038E000E00003000700000C001C00001E000000",
	mem_init1 => "000000C000000000000000001C000000007800380038E000E00007000700000C001C00003C000000000000C000000000000000001C000000003C00380038E000E00007000700000C001C000078000000000000C000000000000000001C000000001E003800386000600007000600000C001C0000F0000000000000C000000000000000001C000000000F0038003870007FFFFE000600000C001C0000E0000000000000C000000000000000001C00000000078038003870007FFFFE000E00000C001C0001C0000000000000C000000000000000001C0000000003C038003870003FFFFE000E00000C001C0001C0000000000000C000000000000000001C000000",
	mem_init0 => "0001E03800383000000000000E00000C001C000380000000000000C000000000000000001C0000000000F03800383800000000000C00000C001C000380000000000000C000000000000000001C0000000000783800383800000000001C00000C001C000380000000000000C000000000000000001C00000000003C3800383800000000001C00000C001C000300000000000000C000000000000000001C00000000001E3800381800000000001C00000C001C000300000000000000C000000000000000001FFFFFFFF0000F3800381C00000000001800000C001C000300007FFFFFFFFFC000000000000000001FFFFFFFF80007B800381C00000000003800000C",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y56_N0
\VGA|VideoMemory|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFF8000000000000000000000000001FFFFFFFFFFFFFE0000FFFFE3FFFF00000FFFFE007FFFF803FFFF8000000000000000000000000007F000000000000F0000E000E3800380000E000E00700038038001C00000000000000000000000000F800000000000038000E000E3800380000E000C00700038038001C00000000000000000000000001E00000000000001E000E000E3800380000C001C00600018030001C00000000000000000000000003C00000000000000E000E000E1800180001C001C00E00018070000C000000000000000000000000078000000000000007000E000E1C001C0001C001C00E0001C070000E0000000000000000000000000700",
	mem_init2 => "00000000000003800E000E1C001FFFFFC001800E0001C070000E0000000000000000000000000E0000000000000001C00E000E1C001FFFFF8001800C0001C060000E0000000000000000000000000E0000000000000000E00E000E0C000FFFFF8003801C0000C0E000060000000000000000000000001C0000000000000000700E000E0E000000000003801C0000E0E000070000000000000000000000001C0000000000000000380E000E0E000000000003801C0000E0E000070000000000000000000000001C00000000000000001C0E000E0E000000000003001C0000E0E000070000000000000000000000001800000000000000000E0E000E0E00000000",
	mem_init1 => "00070018000060C00003000000000000000000000000180000000000000000070E000E060000000000070038000061C00003800000000000000000000000180001FFFFFFFFF800038E000E070000000000070038000071C00003800000000000000000000000180007FFFFFFFFFE0001CE000E070000000000060038000071C00003800000000000000000000000180007FFFFFFFFFF0000EE000E0700000000000E0030000071800003800000000000000000000000180007000000000780007E000E030003FFFE000E00700000338000018000000000000000000000001C00038000000003C0003C000E038003FFFE000E007000003B800001C00000000000",
	mem_init0 => "0000000000001C0003C000000003E00018000E038003FFFC000C007000803B802001C000000000000000000000000E0001E00000000FC00000000E038001801C001C006000803B802001C000000000000000000000000E0000E00000003F000000000E018001C01C001C00E000803F002000C00000000000000000000000070000700000007C000000000E01C001C01C001C00E001801F003000E0000000000000000000000007800038000000F0000000000E01C001C018001800E001801F007000E0000000000000000000000003C0003C000001E0000000000E01C000C038003800C001C01F007000E0000000000000000000000001E0001E000003C003FF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y49_N0
\VGA|VideoMemory|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FE000E00C000E038003801C001C01E00700060000000000000000000000000E0000F000007800FFFFE000E00E000E030003801C001C00E00700070000000000000000000000000700007800007001FFFFE000E00E0006070003001C003C00E0078007000000000000000000000000038000380000E003C000E000E00E00070700070018003E00E00F800700000000000000000000000003C0001C0000E0078000E000E00600070700070038003E00E00F800300000000000000000000000001E0000E0001C0070000E000E00700070E00070038003E00C00F800380000000000000000000000000F0000E0001C0060000E000E00700038E00060038007E00400",
	mem_init2 => "FC003800000000000000000000000007800070001C0060000E000E00700038E00060030007600401DC00380000000000000000000000000380007000180060000E000E00300038C000E0030007700401DC001800000000000000000000000001C0003000180060000E000E00380019C000E0070006700001CC001C00000000000000000000000001E0003800180070000E000E0038001DC000E0070006700001CC001C0000000000000000001FFFFFFFE0003800180078000E000E0038001D8000C007000E3000018E001C0000000000000000001FFFFFFFC000380018003C000E000E0038000F8001C006000E3800038E000C0000000000000000001C000000",
	mem_init1 => "0000380018001FFFFE000E0018000F8001C00E000E3800038E000C0000000000000000001C000000000038001C000FFFFE000E001C000F8001C00E000C38000386000E0000000000000000001C000000000038001C0003FFFE000E001C000F0001800E001C18000307000E0000000000000000001C000000000030001C00000000000E001C00070003800C001C18000307000E0000000000000000001C000000000070000E00000000000E000C00070003801C001C1C00070700060000000000000000001C000000000070000E00000000000E000E00060003801C00181C00070700070000000000000000001C000000000070000700000000000E000E000200",
	mem_init0 => "03001C00181C00070300070000000000000000001C0000000000E0000700000000000E000E00020007001800380C00060380070000000000000000001C0000000001C0000380000000000E000600000007003800380E000E0380030000000000000000001C0000000003C00001C0000000000E000700000007003800380E000E0380038000000000000000001C0000000007800001F0000000000E000700000006003800300E000E0180038000000000000000001C000000000F000000F8000000000E00070000000E0030007006000C01C0038000000000000000001C000000003E0000003F000000000E00030000000E0070007006000C01C0018000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y48_N0
\VGA|VideoMemory|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFC0000FFFFE7FFFF000007FFFE003FFFF003F",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N18
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ & ( 
-- (\VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\))) ) ) ) # ( 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\);

-- Location: FF_X40_Y56_N17
\VGA|VideoMemory|auto_generated|out_address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(3));

-- Location: M10K_X38_Y60_N0
\VGA|VideoMemory|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N30
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(0) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ & 
-- ( !\VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y56_N12
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\))))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (((\VGA|VideoMemory|auto_generated|out_address_reg_b\(3))) # (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- (((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(3))))) ) ) ) # ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- !\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\))))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111110011000100011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2),
	datac => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\);

-- Location: M10K_X26_Y56_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode849w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y52_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode838w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LABCELL_X24_Y54_N9
\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(2) & !\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000010000000100000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(2),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\,
	combout => \CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\);

-- Location: M10K_X26_Y48_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode798w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y51_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode828w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y50_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode818w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M10K_X5_Y49_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode808w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LABCELL_X23_Y54_N27
\CP|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector4~1_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) # ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & ( 
-- \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)) # 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\)) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1)))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) ) ) ) # ( 
-- !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\,
	combout => \CP|Selector4~1_combout\);

-- Location: M10K_X26_Y49_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode788w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M10K_X26_Y57_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode768w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X14_Y58_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode751w\(3),
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X5_Y50_N0
\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "controlPath:CP|BG:bg_reg|altsyncram:altsyncram_component|altsyncram_s8o1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	ena0 => \CP|bg_reg|altsyncram_component|auto_generated|rden_decode|w_anode778w[3]~0_combout\,
	portadatain => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LABCELL_X23_Y54_N33
\CP|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector4~0_combout\ = ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & ( (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))) ) ) ) # ( \CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & ( 
-- (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & (!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))) ) ) ) # ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ( !\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & ( 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(0) & ((!\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & ((\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # 
-- (\CP|bg_reg|altsyncram_component|auto_generated|address_reg_a\(1) & (\CP|bg_reg|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(0),
	datab => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	datac => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	datad => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datae => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \CP|bg_reg|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	combout => \CP|Selector4~0_combout\);

-- Location: LABCELL_X23_Y54_N21
\CP|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|Selector4~2_combout\ = ( \CP|Selector4~1_combout\ & ( \CP|Selector4~0_combout\ & ( ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(0))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\)))) # (\CP|Selector1~1_combout\) ) ) ) # ( !\CP|Selector4~1_combout\ & ( \CP|Selector4~0_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & 
-- (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(0))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (!\CP|Selector1~0_combout\)) ) ) ) # ( 
-- \CP|Selector4~1_combout\ & ( !\CP|Selector4~0_combout\ & ( (!\CP|Selector1~1_combout\ & ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(0))) # (\CP|Selector1~0_combout\ & 
-- ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\))))) # (\CP|Selector1~1_combout\ & (\CP|Selector1~0_combout\)) ) ) ) # ( !\CP|Selector4~1_combout\ & ( !\CP|Selector4~0_combout\ & ( (!\CP|Selector1~1_combout\ & 
-- ((!\CP|Selector1~0_combout\ & (\CP|robot_reg|altsyncram_component|auto_generated|q_a\(0))) # (\CP|Selector1~0_combout\ & ((\CP|bg_reg|altsyncram_component|auto_generated|mux2|l3_w0_n1_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CP|ALT_INV_Selector1~1_combout\,
	datab => \CP|ALT_INV_Selector1~0_combout\,
	datac => \CP|robot_reg|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \CP|bg_reg|altsyncram_component|auto_generated|mux2|ALT_INV_l3_w0_n1_mux_dataout~0_combout\,
	datae => \CP|ALT_INV_Selector4~1_combout\,
	dataf => \CP|ALT_INV_Selector4~0_combout\,
	combout => \CP|Selector4~2_combout\);

-- Location: LABCELL_X23_Y54_N36
\CP|color_from_CP[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CP|color_from_CP\(0) = ( \CP|color_from_CP\(0) & ( \CP|Selector4~2_combout\ ) ) # ( !\CP|color_from_CP\(0) & ( \CP|Selector4~2_combout\ & ( !\CP|currentState.resetState_124~combout\ ) ) ) # ( \CP|color_from_CP\(0) & ( !\CP|Selector4~2_combout\ & ( 
-- \CP|currentState.resetState_124~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CP|ALT_INV_currentState.resetState_124~combout\,
	datae => \CP|ALT_INV_color_from_CP\(0),
	dataf => \CP|ALT_INV_Selector4~2_combout\,
	combout => \CP|color_from_CP\(0));

-- Location: M10K_X41_Y50_N0
\VGA|VideoMemory|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode646w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode828w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M10K_X26_Y52_N0
\VGA|VideoMemory|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode626w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode808w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y56_N0
\VGA|VideoMemory|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode616w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode798w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y53_N0
\VGA|VideoMemory|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode636w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode818w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N0
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ & \VGA|VideoMemory|auto_generated|out_address_reg_b\(0))))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- (((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0))) # (\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\))) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # (\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\)))) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\ & ((\VGA|VideoMemory|auto_generated|out_address_reg_b\(0))))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\))) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & (\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\);

-- Location: M10K_X38_Y55_N0
\VGA|VideoMemory|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode596w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode778w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y49_N0
\VGA|VideoMemory|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode569w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode751w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y57_N0
\VGA|VideoMemory|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode606w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode788w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y51_N0
\VGA|VideoMemory|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode586w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode768w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LABCELL_X37_Y57_N48
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ( \VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ ) ) ) # 
-- ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ( \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ ) ) ) # ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ( \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ( 
-- \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\);

-- Location: M10K_X41_Y55_N0
\VGA|VideoMemory|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode676w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode849w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y58_N0
\VGA|VideoMemory|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "BG.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_otl1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode665w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode838w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y56_N42
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y56_N6
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\ = ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\)))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2))))) ) ) ) # ( 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\)))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( !\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3),
	datac => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	dataf => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;



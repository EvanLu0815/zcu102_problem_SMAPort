-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Feb  6 15:36:44 2023
-- Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Research/Ethernet1G/zcu102_v2_egdesign/gig_ethernet_pcs_pma_0_ex/gig_ethernet_pcs_pma_0_ex.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.vhdl
-- Design      : design_1_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clk_wiz_0_0 is
  Port ( 
    clk_out_125M_p : out STD_LOGIC;
    clk_out_125M_n : out STD_LOGIC;
    clk_out_125M : out STD_LOGIC;
    clk_out_50M : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end design_1_clk_wiz_0_0;

architecture stub of design_1_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out_125M_p,clk_out_125M_n,clk_out_125M,clk_out_50M,reset,locked,clk_in1_p,clk_in1_n";
begin
end;

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Feb  6 15:36:44 2023
// Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Research/Ethernet1G/zcu102_v2_egdesign/gig_ethernet_pcs_pma_0_ex/gig_ethernet_pcs_pma_0_ex.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk_out_125M_p, clk_out_125M_n, clk_out_125M, 
  clk_out_50M, reset, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out_125M_p,clk_out_125M_n,clk_out_125M,clk_out_50M,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_out_125M_p;
  output clk_out_125M_n;
  output clk_out_125M;
  output clk_out_50M;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule

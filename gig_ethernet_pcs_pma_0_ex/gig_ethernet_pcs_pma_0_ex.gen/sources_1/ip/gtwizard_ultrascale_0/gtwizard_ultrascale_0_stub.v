// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb  9 12:14:50 2023
// Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Research/Ethernet1G/zcu102_v2_egdesign/gig_ethernet_pcs_pma_0_ex/gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gtwizard_ultrascale_0/gtwizard_ultrascale_0_stub.v
// Design      : gtwizard_ultrascale_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gtwizard_ultrascale_0_gtwizard_top,Vivado 2022.1" *)
module gtwizard_ultrascale_0(gtwiz_userclk_tx_active_in, 
  gtwiz_userclk_rx_active_in, gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, 
  gtwiz_reset_tx_pll_and_datapath_in, gtwiz_reset_tx_datapath_in, 
  gtwiz_reset_rx_pll_and_datapath_in, gtwiz_reset_rx_datapath_in, 
  gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, gtwiz_reset_rx_done_out, 
  gtwiz_userdata_tx_in, gtwiz_userdata_rx_out, gtrefclk00_in, qpll0outclk_out, 
  qpll0outrefclk_out, gthrxn_in, gthrxp_in, rxusrclk_in, rxusrclk2_in, txusrclk_in, 
  txusrclk2_in, gthtxn_out, gthtxp_out, gtpowergood_out, rxoutclk_out, rxpmaresetdone_out, 
  txoutclk_out, txpmaresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_active_in[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[31:0],gtwiz_userdata_rx_out[31:0],gtrefclk00_in[0:0],qpll0outclk_out[0:0],qpll0outrefclk_out[0:0],gthrxn_in[0:0],gthrxp_in[0:0],rxusrclk_in[0:0],rxusrclk2_in[0:0],txusrclk_in[0:0],txusrclk2_in[0:0],gthtxn_out[0:0],gthtxp_out[0:0],gtpowergood_out[0:0],rxoutclk_out[0:0],rxpmaresetdone_out[0:0],txoutclk_out[0:0],txpmaresetdone_out[0:0]" */;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [31:0]gtwiz_userdata_tx_in;
  output [31:0]gtwiz_userdata_rx_out;
  input [0:0]gtrefclk00_in;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
endmodule
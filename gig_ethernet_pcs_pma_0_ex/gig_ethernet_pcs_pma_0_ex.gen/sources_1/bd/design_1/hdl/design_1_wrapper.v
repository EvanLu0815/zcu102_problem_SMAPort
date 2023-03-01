//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Mon Feb  6 15:35:33 2023
//Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in_300M_n,
    clk_in_300M_p,
    clk_out_125M,
    clk_out_125M_n,
    clk_out_125M_p,
    clk_out_50M,
    locked,
    reset);
  input clk_in_300M_n;
  input clk_in_300M_p;
  output clk_out_125M;
  output clk_out_125M_n;
  output clk_out_125M_p;
  output clk_out_50M;
  output locked;
  input reset;

  wire clk_in_300M_n;
  wire clk_in_300M_p;
  wire clk_out_125M;
  wire clk_out_125M_n;
  wire clk_out_125M_p;
  wire clk_out_50M;
  wire locked;
  wire reset;

  design_1 design_1_i
       (.clk_in_300M_n(clk_in_300M_n),
        .clk_in_300M_p(clk_in_300M_p),
        .clk_out_125M(clk_out_125M),
        .clk_out_125M_n(clk_out_125M_n),
        .clk_out_125M_p(clk_out_125M_p),
        .clk_out_50M(clk_out_50M),
        .locked(locked),
        .reset(reset));
endmodule

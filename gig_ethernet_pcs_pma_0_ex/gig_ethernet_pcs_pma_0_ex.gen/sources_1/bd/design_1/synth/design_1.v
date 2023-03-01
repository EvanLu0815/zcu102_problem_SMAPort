//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Mon Feb  6 15:35:33 2023
//Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in_300M_n,
    clk_in_300M_p,
    clk_out_125M,
    clk_out_125M_n,
    clk_out_125M_p,
    clk_out_50M,
    locked,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_300M_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_300M_N, CLK_DOMAIN design_1_clk_in_300M_n, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in_300M_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN_300M_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN_300M_P, CLK_DOMAIN design_1_clk_in_300M_p, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in_300M_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_125M, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_125M_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_125M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_125M_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_125M_N, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_125M_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 180.0" *) output clk_out_125M_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_125M_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_125M_P, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_125M_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_125M_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_50M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_50M, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out_125M_p, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out_50M;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire clk_in_300M_n_1;
  wire clk_in_300M_p_1;
  wire clk_wiz_0_clk_out_125M;
  wire clk_wiz_0_clk_out_125M_n;
  wire clk_wiz_0_clk_out_125M_p;
  wire clk_wiz_0_clk_out_50M;
  wire clk_wiz_0_locked;
  wire reset_1;

  assign clk_in_300M_n_1 = clk_in_300M_n;
  assign clk_in_300M_p_1 = clk_in_300M_p;
  assign clk_out_125M = clk_wiz_0_clk_out_125M;
  assign clk_out_125M_n = clk_wiz_0_clk_out_125M_n;
  assign clk_out_125M_p = clk_wiz_0_clk_out_125M_p;
  assign clk_out_50M = clk_wiz_0_clk_out_50M;
  assign locked = clk_wiz_0_locked;
  assign reset_1 = reset;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_in_300M_n_1),
        .clk_in1_p(clk_in_300M_p_1),
        .clk_out_125M(clk_wiz_0_clk_out_125M),
        .clk_out_125M_n(clk_wiz_0_clk_out_125M_n),
        .clk_out_125M_p(clk_wiz_0_clk_out_125M_p),
        .clk_out_50M(clk_wiz_0_clk_out_50M),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
endmodule

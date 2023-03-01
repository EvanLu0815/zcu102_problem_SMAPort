// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Feb  6 14:39:58 2023
// Host        : LAPTOP-7UM5MEUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Research/Ethernet1G/EthernetIP_zuc102_v2/EthernetIP_zuc102_v2.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module gig_ethernet_pcs_pma_0(gtrefclk, txp, txn, rxp, rxn, resetdone, cplllock, 
  mmcm_reset, txoutclk, rxoutclk, userclk, userclk2, rxuserclk, rxuserclk2, 
  independent_clock_bufg, pma_reset, mmcm_locked, gmii_txclk, gmii_rxclk, gmii_txd, gmii_tx_en, 
  gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, mdc, mdio_i, mdio_o, mdio_t, phyaddr, 
  configuration_vector, configuration_valid, an_interrupt, an_adv_config_vector, 
  an_adv_config_val, an_restart_config, status_vector, reset, gtpowergood, signal_detect)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk,txp,txn,rxp,rxn,resetdone,cplllock,mmcm_reset,txoutclk,rxoutclk,userclk,userclk2,rxuserclk,rxuserclk2,independent_clock_bufg,pma_reset,mmcm_locked,gmii_txclk,gmii_rxclk,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,mdc,mdio_i,mdio_o,mdio_t,phyaddr[4:0],configuration_vector[4:0],configuration_valid,an_interrupt,an_adv_config_vector[15:0],an_adv_config_val,an_restart_config,status_vector[15:0],reset,gtpowergood,signal_detect" */;
  input gtrefclk;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input independent_clock_bufg;
  input pma_reset;
  input mmcm_locked;
  output gmii_txclk;
  output gmii_rxclk;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;
endmodule

//------------------------------------------------------------------------------
// File       : demo_tb.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// 
// 
//------------------------------------------------------------------------------
// Description: This testbench will exercise the ports of the Ethernet
// 1000BASE-X PCS/PMA core's example design to perform the following
// operations:
//
//----------------
//  Configuration
//----------------
//  The core will be reset, then Auto-Negotiation (if present) will
//  be disabled and and the core will be taken out of the Isolate
//  state.
//
//----------------
//  Transmitter
//----------------
//  Four frames are generated by the Tx Stimulus and pushed into the
//  GMII transmitter.
//
//  The PHY side transmitter interface data is captured, 8B10B decoded
//  and the Tx Monitor checks that the captured data matches that
//  injected.
//
//----------------
//  Receiver
//----------------
//  Four frames are generated by the Rx Stimulus, 8B10B encoded and
//  pushed into the PHY side receiver interface.
//
//  The GMII side receiver interface data is captured and the
//  Rx Monitor checks that the captured data matches that injected.
//
//
//----------------------------------------------------------------------
//                  Demonstration Test Fixture                         |
//                                                                     |
//                                                                     |
//                  --------------------------                         |
//                  |     Example Design     |                         |
//                  |         (DUT)          |                         |
//                  |                        |                         |
//                  |                        |                         |
//                  |                        |                         |
//   Tx             |                        |  8B10B decode, Tx       |
//   Generate   ------->                  -------->           Monitor  |
//   Frames         |                        |                Frames   |
//                  |GMII                PHY |                         |
//                  | I/F                I/F |                         |
//                  |                        |                         |
//                  |                        |                         |
//                  |                        |                         |
//    Rx            |                        |  8B10B encode, Rx       |
//    Monitor  <--------                  <--------           Generate |
//    Frames        |                        |                Frames   |
//                  |                        |                         |
//                  ------------^-------------                         |
//                              |                                      |
//                              |                                      |
//                          Stimulate                                  |
//                          MDIO I/F                                   |
//                         (if present)                                |
//                                                                     |
//----------------------------------------------------------------------

`timescale 1 ps/1 ps



// This module is the demonstration testbench
module demo_tb;


  //----------------------------------------------------------------------------
  // Stimulus - Management Frame data
  //----------------------------------------------------------------------------
  // Create management frame
  reg [0:63] mdio_data;

  initial
  begin
                                              
    mdio_data[0:31]  = 32'hffffffff;  // preamble field
    mdio_data[32:33] = 2'h1;          // start opcode
    mdio_data[34:35] = 2'h1;          // write opcode
    mdio_data[36:40] = 5'd1;          // phyad (write to this device)
    mdio_data[41:45] = 5'h0;          // regad (write to Configuration Register)
    mdio_data[46:47] = 2'h2;          // Turn-around cycles

                                      // DATA FIELD

    mdio_data[48]    = 1'b0;          // Do not assert Reset
    mdio_data[49]    = 1'b0;          // No loopback
    mdio_data[50]    = 1'b0;          // Speed selection
    mdio_data[51]    = 1'b0;          // Disable Auto-Negotiation
    mdio_data[52]    = 1'b0;          // Disable Power Down
    mdio_data[53]    = 1'b0;          // Disable Isolate GMII
    mdio_data[54]    = 1'b0;          // Disable Auto-Negotiation Restart
    mdio_data[55]    = 1'b1;          // Full Duplex Mode
    mdio_data[56]    = 1'b0;          // Disable Collision Test
    mdio_data[57]    = 1'b0;          // Speed selection
    mdio_data[58:63] = 6'h0;          // Reserved

  end



  //----------------------------------------------------------------------------
  // testbench signals
  //----------------------------------------------------------------------------

  // testbench control semaphores
  reg  configuration_finished;
  wire tx_monitor_finished;
  wire rx_monitor_finished;
  wire simulation_finished;


  //----------------------------------------------------------------------------
  // DUT signals
  //----------------------------------------------------------------------------

  // An independent clock source used as the freerun and drp clock for  GT transceiver  logic.
  reg  independent_clock;
  // An independent clock source used as the reference clock for an
  // IDELAYCTRL and other IO logic components 
  reg io_refclk;

  // System Reset
  reg  reset;

  // Transceiver Interface
  //----------------------
  reg  gtrefclk_p;
  reg  gtrefclk_n;
  wire  rxuserclk2;
  wire txp;
  wire txn;
  wire rxp;
  wire rxn;

  // GMII Interface
  //---------------
  wire gmii_tx_clk;
  wire gmii_rx_clk;
  wire [7:0] gmii_txd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0] gmii_rxd;
  wire gmii_rx_dv;
  wire gmii_rx_er;

  // Management: MDIO Interface
  //---------------------------
  reg  mdc;
  reg  mdio_i;
  wire mdio_o;
  wire mdio_t;
  reg [4:0] configuration_vector;
  reg       configuration_valid;
  wire       an_interrupt;
  wire[15:0] an_adv_config_vector;
  wire       an_adv_config_val;
  wire       an_restart_config;


  wire signal_detect;
  wire [15:0] status_vector;



  //----------------------------------------------------------------------------
  // Create clock sources
  //----------------------------------------------------------------------------

   // An independent clock source used as the reference clock for an
   // IDELAYCTRL (if present) and other Select IO Components 
   // This testbench uses the frequency of 300MHz.
  initial
  begin
    io_refclk <= 1'b0;
    forever
    begin
      io_refclk <= 1'b0;
      #1667;
      io_refclk <= 1'b1;
      #1667;
    end
  end

  initial
  begin
    independent_clock <= 1'b0;
    forever
    begin
      independent_clock <= 1'b0;
      #10000;
      independent_clock <= 1'b1;
      #10000;
    end
  end



  // Create the transceiver Reference clock (125 MHz)
  initial
  begin
    gtrefclk_p <= 1'b0;
    gtrefclk_n <= 1'b1;
    forever
    begin
      gtrefclk_p <= 1'b0;
      gtrefclk_n <= 1'b1;
      #4000;
      gtrefclk_p <= 1'b1;
      gtrefclk_n <= 1'b0;
      #4000;
    end
  end


  //----------------------------------------------------------------------------
  // Wire up Device Under Test
  //----------------------------------------------------------------------------
  gig_ethernet_pcs_pma_0_example_design dut
     (
      .independent_clock      (independent_clock),
      .io_refclk              (io_refclk),
      .gtrefclk_p             (gtrefclk_p),
      .gtrefclk_n             (gtrefclk_n),
      .rxuserclk2             (rxuserclk2),
      .txp                    (txp),
      .txn                    (txn),
      .rxp                    (rxp),
      .rxn                    (rxn),
      .gmii_tx_clk            (gmii_tx_clk),
      .gmii_rx_clk            (gmii_rx_clk),
      .gmii_txd               (gmii_txd),
      .gmii_tx_en             (gmii_tx_en),
      .gmii_tx_er             (gmii_tx_er),
      .gmii_rxd               (gmii_rxd),
      .gmii_rx_dv             (gmii_rx_dv),
      .gmii_rx_er             (gmii_rx_er),
      .mdc                    (mdc),
      .mdio_i                 (mdio_i),
      .mdio_o                 (mdio_o),
      .mdio_t                 (mdio_t),
      .phyaddr                (5'b00001),
      .configuration_vector   (configuration_vector),
      .configuration_valid    (configuration_valid),
      .an_interrupt           (an_interrupt),
      .an_adv_config_vector   (an_adv_config_vector),
      .an_adv_config_val      (an_adv_config_val),
      .an_restart_config      (an_restart_config),
      .status_vector          (status_vector),
      .reset                  (reset),
      .signal_detect          (signal_detect)
      );



  //----------------------------------------------------------------------------
  // Instantiate a Stimulus module for the core
  //----------------------------------------------------------------------------
  stimulus_tb stimulus
     (
      .txp                    (txp),
      .txn                    (txn),
      .rxp                    (rxp),
      .rxn                    (rxn),

      .gmii_tx_clk            (gmii_tx_clk),
      .gmii_rx_clk            (gmii_rx_clk),
      .gmii_txd               (gmii_txd),
      .gmii_tx_en             (gmii_tx_en),
      .gmii_tx_er             (gmii_tx_er),
      .gmii_rxd               (gmii_rxd),
      .gmii_rx_dv             (gmii_rx_dv),
      .gmii_rx_er             (gmii_rx_er),

      .configuration_finished (configuration_finished),
      .tx_monitor_finished    (tx_monitor_finished),
      .rx_monitor_finished    (rx_monitor_finished)
      );



  //----------------------------------------------------------------------------
  // Simulate that PMD sublayer has detected and optical input.
  //----------------------------------------------------------------------------
  assign signal_detect = 1'b1;


  assign  an_adv_config_vector = 16'b0000000000100001;
  assign  an_adv_config_val    = 1'b0;
  assign  an_restart_config    = 1'b0;


  //----------------------------------------------------------------------------
  // Set the PHYAD for the core
  //----------------------------------------------------------------------------


  //----------------------------------------------------------------------------
  // Configuration process. This process will reset the core, then write
  // to configuration register 0 to turn off autonegotiation and take
  // the core out of the isolate state.
  //----------------------------------------------------------------------------

  // drives MDC at 2.5 MHz
  initial
  begin
    mdc <= 1'b0;
    forever
    begin
      mdc <= 1'b0;
      #200000;
      mdc <= 1'b1;
      #200000;
    end
  end


  // Main configuration process
  initial
  begin : p_configuration
    integer MDIO_BIT;       // Bit counter within MDIO frame

    $display("** Note: Timing checks are not valid");

    configuration_finished <= 0;
    configuration_vector <= 5'b00000;
    configuration_valid  <= 1'b0;
    mdio_i <= 1'b1;

    // reset the core
    $display("Resetting core...");
    reset <= 1'b1;
    #1000000
    @(posedge gtrefclk_p)
    reset <= 1'b0;
    // wait for core to obtain synchronisation
    #2000000000                     
    #1000000000                     
 

    // Write to PCS Management configuration register 0.
    $display("Writing to Control Register in PCS sublayer....");

    @(negedge mdc)    // centre MDIO around MDC rising edge

    MDIO_BIT = 0;

    // transmit serial management frame
    while(MDIO_BIT !== 64)
    begin
      @(negedge mdc);
      mdio_i <= mdio_data[MDIO_BIT];
      MDIO_BIT = MDIO_BIT + 1;
    end

    @(negedge mdc)
    mdio_i <= 1'b1;  // simulate tri-state with pullup
    #10000000    
    // wait for core to obtain synchronisation
    wait (status_vector[0] == 1);
    #8000000

    configuration_finished <= 1;
  end // p_configuration



  //----------------------------------------------------------------------------
  // End the simulation.
  //----------------------------------------------------------------------------

  assign simulation_finished = tx_monitor_finished & rx_monitor_finished;


  initial
  begin : p_end_simulation
  fork: sim_in_progress
     @(posedge simulation_finished) disable sim_in_progress;
     #2000000000                     
     #2000000000                     
     #2000000000                     
     #2000000000                     
     #2000000000                     
     disable sim_in_progress;
     
  join
  if (simulation_finished) begin
       #1000000
       $display("Test completed successfully");
       $display("Simulation Complete.");
  end
  else
     $display("** Error: Testbench timed out");
  $stop;
  end // p_end_simulation


endmodule


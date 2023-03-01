`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/06 14:42:38
// Design Name: 
// Module Name: MDIO_demo_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MDIO_demo_tb(
  input io_refclk_N,      // 300MHz
  input io_refclk_P,      // 300MHz
  output clk_test_125M_p, // 125MHz
  output clk_test_125M_n, // 125MHz
//  input mdc,        // 2.5MHz

  // System Reset
  input  reset
    );
    
    design_1_wrapper Uclk
   (.clk_in_300M_n(io_refclk_N),
    .clk_in_300M_p(io_refclk_P),
//    .clk_out_125M_n(gt_refclk_n),
//    .clk_out_125M_p(gt_refclk_p),
    .clk_out_125M_n(clk_test_125M_n),
    .clk_out_125M_p(clk_test_125M_p),
    .clk_out_125M(gmii_rx_clk),
//    .clk_out_125M(clk_test_125M),
    .clk_out_50M(independent_clock),
    .locked(),
    .reset(1'b0)
  );
endmodule

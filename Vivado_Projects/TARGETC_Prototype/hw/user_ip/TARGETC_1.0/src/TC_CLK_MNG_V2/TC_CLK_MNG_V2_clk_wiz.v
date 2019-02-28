
// file: TC_CLK_MNG_V2.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// PLL_SSTIN____15.625______0.000______50.0______134.312_____76.967
// PLL_SCLK____50.000______0.000______50.0______108.951_____76.967
// PLL_RDAD_CLK____50.000______0.000______50.0______108.951_____76.967
// PLL_HSCLK____50.000______0.000______50.0______108.951_____76.967
// PLL_WL_CLK___375.000______0.000______50.0_______76.316_____76.967
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_________100.000____________0.010

`timescale 1ps/1ps

module TC_CLK_MNG_V2_clk_wiz 

 (// Clock in ports
  // Clock out ports
  output        PLL_SSTIN,
  output        PLL_SCLK,
  output        PLL_RDAD_CLK,
  output        PLL_HSCLK,
  output        PLL_WL_CLK,
  // Status and control signals
  input         resetn,
  output        locked,
  input         REF_CLK_IN
 );
  // Input buffering
  //------------------------------------
wire REF_CLK_IN_TC_CLK_MNG_V2;
wire clk_in2_TC_CLK_MNG_V2;
  IBUF clkin1_ibufg
   (.O (REF_CLK_IN_TC_CLK_MNG_V2),
    .I (REF_CLK_IN));




  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        PLL_SSTIN_TC_CLK_MNG_V2;
  wire        PLL_SCLK_TC_CLK_MNG_V2;
  wire        PLL_RDAD_CLK_TC_CLK_MNG_V2;
  wire        PLL_HSCLK_TC_CLK_MNG_V2;
  wire        PLL_WL_CLK_TC_CLK_MNG_V2;
  wire        clk_out6_TC_CLK_MNG_V2;
  wire        clk_out7_TC_CLK_MNG_V2;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_TC_CLK_MNG_V2;
  wire        clkfbout_buf_TC_CLK_MNG_V2;
  wire        clkfboutb_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

  PLLE2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .COMPENSATION         ("BUF_IN"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT        (15),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_DIVIDE       (96),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT1_DIVIDE       (30),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT2_DIVIDE       (30),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT3_DIVIDE       (30),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKOUT4_DIVIDE       (4),
    .CLKOUT4_PHASE        (0.000),
    .CLKOUT4_DUTY_CYCLE   (0.500),
    .CLKIN1_PERIOD        (10.000))
  plle2_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_TC_CLK_MNG_V2),
    .CLKOUT0             (PLL_SSTIN_TC_CLK_MNG_V2),
    .CLKOUT1             (PLL_SCLK_TC_CLK_MNG_V2),
    .CLKOUT2             (PLL_RDAD_CLK_TC_CLK_MNG_V2),
    .CLKOUT3             (PLL_HSCLK_TC_CLK_MNG_V2),
    .CLKOUT4             (PLL_WL_CLK_TC_CLK_MNG_V2),
    .CLKOUT5             (clkout5_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf_TC_CLK_MNG_V2),
    .CLKIN1              (REF_CLK_IN_TC_CLK_MNG_V2),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Other control and status signals
    .LOCKED              (locked_int),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));
  assign reset_high = ~resetn; 

  assign locked = locked_int;
// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------

  BUFG clkf_buf
   (.O (clkfbout_buf_TC_CLK_MNG_V2),
    .I (clkfbout_TC_CLK_MNG_V2));






  BUFG clkout1_buf
   (.O   (PLL_SSTIN),
    .I   (PLL_SSTIN_TC_CLK_MNG_V2));


  BUFG clkout2_buf
   (.O   (PLL_SCLK),
    .I   (PLL_SCLK_TC_CLK_MNG_V2));

  BUFG clkout3_buf
   (.O   (PLL_RDAD_CLK),
    .I   (PLL_RDAD_CLK_TC_CLK_MNG_V2));

  BUFG clkout4_buf
   (.O   (PLL_HSCLK),
    .I   (PLL_HSCLK_TC_CLK_MNG_V2));

  BUFG clkout5_buf
   (.O   (PLL_WL_CLK),
    .I   (PLL_WL_CLK_TC_CLK_MNG_V2));



endmodule

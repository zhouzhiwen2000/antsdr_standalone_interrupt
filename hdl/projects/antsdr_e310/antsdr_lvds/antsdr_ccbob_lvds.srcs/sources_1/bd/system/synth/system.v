//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Apr 14 10:47:44 2022
//Host        : Home-PC running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_I5GH1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_LCIC31
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1QVELOC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1UBGIXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1J5P44O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_T17W6X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_15FU5SC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_GFBASD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_59JXRJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_WZLZH6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_Y9JEWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=47,numReposBlks=34,numNonXlnxBlks=9,numHierBlks=13,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=6,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (ddr_addr,
    ddr_ba,
    ddr_cas_n,
    ddr_ck_n,
    ddr_ck_p,
    ddr_cke,
    ddr_cs_n,
    ddr_dm,
    ddr_dq,
    ddr_dqs_n,
    ddr_dqs_p,
    ddr_odt,
    ddr_ras_n,
    ddr_reset_n,
    ddr_we_n,
    enable,
    fixed_io_ddr_vrn,
    fixed_io_ddr_vrp,
    fixed_io_mio,
    fixed_io_ps_clk,
    fixed_io_ps_porb,
    fixed_io_ps_srstb,
    gp_in_0,
    gp_out_0,
    gpio_i,
    gpio_o,
    gpio_t,
    gps_pps,
    iic_main_scl_i,
    iic_main_scl_o,
    iic_main_scl_t,
    iic_main_sda_i,
    iic_main_sda_o,
    iic_main_sda_t,
    otg_vbusoc,
    rx_clk_in_n,
    rx_clk_in_p,
    rx_data_in_n,
    rx_data_in_p,
    rx_frame_in_n,
    rx_frame_in_p,
    spi0_clk_i,
    spi0_clk_o,
    spi0_csn_0_o,
    spi0_csn_1_o,
    spi0_csn_2_o,
    spi0_csn_i,
    spi0_sdi_i,
    spi0_sdo_i,
    spi0_sdo_o,
    spi1_clk_i,
    spi1_clk_o,
    spi1_csn_0_o,
    spi1_csn_1_o,
    spi1_csn_2_o,
    spi1_csn_i,
    spi1_sdi_i,
    spi1_sdo_i,
    spi1_sdo_o,
    tdd_sync_i,
    tdd_sync_o,
    tdd_sync_t,
    tx_clk_out_n,
    tx_clk_out_p,
    tx_data_out_n,
    tx_data_out_p,
    tx_frame_out_n,
    tx_frame_out_p,
    txnrx,
    up_enable,
    up_txnrx);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]ddr_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr BA" *) inout [2:0]ddr_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CAS_N" *) inout ddr_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CK_N" *) inout ddr_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CK_P" *) inout ddr_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CKE" *) inout ddr_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CS_N" *) inout ddr_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DM" *) inout [3:0]ddr_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQ" *) inout [31:0]ddr_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQS_N" *) inout [3:0]ddr_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQS_P" *) inout [3:0]ddr_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr ODT" *) inout ddr_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr RAS_N" *) inout ddr_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr RESET_N" *) inout ddr_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr WE_N" *) inout ddr_we_n;
  output enable;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fixed_io, CAN_DEBUG false" *) inout fixed_io_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRP" *) inout fixed_io_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io MIO" *) inout [53:0]fixed_io_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_CLK" *) inout fixed_io_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_PORB" *) inout fixed_io_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_SRSTB" *) inout fixed_io_ps_srstb;
  input [31:0]gp_in_0;
  output [31:0]gp_out_0;
  input [63:0]gpio_i;
  output [63:0]gpio_o;
  output [63:0]gpio_t;
  input gps_pps;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *) input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *) output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *) output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *) input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *) output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *) output iic_main_sda_t;
  input otg_vbusoc;
  input rx_clk_in_n;
  input rx_clk_in_p;
  input [5:0]rx_data_in_n;
  input [5:0]rx_data_in_p;
  input rx_frame_in_n;
  input rx_frame_in_p;
  input spi0_clk_i;
  output spi0_clk_o;
  output spi0_csn_0_o;
  output spi0_csn_1_o;
  output spi0_csn_2_o;
  input spi0_csn_i;
  input spi0_sdi_i;
  input spi0_sdo_i;
  output spi0_sdo_o;
  input spi1_clk_i;
  output spi1_clk_o;
  output spi1_csn_0_o;
  output spi1_csn_1_o;
  output spi1_csn_2_o;
  input spi1_csn_i;
  input spi1_sdi_i;
  input spi1_sdo_i;
  output spi1_sdo_o;
  input tdd_sync_i;
  output tdd_sync_o;
  output tdd_sync_t;
  output tx_clk_out_n;
  output tx_clk_out_p;
  output [5:0]tx_data_out_n;
  output [5:0]tx_data_out_p;
  output tx_frame_out_n;
  output tx_frame_out_p;
  output txnrx;
  input up_enable;
  input up_txnrx;

  wire [0:0]GND_1_dout;
  wire Net;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [11:0]S00_AXI_1_ARID;
  wire [3:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [11:0]S00_AXI_1_AWID;
  wire [3:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [11:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [11:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [11:0]S00_AXI_1_WID;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [11:0]S00_AXI_2_ARID;
  wire [3:0]S00_AXI_2_ARLEN;
  wire [1:0]S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [31:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [11:0]S00_AXI_2_AWID;
  wire [3:0]S00_AXI_2_AWLEN;
  wire [1:0]S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire [11:0]S00_AXI_2_BID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [31:0]S00_AXI_2_RDATA;
  wire [11:0]S00_AXI_2_RID;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S00_AXI_2_WDATA;
  wire [11:0]S00_AXI_2_WID;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [3:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [15:0]axi_ad9361_adc_data_i0;
  wire [15:0]axi_ad9361_adc_data_i1;
  wire [15:0]axi_ad9361_adc_data_q0;
  wire [15:0]axi_ad9361_adc_data_q1;
  wire axi_ad9361_adc_dma_irq;
  wire [29:0]axi_ad9361_adc_dma_m_dest_axi_AWADDR;
  wire [1:0]axi_ad9361_adc_dma_m_dest_axi_AWBURST;
  wire [3:0]axi_ad9361_adc_dma_m_dest_axi_AWCACHE;
  wire [3:0]axi_ad9361_adc_dma_m_dest_axi_AWLEN;
  wire [2:0]axi_ad9361_adc_dma_m_dest_axi_AWPROT;
  wire axi_ad9361_adc_dma_m_dest_axi_AWREADY;
  wire [2:0]axi_ad9361_adc_dma_m_dest_axi_AWSIZE;
  wire axi_ad9361_adc_dma_m_dest_axi_AWVALID;
  wire axi_ad9361_adc_dma_m_dest_axi_BREADY;
  wire [1:0]axi_ad9361_adc_dma_m_dest_axi_BRESP;
  wire axi_ad9361_adc_dma_m_dest_axi_BVALID;
  wire [63:0]axi_ad9361_adc_dma_m_dest_axi_WDATA;
  wire axi_ad9361_adc_dma_m_dest_axi_WLAST;
  wire axi_ad9361_adc_dma_m_dest_axi_WREADY;
  wire [7:0]axi_ad9361_adc_dma_m_dest_axi_WSTRB;
  wire axi_ad9361_adc_dma_m_dest_axi_WVALID;
  wire axi_ad9361_adc_enable_i0;
  wire axi_ad9361_adc_enable_i1;
  wire axi_ad9361_adc_enable_q0;
  wire axi_ad9361_adc_enable_q1;
  wire axi_ad9361_adc_r1_mode;
  wire axi_ad9361_adc_valid_i0;
  wire axi_ad9361_dac_dma_irq;
  wire [63:0]axi_ad9361_dac_dma_m_axis_TDATA;
  wire axi_ad9361_dac_dma_m_axis_valid;
  wire [29:0]axi_ad9361_dac_dma_m_src_axi_ARADDR;
  wire [1:0]axi_ad9361_dac_dma_m_src_axi_ARBURST;
  wire [3:0]axi_ad9361_dac_dma_m_src_axi_ARCACHE;
  wire [3:0]axi_ad9361_dac_dma_m_src_axi_ARLEN;
  wire [2:0]axi_ad9361_dac_dma_m_src_axi_ARPROT;
  wire axi_ad9361_dac_dma_m_src_axi_ARREADY;
  wire [2:0]axi_ad9361_dac_dma_m_src_axi_ARSIZE;
  wire axi_ad9361_dac_dma_m_src_axi_ARVALID;
  wire [63:0]axi_ad9361_dac_dma_m_src_axi_RDATA;
  wire axi_ad9361_dac_dma_m_src_axi_RLAST;
  wire axi_ad9361_dac_dma_m_src_axi_RREADY;
  wire [1:0]axi_ad9361_dac_dma_m_src_axi_RRESP;
  wire axi_ad9361_dac_dma_m_src_axi_RVALID;
  wire axi_ad9361_dac_enable_i0;
  wire axi_ad9361_dac_enable_i1;
  wire axi_ad9361_dac_enable_q0;
  wire axi_ad9361_dac_enable_q1;
  wire axi_ad9361_dac_r1_mode;
  wire axi_ad9361_dac_valid_i0;
  wire axi_ad9361_enable;
  wire axi_ad9361_gps_pps_irq;
  wire axi_ad9361_l_clk;
  wire axi_ad9361_tdd_sync_cntr;
  wire axi_ad9361_tx_clk_out_n;
  wire axi_ad9361_tx_clk_out_p;
  wire [5:0]axi_ad9361_tx_data_out_n;
  wire [5:0]axi_ad9361_tx_data_out_p;
  wire axi_ad9361_tx_frame_out_n;
  wire axi_ad9361_tx_frame_out_p;
  wire axi_ad9361_txnrx;
  wire [31:0]axi_cpu_interconnect_M00_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M00_AXI_ARPROT;
  wire axi_cpu_interconnect_M00_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M00_AXI_AWPROT;
  wire axi_cpu_interconnect_M00_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_BRESP;
  wire axi_cpu_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_RRESP;
  wire axi_cpu_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_WDATA;
  wire axi_cpu_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M00_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_ARADDR;
  wire axi_cpu_interconnect_M01_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_AWADDR;
  wire axi_cpu_interconnect_M01_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_BRESP;
  wire axi_cpu_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_RRESP;
  wire axi_cpu_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_WDATA;
  wire axi_cpu_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M01_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M02_AXI_ARPROT;
  wire axi_cpu_interconnect_M02_AXI_ARREADY;
  wire axi_cpu_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M02_AXI_AWPROT;
  wire axi_cpu_interconnect_M02_AXI_AWREADY;
  wire axi_cpu_interconnect_M02_AXI_AWVALID;
  wire axi_cpu_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_BRESP;
  wire axi_cpu_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_RDATA;
  wire axi_cpu_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_RRESP;
  wire axi_cpu_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_WDATA;
  wire axi_cpu_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M02_AXI_WSTRB;
  wire axi_cpu_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M03_AXI_ARPROT;
  wire axi_cpu_interconnect_M03_AXI_ARREADY;
  wire axi_cpu_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M03_AXI_AWPROT;
  wire axi_cpu_interconnect_M03_AXI_AWREADY;
  wire axi_cpu_interconnect_M03_AXI_AWVALID;
  wire axi_cpu_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_BRESP;
  wire axi_cpu_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_RDATA;
  wire axi_cpu_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_RRESP;
  wire axi_cpu_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_WDATA;
  wire axi_cpu_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M03_AXI_WSTRB;
  wire axi_cpu_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M04_AXI_ARPROT;
  wire axi_cpu_interconnect_M04_AXI_ARREADY;
  wire axi_cpu_interconnect_M04_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M04_AXI_AWPROT;
  wire axi_cpu_interconnect_M04_AXI_AWREADY;
  wire axi_cpu_interconnect_M04_AXI_AWVALID;
  wire axi_cpu_interconnect_M04_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_BRESP;
  wire axi_cpu_interconnect_M04_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_RDATA;
  wire axi_cpu_interconnect_M04_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_RRESP;
  wire axi_cpu_interconnect_M04_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_WDATA;
  wire axi_cpu_interconnect_M04_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M04_AXI_WSTRB;
  wire axi_cpu_interconnect_M04_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M05_AXI_ARPROT;
  wire axi_cpu_interconnect_M05_AXI_ARREADY;
  wire axi_cpu_interconnect_M05_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M05_AXI_AWPROT;
  wire axi_cpu_interconnect_M05_AXI_AWREADY;
  wire axi_cpu_interconnect_M05_AXI_AWVALID;
  wire axi_cpu_interconnect_M05_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_BRESP;
  wire axi_cpu_interconnect_M05_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_RDATA;
  wire axi_cpu_interconnect_M05_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_RRESP;
  wire axi_cpu_interconnect_M05_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_WDATA;
  wire axi_cpu_interconnect_M05_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M05_AXI_WSTRB;
  wire axi_cpu_interconnect_M05_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M06_AXI_ARPROT;
  wire axi_cpu_interconnect_M06_AXI_ARREADY;
  wire axi_cpu_interconnect_M06_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M06_AXI_AWPROT;
  wire axi_cpu_interconnect_M06_AXI_AWREADY;
  wire axi_cpu_interconnect_M06_AXI_AWVALID;
  wire axi_cpu_interconnect_M06_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_BRESP;
  wire axi_cpu_interconnect_M06_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_RDATA;
  wire axi_cpu_interconnect_M06_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_RRESP;
  wire axi_cpu_interconnect_M06_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_WDATA;
  wire axi_cpu_interconnect_M06_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M06_AXI_WSTRB;
  wire axi_cpu_interconnect_M06_AXI_WVALID;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire axi_dma_0_mm2s_introut;
  wire axi_dma_0_s2mm_introut;
  wire [31:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire axi_dma_1_M_AXI_MM2S_RVALID;
  wire [63:0]axi_dma_1_m_axis_mm2s_tdata;
  wire axi_dma_1_m_axis_mm2s_tvalid;
  wire [31:0]axi_gpreg_up_gp_out_0;
  wire [31:0]axi_hp1_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_hp1_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_hp1_interconnect_M00_AXI_AWCACHE;
  wire [3:0]axi_hp1_interconnect_M00_AXI_AWLEN;
  wire [1:0]axi_hp1_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_hp1_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_hp1_interconnect_M00_AXI_AWQOS;
  wire axi_hp1_interconnect_M00_AXI_AWREADY;
  wire [2:0]axi_hp1_interconnect_M00_AXI_AWSIZE;
  wire axi_hp1_interconnect_M00_AXI_AWVALID;
  wire axi_hp1_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_hp1_interconnect_M00_AXI_BRESP;
  wire axi_hp1_interconnect_M00_AXI_BVALID;
  wire [63:0]axi_hp1_interconnect_M00_AXI_WDATA;
  wire axi_hp1_interconnect_M00_AXI_WLAST;
  wire axi_hp1_interconnect_M00_AXI_WREADY;
  wire [7:0]axi_hp1_interconnect_M00_AXI_WSTRB;
  wire axi_hp1_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_hp2_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_hp2_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_hp2_interconnect_M00_AXI_ARCACHE;
  wire [3:0]axi_hp2_interconnect_M00_AXI_ARLEN;
  wire [1:0]axi_hp2_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_hp2_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_hp2_interconnect_M00_AXI_ARQOS;
  wire axi_hp2_interconnect_M00_AXI_ARREADY;
  wire [2:0]axi_hp2_interconnect_M00_AXI_ARSIZE;
  wire axi_hp2_interconnect_M00_AXI_ARVALID;
  wire [63:0]axi_hp2_interconnect_M00_AXI_RDATA;
  wire axi_hp2_interconnect_M00_AXI_RLAST;
  wire axi_hp2_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_hp2_interconnect_M00_AXI_RRESP;
  wire axi_hp2_interconnect_M00_AXI_RVALID;
  wire axi_iic_main_IIC_SCL_I;
  wire axi_iic_main_IIC_SCL_O;
  wire axi_iic_main_IIC_SCL_T;
  wire axi_iic_main_IIC_SDA_I;
  wire axi_iic_main_IIC_SDA_O;
  wire axi_iic_main_IIC_SDA_T;
  wire axi_iic_main_iic2intc_irpt;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_WVALID;
  wire [8:0]axi_sysid_0_rom_addr;
  wire clk_wiz_0_clk_out1;
  wire [31:0]gp_in_0_1;
  wire [63:0]gpio_i_1;
  wire gps_pps_1;
  wire otg_vbusoc_1;
  wire [31:0]rom_sys_0_rom_data;
  wire [0:0]rst_sys_ps7_200M_peripheral_aresetn;
  wire rx_clk_in_n_1;
  wire rx_clk_in_p_1;
  wire [5:0]rx_data_in_n_1;
  wire [5:0]rx_data_in_p_1;
  wire rx_frame_in_n_1;
  wire rx_frame_in_p_1;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  wire [1:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire [1:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [63:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [63:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire spi0_clk_i_1;
  wire spi0_csn_i_1;
  wire spi0_sdi_i_1;
  wire spi0_sdo_i_1;
  wire spi1_clk_i_1;
  wire spi1_csn_i_1;
  wire spi1_sdi_i_1;
  wire spi1_sdo_i_1;
  wire sync_gen_0_sync_out;
  wire sys_200m_clk;
  wire [15:0]sys_concat_intc_dout;
  wire sys_cpu_clk;
  wire [0:0]sys_cpu_reset;
  wire [0:0]sys_cpu_resetn;
  wire [0:0]sys_logic_inv_Res;
  wire [14:0]sys_ps7_DDR_ADDR;
  wire [2:0]sys_ps7_DDR_BA;
  wire sys_ps7_DDR_CAS_N;
  wire sys_ps7_DDR_CKE;
  wire sys_ps7_DDR_CK_N;
  wire sys_ps7_DDR_CK_P;
  wire sys_ps7_DDR_CS_N;
  wire [3:0]sys_ps7_DDR_DM;
  wire [31:0]sys_ps7_DDR_DQ;
  wire [3:0]sys_ps7_DDR_DQS_N;
  wire [3:0]sys_ps7_DDR_DQS_P;
  wire sys_ps7_DDR_ODT;
  wire sys_ps7_DDR_RAS_N;
  wire sys_ps7_DDR_RESET_N;
  wire sys_ps7_DDR_WE_N;
  wire sys_ps7_FCLK_CLK2;
  wire sys_ps7_FCLK_RESET0_N;
  wire sys_ps7_FCLK_RESET2_N;
  wire sys_ps7_FIXED_IO_DDR_VRN;
  wire sys_ps7_FIXED_IO_DDR_VRP;
  wire [53:0]sys_ps7_FIXED_IO_MIO;
  wire sys_ps7_FIXED_IO_PS_CLK;
  wire sys_ps7_FIXED_IO_PS_PORB;
  wire sys_ps7_FIXED_IO_PS_SRSTB;
  wire [63:0]sys_ps7_GPIO_O;
  wire [63:0]sys_ps7_GPIO_T;
  wire sys_ps7_SPI0_MOSI_O;
  wire sys_ps7_SPI0_SCLK_O;
  wire sys_ps7_SPI0_SS1_O;
  wire sys_ps7_SPI0_SS2_O;
  wire sys_ps7_SPI0_SS_O;
  wire sys_ps7_SPI1_MOSI_O;
  wire sys_ps7_SPI1_SCLK_O;
  wire sys_ps7_SPI1_SS1_O;
  wire sys_ps7_SPI1_SS2_O;
  wire sys_ps7_SPI1_SS_O;
  wire tdd_sync_i_1;
  wire up_enable_1;
  wire up_txnrx_1;
  wire util_ad9361_adc_pack_fifo_wr_overflow;
  wire [63:0]util_ad9361_adc_pack_packed_fifo_wr_DATA;
  wire util_ad9361_adc_pack_packed_fifo_wr_OVERFLOW;
  wire [15:0]util_ad9361_dac_upack_fifo_rd_data_0;
  wire [15:0]util_ad9361_dac_upack_fifo_rd_data_1;
  wire [15:0]util_ad9361_dac_upack_fifo_rd_data_2;
  wire [15:0]util_ad9361_dac_upack_fifo_rd_data_3;
  wire util_ad9361_dac_upack_fifo_rd_underflow;
  wire util_ad9361_dac_upack_s_axis_ready;
  wire util_ad9361_divclk_reset_peripheral_reset;
  wire [1:0]util_ad9361_divclk_sel_concat_dout;
  wire util_ad9361_tdd_sync_sync_out;
  wire [0:0]util_vector_logic_0_Res;
  wire [31:0]xfft_0_M_AXIS_DATA_TDATA;
  wire xfft_0_M_AXIS_DATA_TLAST;
  wire xfft_0_M_AXIS_DATA_TREADY;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire xfft_0_s_axis_config_tready;
  wire [39:0]xlslice_0_Dout;

  assign axi_iic_main_IIC_SCL_I = iic_main_scl_i;
  assign axi_iic_main_IIC_SDA_I = iic_main_sda_i;
  assign enable = axi_ad9361_enable;
  assign gp_in_0_1 = gp_in_0[31:0];
  assign gp_out_0[31:0] = axi_gpreg_up_gp_out_0;
  assign gpio_i_1 = gpio_i[63:0];
  assign gpio_o[63:0] = sys_ps7_GPIO_O;
  assign gpio_t[63:0] = sys_ps7_GPIO_T;
  assign gps_pps_1 = gps_pps;
  assign iic_main_scl_o = axi_iic_main_IIC_SCL_O;
  assign iic_main_scl_t = axi_iic_main_IIC_SCL_T;
  assign iic_main_sda_o = axi_iic_main_IIC_SDA_O;
  assign iic_main_sda_t = axi_iic_main_IIC_SDA_T;
  assign otg_vbusoc_1 = otg_vbusoc;
  assign rx_clk_in_n_1 = rx_clk_in_n;
  assign rx_clk_in_p_1 = rx_clk_in_p;
  assign rx_data_in_n_1 = rx_data_in_n[5:0];
  assign rx_data_in_p_1 = rx_data_in_p[5:0];
  assign rx_frame_in_n_1 = rx_frame_in_n;
  assign rx_frame_in_p_1 = rx_frame_in_p;
  assign spi0_clk_i_1 = spi0_clk_i;
  assign spi0_clk_o = sys_ps7_SPI0_SCLK_O;
  assign spi0_csn_0_o = sys_ps7_SPI0_SS_O;
  assign spi0_csn_1_o = sys_ps7_SPI0_SS1_O;
  assign spi0_csn_2_o = sys_ps7_SPI0_SS2_O;
  assign spi0_csn_i_1 = spi0_csn_i;
  assign spi0_sdi_i_1 = spi0_sdi_i;
  assign spi0_sdo_i_1 = spi0_sdo_i;
  assign spi0_sdo_o = sys_ps7_SPI0_MOSI_O;
  assign spi1_clk_i_1 = spi1_clk_i;
  assign spi1_clk_o = sys_ps7_SPI1_SCLK_O;
  assign spi1_csn_0_o = sys_ps7_SPI1_SS_O;
  assign spi1_csn_1_o = sys_ps7_SPI1_SS1_O;
  assign spi1_csn_2_o = sys_ps7_SPI1_SS2_O;
  assign spi1_csn_i_1 = spi1_csn_i;
  assign spi1_sdi_i_1 = spi1_sdi_i;
  assign spi1_sdo_i_1 = spi1_sdo_i;
  assign spi1_sdo_o = sys_ps7_SPI1_MOSI_O;
  assign tdd_sync_i_1 = tdd_sync_i;
  assign tdd_sync_o = util_ad9361_tdd_sync_sync_out;
  assign tdd_sync_t = axi_ad9361_tdd_sync_cntr;
  assign tx_clk_out_n = axi_ad9361_tx_clk_out_n;
  assign tx_clk_out_p = axi_ad9361_tx_clk_out_p;
  assign tx_data_out_n[5:0] = axi_ad9361_tx_data_out_n;
  assign tx_data_out_p[5:0] = axi_ad9361_tx_data_out_p;
  assign tx_frame_out_n = axi_ad9361_tx_frame_out_n;
  assign tx_frame_out_p = axi_ad9361_tx_frame_out_p;
  assign txnrx = axi_ad9361_txnrx;
  assign up_enable_1 = up_enable;
  assign up_txnrx_1 = up_txnrx;
  system_GND_1_0 GND_1
       (.dout(GND_1_dout));
  system_axi_ad9361_0 axi_ad9361
       (.adc_data_i0(axi_ad9361_adc_data_i0),
        .adc_data_i1(axi_ad9361_adc_data_i1),
        .adc_data_q0(axi_ad9361_adc_data_q0),
        .adc_data_q1(axi_ad9361_adc_data_q1),
        .adc_dovf(util_ad9361_adc_pack_fifo_wr_overflow),
        .adc_enable_i0(axi_ad9361_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_adc_enable_q1),
        .adc_r1_mode(axi_ad9361_adc_r1_mode),
        .adc_valid_i0(axi_ad9361_adc_valid_i0),
        .clk(axi_ad9361_l_clk),
        .dac_data_i0(util_ad9361_dac_upack_fifo_rd_data_0),
        .dac_data_i1(util_ad9361_dac_upack_fifo_rd_data_2),
        .dac_data_q0(util_ad9361_dac_upack_fifo_rd_data_1),
        .dac_data_q1(util_ad9361_dac_upack_fifo_rd_data_3),
        .dac_dunf(util_ad9361_dac_upack_fifo_rd_underflow),
        .dac_enable_i0(axi_ad9361_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_dac_enable_q1),
        .dac_r1_mode(axi_ad9361_dac_r1_mode),
        .dac_sync_in(1'b0),
        .dac_valid_i0(axi_ad9361_dac_valid_i0),
        .delay_clk(sys_200m_clk),
        .enable(axi_ad9361_enable),
        .gps_pps(gps_pps_1),
        .gps_pps_irq(axi_ad9361_gps_pps_irq),
        .l_clk(axi_ad9361_l_clk),
        .rst(util_ad9361_divclk_reset_peripheral_reset),
        .rx_clk_in_n(rx_clk_in_n_1),
        .rx_clk_in_p(rx_clk_in_p_1),
        .rx_data_in_n(rx_data_in_n_1),
        .rx_data_in_p(rx_data_in_p_1),
        .rx_frame_in_n(rx_frame_in_n_1),
        .rx_frame_in_p(rx_frame_in_p_1),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M02_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M02_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M02_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .tdd_sync(util_ad9361_tdd_sync_sync_out),
        .tdd_sync_cntr(axi_ad9361_tdd_sync_cntr),
        .tx_clk_out_n(axi_ad9361_tx_clk_out_n),
        .tx_clk_out_p(axi_ad9361_tx_clk_out_p),
        .tx_data_out_n(axi_ad9361_tx_data_out_n),
        .tx_data_out_p(axi_ad9361_tx_data_out_p),
        .tx_frame_out_n(axi_ad9361_tx_frame_out_n),
        .tx_frame_out_p(axi_ad9361_tx_frame_out_p),
        .txnrx(axi_ad9361_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(up_enable_1),
        .up_txnrx(up_txnrx_1));
  system_axi_ad9361_adc_dma_0 axi_ad9361_adc_dma
       (.fifo_wr_clk(axi_ad9361_l_clk),
        .fifo_wr_din(util_ad9361_adc_pack_packed_fifo_wr_DATA),
        .fifo_wr_en(Net),
        .fifo_wr_overflow(util_ad9361_adc_pack_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(sync_gen_0_sync_out),
        .irq(axi_ad9361_adc_dma_irq),
        .m_dest_axi_aclk(sys_cpu_clk),
        .m_dest_axi_aresetn(sys_cpu_resetn),
        .m_dest_axi_awaddr(axi_ad9361_adc_dma_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_ad9361_adc_dma_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_ad9361_adc_dma_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_ad9361_adc_dma_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_ad9361_adc_dma_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_ad9361_adc_dma_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_ad9361_adc_dma_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_ad9361_adc_dma_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_ad9361_adc_dma_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_ad9361_adc_dma_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_ad9361_adc_dma_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_ad9361_adc_dma_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_ad9361_adc_dma_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_ad9361_adc_dma_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_ad9361_adc_dma_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_ad9361_adc_dma_m_dest_axi_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M03_AXI_ARADDR[10:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M03_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_cpu_interconnect_M03_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M03_AXI_WVALID));
  system_axi_ad9361_dac_dma_0 axi_ad9361_dac_dma
       (.irq(axi_ad9361_dac_dma_irq),
        .m_axis_aclk(axi_ad9361_l_clk),
        .m_axis_data(axi_ad9361_dac_dma_m_axis_TDATA),
        .m_axis_ready(util_ad9361_dac_upack_s_axis_ready),
        .m_axis_valid(axi_ad9361_dac_dma_m_axis_valid),
        .m_src_axi_aclk(sys_cpu_clk),
        .m_src_axi_araddr(axi_ad9361_dac_dma_m_src_axi_ARADDR),
        .m_src_axi_arburst(axi_ad9361_dac_dma_m_src_axi_ARBURST),
        .m_src_axi_arcache(axi_ad9361_dac_dma_m_src_axi_ARCACHE),
        .m_src_axi_aresetn(sys_cpu_resetn),
        .m_src_axi_arlen(axi_ad9361_dac_dma_m_src_axi_ARLEN),
        .m_src_axi_arprot(axi_ad9361_dac_dma_m_src_axi_ARPROT),
        .m_src_axi_arready(axi_ad9361_dac_dma_m_src_axi_ARREADY),
        .m_src_axi_arsize(axi_ad9361_dac_dma_m_src_axi_ARSIZE),
        .m_src_axi_arvalid(axi_ad9361_dac_dma_m_src_axi_ARVALID),
        .m_src_axi_rdata(axi_ad9361_dac_dma_m_src_axi_RDATA),
        .m_src_axi_rlast(axi_ad9361_dac_dma_m_src_axi_RLAST),
        .m_src_axi_rready(axi_ad9361_dac_dma_m_src_axi_RREADY),
        .m_src_axi_rresp(axi_ad9361_dac_dma_m_src_axi_RRESP),
        .m_src_axi_rvalid(axi_ad9361_dac_dma_m_src_axi_RVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M04_AXI_ARADDR[10:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M04_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_cpu_interconnect_M04_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M04_AXI_WVALID));
  system_axi_cpu_interconnect_0 axi_cpu_interconnect
       (.ACLK(sys_cpu_clk),
        .ARESETN(sys_cpu_resetn),
        .M00_ACLK(sys_cpu_clk),
        .M00_ARESETN(sys_cpu_resetn),
        .M00_AXI_araddr(axi_cpu_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_cpu_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_cpu_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .M01_ACLK(sys_cpu_clk),
        .M01_ARESETN(sys_cpu_resetn),
        .M01_AXI_araddr(axi_cpu_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .M02_ACLK(sys_cpu_clk),
        .M02_ARESETN(sys_cpu_resetn),
        .M02_AXI_araddr(axi_cpu_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_cpu_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_cpu_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .M03_ACLK(sys_cpu_clk),
        .M03_ARESETN(sys_cpu_resetn),
        .M03_AXI_araddr(axi_cpu_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_cpu_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_cpu_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_cpu_interconnect_M03_AXI_WVALID),
        .M04_ACLK(sys_cpu_clk),
        .M04_ARESETN(sys_cpu_resetn),
        .M04_AXI_araddr(axi_cpu_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arprot(axi_cpu_interconnect_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awprot(axi_cpu_interconnect_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_cpu_interconnect_M04_AXI_WVALID),
        .M05_ACLK(sys_cpu_clk),
        .M05_ARESETN(sys_cpu_resetn),
        .M05_AXI_araddr(axi_cpu_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_cpu_interconnect_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_cpu_interconnect_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .M06_ACLK(sys_cpu_clk),
        .M06_ARESETN(sys_cpu_resetn),
        .M06_AXI_araddr(axi_cpu_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arprot(axi_cpu_interconnect_M06_AXI_ARPROT),
        .M06_AXI_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awprot(axi_cpu_interconnect_M06_AXI_AWPROT),
        .M06_AXI_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .S00_ACLK(sys_cpu_clk),
        .S00_ARESETN(sys_cpu_resetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wid(S00_AXI_1_WID),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  system_axi_delay_counter_0_0 axi_delay_counter_0
       (.clk(axi_ad9361_l_clk),
        .rst(util_ad9361_divclk_reset_peripheral_reset),
        .s00_axi_aclk(sys_cpu_clk),
        .s00_axi_araddr(axi_cpu_interconnect_M06_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(sys_cpu_resetn),
        .s00_axi_arprot(axi_cpu_interconnect_M06_AXI_ARPROT),
        .s00_axi_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .s00_axi_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .s00_axi_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR[3:0]),
        .s00_axi_awprot(axi_cpu_interconnect_M06_AXI_AWPROT),
        .s00_axi_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .s00_axi_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .s00_axi_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .s00_axi_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .s00_axi_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .s00_axi_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .s00_axi_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .s00_axi_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .s00_axi_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .s00_axi_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .s00_axi_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .s00_axi_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .s00_axi_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .sot_adc(Net),
        .sot_dac(sync_gen_0_sync_out));
  system_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_sys_ps7_200M_peripheral_aresetn),
        .m_axi_mm2s_aclk(sys_ps7_FCLK_CLK2),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(sys_ps7_FCLK_CLK2),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(sys_ps7_FCLK_CLK2),
        .s_axi_lite_araddr(axi_interconnect_0_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .s_axis_s2mm_tready(xfft_0_M_AXIS_DATA_TREADY),
        .s_axis_s2mm_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  system_axi_dma_1_0 axi_dma_1
       (.axi_resetn(rst_sys_ps7_200M_peripheral_aresetn),
        .m_axi_mm2s_aclk(sys_ps7_FCLK_CLK2),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_tdata(axi_dma_1_m_axis_mm2s_tdata),
        .m_axis_mm2s_tready(xfft_0_s_axis_config_tready),
        .m_axis_mm2s_tvalid(axi_dma_1_m_axis_mm2s_tvalid),
        .s_axi_lite_aclk(sys_ps7_FCLK_CLK2),
        .s_axi_lite_araddr(axi_interconnect_0_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  system_axi_gpreg_0 axi_gpreg
       (.s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M05_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M05_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M05_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .up_gp_in_0(gp_in_0_1),
        .up_gp_out_0(axi_gpreg_up_gp_out_0));
  system_axi_hp1_interconnect_0 axi_hp1_interconnect
       (.M00_AXI_awaddr(axi_hp1_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_hp1_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_hp1_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_hp1_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_hp1_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_hp1_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_hp1_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_hp1_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_hp1_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_hp1_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_hp1_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_hp1_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_hp1_interconnect_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_hp1_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_hp1_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_hp1_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_hp1_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_hp1_interconnect_M00_AXI_WVALID),
        .S00_AXI_awaddr(axi_ad9361_adc_dma_m_dest_axi_AWADDR),
        .S00_AXI_awburst(axi_ad9361_adc_dma_m_dest_axi_AWBURST),
        .S00_AXI_awcache(axi_ad9361_adc_dma_m_dest_axi_AWCACHE),
        .S00_AXI_awlen(axi_ad9361_adc_dma_m_dest_axi_AWLEN),
        .S00_AXI_awlock({1'b0,1'b0}),
        .S00_AXI_awprot(axi_ad9361_adc_dma_m_dest_axi_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_ad9361_adc_dma_m_dest_axi_AWREADY),
        .S00_AXI_awsize(axi_ad9361_adc_dma_m_dest_axi_AWSIZE),
        .S00_AXI_awvalid(axi_ad9361_adc_dma_m_dest_axi_AWVALID),
        .S00_AXI_bready(axi_ad9361_adc_dma_m_dest_axi_BREADY),
        .S00_AXI_bresp(axi_ad9361_adc_dma_m_dest_axi_BRESP),
        .S00_AXI_bvalid(axi_ad9361_adc_dma_m_dest_axi_BVALID),
        .S00_AXI_wdata(axi_ad9361_adc_dma_m_dest_axi_WDATA),
        .S00_AXI_wlast(axi_ad9361_adc_dma_m_dest_axi_WLAST),
        .S00_AXI_wready(axi_ad9361_adc_dma_m_dest_axi_WREADY),
        .S00_AXI_wstrb(axi_ad9361_adc_dma_m_dest_axi_WSTRB),
        .S00_AXI_wvalid(axi_ad9361_adc_dma_m_dest_axi_WVALID),
        .aclk(sys_cpu_clk),
        .aresetn(sys_cpu_resetn));
  system_axi_hp2_interconnect_0 axi_hp2_interconnect
       (.M00_AXI_araddr(axi_hp2_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_hp2_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_hp2_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_hp2_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_hp2_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_hp2_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_hp2_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_hp2_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_hp2_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_hp2_interconnect_M00_AXI_ARVALID),
        .M00_AXI_rdata(axi_hp2_interconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_hp2_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_hp2_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_hp2_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_hp2_interconnect_M00_AXI_RVALID),
        .S00_AXI_araddr(axi_ad9361_dac_dma_m_src_axi_ARADDR),
        .S00_AXI_arburst(axi_ad9361_dac_dma_m_src_axi_ARBURST),
        .S00_AXI_arcache(axi_ad9361_dac_dma_m_src_axi_ARCACHE),
        .S00_AXI_arlen(axi_ad9361_dac_dma_m_src_axi_ARLEN),
        .S00_AXI_arlock({1'b0,1'b0}),
        .S00_AXI_arprot(axi_ad9361_dac_dma_m_src_axi_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_ad9361_dac_dma_m_src_axi_ARREADY),
        .S00_AXI_arsize(axi_ad9361_dac_dma_m_src_axi_ARSIZE),
        .S00_AXI_arvalid(axi_ad9361_dac_dma_m_src_axi_ARVALID),
        .S00_AXI_rdata(axi_ad9361_dac_dma_m_src_axi_RDATA),
        .S00_AXI_rlast(axi_ad9361_dac_dma_m_src_axi_RLAST),
        .S00_AXI_rready(axi_ad9361_dac_dma_m_src_axi_RREADY),
        .S00_AXI_rresp(axi_ad9361_dac_dma_m_src_axi_RRESP),
        .S00_AXI_rvalid(axi_ad9361_dac_dma_m_src_axi_RVALID),
        .aclk(sys_cpu_clk),
        .aresetn(sys_cpu_resetn));
  system_axi_iic_main_0 axi_iic_main
       (.iic2intc_irpt(axi_iic_main_iic2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .scl_i(axi_iic_main_IIC_SCL_I),
        .scl_o(axi_iic_main_IIC_SCL_O),
        .scl_t(axi_iic_main_IIC_SCL_T),
        .sda_i(axi_iic_main_IIC_SDA_I),
        .sda_o(axi_iic_main_IIC_SDA_O),
        .sda_t(axi_iic_main_IIC_SDA_T));
  system_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(sys_ps7_FCLK_CLK2),
        .ARESETN(rst_sys_ps7_200M_peripheral_aresetn),
        .M00_ACLK(sys_ps7_FCLK_CLK2),
        .M00_ARESETN(rst_sys_ps7_200M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(sys_ps7_FCLK_CLK2),
        .M01_ARESETN(rst_sys_ps7_200M_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .S00_ACLK(sys_ps7_FCLK_CLK2),
        .S00_ARESETN(rst_sys_ps7_200M_peripheral_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arid(S00_AXI_2_ARID),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awid(S00_AXI_2_AWID),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bid(S00_AXI_2_BID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rid(S00_AXI_2_RID),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wid(S00_AXI_2_WID),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID));
  system_axi_sysid_0_0 axi_sysid_0
       (.pr_rom_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rom_addr(axi_sysid_0_rom_addr),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M00_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M00_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M00_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .sys_rom_data(rom_sys_0_rom_data));
  system_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(axi_ad9361_l_clk),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(util_ad9361_divclk_reset_peripheral_reset));
  system_ila_0_1 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(util_ad9361_dac_upack_s_axis_ready),
        .probe1(axi_ad9361_dac_dma_m_axis_valid),
        .probe2(sync_gen_0_sync_out),
        .probe3(Net),
        .probe4(axi_ad9361_dac_enable_i0),
        .probe5(axi_ad9361_dac_enable_q0),
        .probe6(axi_ad9361_adc_enable_i0),
        .probe7(axi_ad9361_adc_enable_q0));
  system_rom_sys_0_0 rom_sys_0
       (.clk(sys_cpu_clk),
        .rom_addr(axi_sysid_0_rom_addr),
        .rom_data(rom_sys_0_rom_data));
  system_rst_sys_ps7_200M_0 rst_sys_ps7_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_ps7_FCLK_RESET2_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_sys_ps7_200M_peripheral_aresetn),
        .slowest_sync_clk(sys_ps7_FCLK_CLK2));
  system_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .S02_AXI_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .S02_AXI_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .S02_AXI_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .S02_AXI_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .S02_AXI_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .S02_AXI_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .S02_AXI_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .S02_AXI_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .S02_AXI_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .S02_AXI_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .aclk(sys_ps7_FCLK_CLK2),
        .aresetn(rst_sys_ps7_200M_peripheral_aresetn));
  system_sync_gen_0_0 sync_gen_0
       (.clk(axi_ad9361_l_clk),
        .dac_sot(util_vector_logic_0_Res),
        .reset(util_ad9361_divclk_reset_peripheral_reset),
        .sync_out(sync_gen_0_sync_out));
  system_sys_concat_intc_0 sys_concat_intc
       (.In0(GND_1_dout),
        .In1(GND_1_dout),
        .In10(axi_dma_0_mm2s_introut),
        .In11(axi_ad9361_gps_pps_irq),
        .In12(axi_ad9361_dac_dma_irq),
        .In13(axi_ad9361_adc_dma_irq),
        .In14(axi_iic_main_iic2intc_irpt),
        .In15(GND_1_dout),
        .In2(GND_1_dout),
        .In3(GND_1_dout),
        .In4(GND_1_dout),
        .In5(GND_1_dout),
        .In6(GND_1_dout),
        .In7(GND_1_dout),
        .In8(GND_1_dout),
        .In9(axi_dma_0_s2mm_introut),
        .dout(sys_concat_intc_dout));
  system_sys_logic_inv_0 sys_logic_inv
       (.Op1(otg_vbusoc_1),
        .Res(sys_logic_inv_Res));
  system_sys_ps7_0 sys_ps7
       (.DDR_Addr(ddr_addr[14:0]),
        .DDR_BankAddr(ddr_ba[2:0]),
        .DDR_CAS_n(ddr_cas_n),
        .DDR_CKE(ddr_cke),
        .DDR_CS_n(ddr_cs_n),
        .DDR_Clk(ddr_ck_p),
        .DDR_Clk_n(ddr_ck_n),
        .DDR_DM(ddr_dm[3:0]),
        .DDR_DQ(ddr_dq[31:0]),
        .DDR_DQS(ddr_dqs_p[3:0]),
        .DDR_DQS_n(ddr_dqs_n[3:0]),
        .DDR_DRSTB(ddr_reset_n),
        .DDR_ODT(ddr_odt),
        .DDR_RAS_n(ddr_ras_n),
        .DDR_VRN(fixed_io_ddr_vrn),
        .DDR_VRP(fixed_io_ddr_vrp),
        .DDR_WEB(ddr_we_n),
        .ENET1_EXT_INTIN(1'b0),
        .ENET1_GMII_COL(1'b0),
        .ENET1_GMII_CRS(1'b0),
        .ENET1_GMII_RXD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ENET1_GMII_RX_CLK(GND_1_dout),
        .ENET1_GMII_RX_DV(1'b0),
        .ENET1_GMII_RX_ER(1'b0),
        .ENET1_GMII_TX_CLK(GND_1_dout),
        .FCLK_CLK0(sys_cpu_clk),
        .FCLK_CLK1(sys_200m_clk),
        .FCLK_CLK2(sys_ps7_FCLK_CLK2),
        .FCLK_RESET0_N(sys_ps7_FCLK_RESET0_N),
        .FCLK_RESET2_N(sys_ps7_FCLK_RESET2_N),
        .GPIO_I(gpio_i_1),
        .GPIO_O(sys_ps7_GPIO_O),
        .GPIO_T(sys_ps7_GPIO_T),
        .IRQ_F2P(sys_concat_intc_dout),
        .MIO(fixed_io_mio[53:0]),
        .M_AXI_GP0_ACLK(sys_cpu_clk),
        .M_AXI_GP0_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_GP0_ARBURST(S00_AXI_1_ARBURST),
        .M_AXI_GP0_ARCACHE(S00_AXI_1_ARCACHE),
        .M_AXI_GP0_ARID(S00_AXI_1_ARID),
        .M_AXI_GP0_ARLEN(S00_AXI_1_ARLEN),
        .M_AXI_GP0_ARLOCK(S00_AXI_1_ARLOCK),
        .M_AXI_GP0_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_GP0_ARQOS(S00_AXI_1_ARQOS),
        .M_AXI_GP0_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_GP0_ARSIZE(S00_AXI_1_ARSIZE),
        .M_AXI_GP0_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_GP0_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_GP0_AWBURST(S00_AXI_1_AWBURST),
        .M_AXI_GP0_AWCACHE(S00_AXI_1_AWCACHE),
        .M_AXI_GP0_AWID(S00_AXI_1_AWID),
        .M_AXI_GP0_AWLEN(S00_AXI_1_AWLEN),
        .M_AXI_GP0_AWLOCK(S00_AXI_1_AWLOCK),
        .M_AXI_GP0_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_GP0_AWQOS(S00_AXI_1_AWQOS),
        .M_AXI_GP0_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_GP0_AWSIZE(S00_AXI_1_AWSIZE),
        .M_AXI_GP0_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_GP0_BID(S00_AXI_1_BID),
        .M_AXI_GP0_BREADY(S00_AXI_1_BREADY),
        .M_AXI_GP0_BRESP(S00_AXI_1_BRESP),
        .M_AXI_GP0_BVALID(S00_AXI_1_BVALID),
        .M_AXI_GP0_RDATA(S00_AXI_1_RDATA),
        .M_AXI_GP0_RID(S00_AXI_1_RID),
        .M_AXI_GP0_RLAST(S00_AXI_1_RLAST),
        .M_AXI_GP0_RREADY(S00_AXI_1_RREADY),
        .M_AXI_GP0_RRESP(S00_AXI_1_RRESP),
        .M_AXI_GP0_RVALID(S00_AXI_1_RVALID),
        .M_AXI_GP0_WDATA(S00_AXI_1_WDATA),
        .M_AXI_GP0_WID(S00_AXI_1_WID),
        .M_AXI_GP0_WLAST(S00_AXI_1_WLAST),
        .M_AXI_GP0_WREADY(S00_AXI_1_WREADY),
        .M_AXI_GP0_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_GP0_WVALID(S00_AXI_1_WVALID),
        .M_AXI_GP1_ACLK(sys_ps7_FCLK_CLK2),
        .M_AXI_GP1_ARADDR(S00_AXI_2_ARADDR),
        .M_AXI_GP1_ARBURST(S00_AXI_2_ARBURST),
        .M_AXI_GP1_ARCACHE(S00_AXI_2_ARCACHE),
        .M_AXI_GP1_ARID(S00_AXI_2_ARID),
        .M_AXI_GP1_ARLEN(S00_AXI_2_ARLEN),
        .M_AXI_GP1_ARLOCK(S00_AXI_2_ARLOCK),
        .M_AXI_GP1_ARPROT(S00_AXI_2_ARPROT),
        .M_AXI_GP1_ARQOS(S00_AXI_2_ARQOS),
        .M_AXI_GP1_ARREADY(S00_AXI_2_ARREADY),
        .M_AXI_GP1_ARSIZE(S00_AXI_2_ARSIZE),
        .M_AXI_GP1_ARVALID(S00_AXI_2_ARVALID),
        .M_AXI_GP1_AWADDR(S00_AXI_2_AWADDR),
        .M_AXI_GP1_AWBURST(S00_AXI_2_AWBURST),
        .M_AXI_GP1_AWCACHE(S00_AXI_2_AWCACHE),
        .M_AXI_GP1_AWID(S00_AXI_2_AWID),
        .M_AXI_GP1_AWLEN(S00_AXI_2_AWLEN),
        .M_AXI_GP1_AWLOCK(S00_AXI_2_AWLOCK),
        .M_AXI_GP1_AWPROT(S00_AXI_2_AWPROT),
        .M_AXI_GP1_AWQOS(S00_AXI_2_AWQOS),
        .M_AXI_GP1_AWREADY(S00_AXI_2_AWREADY),
        .M_AXI_GP1_AWSIZE(S00_AXI_2_AWSIZE),
        .M_AXI_GP1_AWVALID(S00_AXI_2_AWVALID),
        .M_AXI_GP1_BID(S00_AXI_2_BID),
        .M_AXI_GP1_BREADY(S00_AXI_2_BREADY),
        .M_AXI_GP1_BRESP(S00_AXI_2_BRESP),
        .M_AXI_GP1_BVALID(S00_AXI_2_BVALID),
        .M_AXI_GP1_RDATA(S00_AXI_2_RDATA),
        .M_AXI_GP1_RID(S00_AXI_2_RID),
        .M_AXI_GP1_RLAST(S00_AXI_2_RLAST),
        .M_AXI_GP1_RREADY(S00_AXI_2_RREADY),
        .M_AXI_GP1_RRESP(S00_AXI_2_RRESP),
        .M_AXI_GP1_RVALID(S00_AXI_2_RVALID),
        .M_AXI_GP1_WDATA(S00_AXI_2_WDATA),
        .M_AXI_GP1_WID(S00_AXI_2_WID),
        .M_AXI_GP1_WLAST(S00_AXI_2_WLAST),
        .M_AXI_GP1_WREADY(S00_AXI_2_WREADY),
        .M_AXI_GP1_WSTRB(S00_AXI_2_WSTRB),
        .M_AXI_GP1_WVALID(S00_AXI_2_WVALID),
        .PS_CLK(fixed_io_ps_clk),
        .PS_PORB(fixed_io_ps_porb),
        .PS_SRSTB(fixed_io_ps_srstb),
        .SPI0_MISO_I(spi0_sdi_i_1),
        .SPI0_MOSI_I(spi0_sdo_i_1),
        .SPI0_MOSI_O(sys_ps7_SPI0_MOSI_O),
        .SPI0_SCLK_I(spi0_clk_i_1),
        .SPI0_SCLK_O(sys_ps7_SPI0_SCLK_O),
        .SPI0_SS1_O(sys_ps7_SPI0_SS1_O),
        .SPI0_SS2_O(sys_ps7_SPI0_SS2_O),
        .SPI0_SS_I(spi0_csn_i_1),
        .SPI0_SS_O(sys_ps7_SPI0_SS_O),
        .SPI1_MISO_I(spi1_sdi_i_1),
        .SPI1_MOSI_I(spi1_sdo_i_1),
        .SPI1_MOSI_O(sys_ps7_SPI1_MOSI_O),
        .SPI1_SCLK_I(spi1_clk_i_1),
        .SPI1_SCLK_O(sys_ps7_SPI1_SCLK_O),
        .SPI1_SS1_O(sys_ps7_SPI1_SS1_O),
        .SPI1_SS2_O(sys_ps7_SPI1_SS2_O),
        .SPI1_SS_I(spi1_csn_i_1),
        .SPI1_SS_O(sys_ps7_SPI1_SS_O),
        .S_AXI_HP0_ACLK(sys_ps7_FCLK_CLK2),
        .S_AXI_HP0_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(smartconnect_0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(smartconnect_0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(smartconnect_0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(smartconnect_0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(smartconnect_0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(smartconnect_0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(smartconnect_0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(smartconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(smartconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(smartconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(smartconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(smartconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(smartconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(smartconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(smartconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(smartconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(smartconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(smartconnect_0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(smartconnect_0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(smartconnect_0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(smartconnect_0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(smartconnect_0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(smartconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(smartconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(smartconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(smartconnect_0_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(sys_cpu_clk),
        .S_AXI_HP1_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARBURST({1'b0,1'b1}),
        .S_AXI_HP1_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP1_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP1_ARVALID(1'b0),
        .S_AXI_HP1_AWADDR(axi_hp1_interconnect_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_hp1_interconnect_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_hp1_interconnect_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN(axi_hp1_interconnect_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_hp1_interconnect_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_hp1_interconnect_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_hp1_interconnect_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_hp1_interconnect_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_hp1_interconnect_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_hp1_interconnect_M00_AXI_AWVALID),
        .S_AXI_HP1_BREADY(axi_hp1_interconnect_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_hp1_interconnect_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_hp1_interconnect_M00_AXI_BVALID),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RREADY(1'b0),
        .S_AXI_HP1_WDATA(axi_hp1_interconnect_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(axi_hp1_interconnect_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_hp1_interconnect_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_hp1_interconnect_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_hp1_interconnect_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(sys_cpu_clk),
        .S_AXI_HP2_ARADDR(axi_hp2_interconnect_M00_AXI_ARADDR),
        .S_AXI_HP2_ARBURST(axi_hp2_interconnect_M00_AXI_ARBURST),
        .S_AXI_HP2_ARCACHE(axi_hp2_interconnect_M00_AXI_ARCACHE),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN(axi_hp2_interconnect_M00_AXI_ARLEN),
        .S_AXI_HP2_ARLOCK(axi_hp2_interconnect_M00_AXI_ARLOCK),
        .S_AXI_HP2_ARPROT(axi_hp2_interconnect_M00_AXI_ARPROT),
        .S_AXI_HP2_ARQOS(axi_hp2_interconnect_M00_AXI_ARQOS),
        .S_AXI_HP2_ARREADY(axi_hp2_interconnect_M00_AXI_ARREADY),
        .S_AXI_HP2_ARSIZE(axi_hp2_interconnect_M00_AXI_ARSIZE),
        .S_AXI_HP2_ARVALID(axi_hp2_interconnect_M00_AXI_ARVALID),
        .S_AXI_HP2_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWBURST({1'b0,1'b1}),
        .S_AXI_HP2_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP2_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP2_AWVALID(1'b0),
        .S_AXI_HP2_BREADY(1'b0),
        .S_AXI_HP2_RDATA(axi_hp2_interconnect_M00_AXI_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RLAST(axi_hp2_interconnect_M00_AXI_RLAST),
        .S_AXI_HP2_RREADY(axi_hp2_interconnect_M00_AXI_RREADY),
        .S_AXI_HP2_RRESP(axi_hp2_interconnect_M00_AXI_RRESP),
        .S_AXI_HP2_RVALID(axi_hp2_interconnect_M00_AXI_RVALID),
        .S_AXI_HP2_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(1'b0),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP2_WVALID(1'b0),
        .USB0_VBUS_PWRFAULT(sys_logic_inv_Res));
  system_sys_rstgen_0 sys_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_cpu_resetn),
        .peripheral_reset(sys_cpu_reset),
        .slowest_sync_clk(sys_cpu_clk));
  system_util_ad9361_adc_pack_0 util_ad9361_adc_pack
       (.clk(axi_ad9361_l_clk),
        .enable_0(axi_ad9361_adc_enable_i0),
        .enable_1(axi_ad9361_adc_enable_q0),
        .enable_2(axi_ad9361_adc_enable_i1),
        .enable_3(axi_ad9361_adc_enable_q1),
        .fifo_wr_data_0(axi_ad9361_adc_data_i0),
        .fifo_wr_data_1(axi_ad9361_adc_data_q0),
        .fifo_wr_data_2(axi_ad9361_adc_data_i1),
        .fifo_wr_data_3(axi_ad9361_adc_data_q1),
        .fifo_wr_en(axi_ad9361_adc_valid_i0),
        .fifo_wr_overflow(util_ad9361_adc_pack_fifo_wr_overflow),
        .packed_fifo_wr_data(util_ad9361_adc_pack_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(Net),
        .packed_fifo_wr_overflow(util_ad9361_adc_pack_packed_fifo_wr_OVERFLOW),
        .reset(util_ad9361_divclk_reset_peripheral_reset));
  system_util_ad9361_dac_upack_0 util_ad9361_dac_upack
       (.clk(axi_ad9361_l_clk),
        .enable_0(axi_ad9361_dac_enable_i0),
        .enable_1(axi_ad9361_dac_enable_q0),
        .enable_2(axi_ad9361_dac_enable_i1),
        .enable_3(axi_ad9361_dac_enable_q1),
        .fifo_rd_data_0(util_ad9361_dac_upack_fifo_rd_data_0),
        .fifo_rd_data_1(util_ad9361_dac_upack_fifo_rd_data_1),
        .fifo_rd_data_2(util_ad9361_dac_upack_fifo_rd_data_2),
        .fifo_rd_data_3(util_ad9361_dac_upack_fifo_rd_data_3),
        .fifo_rd_en(axi_ad9361_dac_valid_i0),
        .fifo_rd_underflow(util_ad9361_dac_upack_fifo_rd_underflow),
        .reset(util_ad9361_divclk_reset_peripheral_reset),
        .s_axis_data(axi_ad9361_dac_dma_m_axis_TDATA),
        .s_axis_ready(util_ad9361_dac_upack_s_axis_ready),
        .s_axis_valid(axi_ad9361_dac_dma_m_axis_valid));
  system_util_ad9361_divclk_sel_0 util_ad9361_divclk_sel
       (.Op1(util_ad9361_divclk_sel_concat_dout));
  system_util_ad9361_divclk_sel_concat_0 util_ad9361_divclk_sel_concat
       (.In0(axi_ad9361_adc_r1_mode),
        .In1(axi_ad9361_dac_r1_mode),
        .dout(util_ad9361_divclk_sel_concat_dout));
  system_util_ad9361_tdd_sync_0 util_ad9361_tdd_sync
       (.clk(sys_cpu_clk),
        .rstn(sys_cpu_resetn),
        .sync_in(tdd_sync_i_1),
        .sync_mode(axi_ad9361_tdd_sync_cntr),
        .sync_out(util_ad9361_tdd_sync_sync_out));
  system_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_ad9361_dac_upack_s_axis_ready),
        .Op2(axi_ad9361_dac_dma_m_axis_valid),
        .Res(util_vector_logic_0_Res));
  system_xfft_0_0 xfft_0
       (.aclk(sys_ps7_FCLK_CLK2),
        .m_axis_data_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_0_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(xlslice_0_Dout),
        .s_axis_config_tready(xfft_0_s_axis_config_tready),
        .s_axis_config_tvalid(axi_dma_1_m_axis_mm2s_tvalid),
        .s_axis_data_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .s_axis_data_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .s_axis_data_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .s_axis_data_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID));
  system_xlslice_0_0 xlslice_0
       (.Din(axi_dma_1_m_axis_mm2s_tdata),
        .Dout(xlslice_0_Dout));
endmodule

module system_axi_cpu_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_cpu_interconnect_ACLK_net;
  wire axi_cpu_interconnect_ARESETN_net;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARCACHE;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_ARID;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARLEN;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARQOS;
  wire axi_cpu_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARSIZE;
  wire axi_cpu_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWCACHE;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_AWID;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWLEN;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWQOS;
  wire axi_cpu_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWSIZE;
  wire axi_cpu_interconnect_to_s00_couplers_AWVALID;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_BID;
  wire axi_cpu_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_BRESP;
  wire axi_cpu_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_RDATA;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_RID;
  wire axi_cpu_interconnect_to_s00_couplers_RLAST;
  wire axi_cpu_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_RRESP;
  wire axi_cpu_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_WDATA;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_WID;
  wire axi_cpu_interconnect_to_s00_couplers_WLAST;
  wire axi_cpu_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_WSTRB;
  wire axi_cpu_interconnect_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m00_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m00_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m02_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m02_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m02_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m02_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m02_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m02_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m02_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_BRESP;
  wire m02_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_RDATA;
  wire m02_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_RRESP;
  wire m02_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_WDATA;
  wire m02_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m02_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m03_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m03_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m03_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m03_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m03_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m03_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m03_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_BRESP;
  wire m03_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_RDATA;
  wire m03_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_RRESP;
  wire m03_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_WDATA;
  wire m03_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m03_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m04_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m04_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m04_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m04_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m04_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m04_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m04_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_BRESP;
  wire m04_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_RDATA;
  wire m04_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_RRESP;
  wire m04_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_WDATA;
  wire m04_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m04_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m05_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m05_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m05_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m05_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m05_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m05_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m05_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_BRESP;
  wire m05_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_RDATA;
  wire m05_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_RRESP;
  wire m05_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_WDATA;
  wire m05_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m05_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m05_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m06_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m06_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m06_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m06_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m06_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m06_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m06_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_BRESP;
  wire m06_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_RDATA;
  wire m06_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_RRESP;
  wire m06_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_WDATA;
  wire m06_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m06_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m06_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [20:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_cpu_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_cpu_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_cpu_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_cpu_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_cpu_interconnect_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_cpu_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_cpu_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_cpu_interconnect_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_cpu_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_cpu_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_cpu_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_cpu_interconnect_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_cpu_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_cpu_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_cpu_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_cpu_interconnect_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_cpu_interconnect_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_cpu_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_cpu_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_cpu_interconnect_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_cpu_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_cpu_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_cpu_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_cpu_interconnect_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_cpu_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_cpu_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_cpu_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_cpu_interconnect_WVALID;
  assign S00_AXI_arready = axi_cpu_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_cpu_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_cpu_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_cpu_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_cpu_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_cpu_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_cpu_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_cpu_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_cpu_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_cpu_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_cpu_interconnect_to_s00_couplers_WREADY;
  assign axi_cpu_interconnect_ACLK_net = ACLK;
  assign axi_cpu_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_cpu_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_cpu_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_cpu_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_cpu_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_cpu_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_cpu_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_cpu_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_cpu_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_cpu_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_cpu_interconnect_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_cpu_interconnect_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_cpu_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_cpu_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_cpu_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_cpu_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_cpu_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_cpu_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_cpu_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_cpu_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_cpu_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_cpu_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_cpu_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_cpu_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_cpu_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_cpu_interconnect_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_cpu_interconnect_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_cpu_interconnect_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_cpu_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_cpu_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_cpu_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_cpu_interconnect_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_cpu_interconnect_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_cpu_interconnect_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_cpu_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_cpu_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_cpu_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_cpu_interconnect_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_cpu_interconnect_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_cpu_interconnect_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_cpu_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_cpu_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_cpu_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_cpu_interconnect_WREADY = M06_AXI_wready;
  m00_couplers_imp_I5GH1N m00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1UBGIXM m01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1J5P44O m02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_T17W6X m03_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_15FU5SC m04_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m04_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m04_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_GFBASD m05_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_59JXRJ m06_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m06_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m06_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m06_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m06_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  s00_couplers_imp_WZLZH6 s00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_cpu_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_cpu_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_cpu_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_cpu_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_cpu_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_cpu_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_cpu_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_cpu_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_cpu_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_cpu_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_cpu_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_cpu_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_cpu_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(axi_cpu_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_cpu_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(axi_cpu_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_cpu_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_cpu_interconnect_to_s00_couplers_WID),
        .S_AXI_wlast(axi_cpu_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_cpu_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_interconnect_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[5:3],xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[5:3],xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_WID;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_LCIC31 m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1QVELOC m01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_Y9JEWS s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_0_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  system_xbar_2 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

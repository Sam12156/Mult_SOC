// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Nov 16 13:23:47 2026
// Host        : Noctis_Win11 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/pog12/Documents/Vivado/mult_soc_sh/mult_soc_sh.gen/sources_1/bd/mult_bd_sh/ip/mult_bd_sh_sc_fifo_axi_0_0/mult_bd_sh_sc_fifo_axi_0_0_sim_netlist.v
// Design      : mult_bd_sh_sc_fifo_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_bd_sh_sc_fifo_axi_0_0,sc_fifo_axi_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sc_fifo_axi_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mult_bd_sh_sc_fifo_axi_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mult_bd_sh_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mult_bd_sh_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [28:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[24] = \^s00_axi_rdata [24];
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[19] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[18] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[17] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[16] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[15:0] = \^s00_axi_rdata [15:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mult_bd_sh_sc_fifo_axi_0_0_sc_fifo_axi_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata({\^s00_axi_rdata [28],\^s00_axi_rdata [24],\^s00_axi_rdata [19],\^s00_axi_rdata [15:0]}),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "sc_fifo" *) 
module mult_bd_sh_sc_fifo_axi_0_0_sc_fifo
   (D,
    rd_valid_reg,
    s00_axi_aclk,
    fifo_wr_pulse,
    Q,
    fifo_rd_pulse,
    fifo_rst_pulse,
    s00_axi_aresetn,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[1] ,
    rd_valid);
  output [15:0]D;
  output rd_valid_reg;
  input s00_axi_aclk;
  input fifo_wr_pulse;
  input [15:0]Q;
  input fifo_rd_pulse;
  input fifo_rst_pulse;
  input s00_axi_aresetn;
  input [3:0]\axi_rdata_reg[0] ;
  input \axi_rdata_reg[1] ;
  input rd_valid;

  wire [15:0]D;
  wire [15:0]Q;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire [3:0]\axi_rdata_reg[0] ;
  wire \axi_rdata_reg[1] ;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count[5]_i_4_n_0 ;
  wire \count[5]_i_5_n_0 ;
  wire \count[5]_i_6_n_0 ;
  wire do_read;
  wire do_write;
  wire do_write0;
  wire [5:0]fifo_data_count;
  wire fifo_rd_pulse;
  wire fifo_rst_pulse;
  wire fifo_srst;
  wire fifo_valid;
  wire fifo_wr_pulse;
  wire mem_reg_i_1_n_0;
  wire [4:0]plusOp;
  wire [4:0]plusOp_0;
  wire [15:0]rd_data;
  wire [4:0]rd_ptr;
  wire \rd_ptr[4]_i_3_n_0 ;
  wire rd_valid;
  wire rd_valid_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \valid_pipe[0]_i_1_n_0 ;
  wire [4:0]wr_ptr_reg;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] [0]),
        .I2(\axi_rdata_reg[0] [1]),
        .I3(\axi_rdata_reg[0] [3]),
        .I4(\axi_rdata_reg[0] [2]),
        .I5(\axi_rdata[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000E23300)) 
    \axi_rdata[0]_i_2 
       (.I0(rd_data[0]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(fifo_data_count[0]),
        .I3(\axi_rdata_reg[0] [3]),
        .I4(\axi_rdata_reg[0] [2]),
        .I5(\axi_rdata_reg[0] [0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \axi_rdata[0]_i_3 
       (.I0(fifo_data_count[0]),
        .I1(fifo_data_count[1]),
        .I2(fifo_data_count[2]),
        .I3(fifo_data_count[3]),
        .I4(fifo_data_count[4]),
        .I5(fifo_data_count[5]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[10]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[11]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[12]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h44000040)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[0] [3]),
        .I1(\axi_rdata_reg[0] [2]),
        .I2(rd_data[13]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[14]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[15]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h3000B0B030008080)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] [0]),
        .I2(\axi_rdata_reg[1] ),
        .I3(fifo_data_count[1]),
        .I4(\axi_rdata_reg[0] [1]),
        .I5(rd_data[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \axi_rdata[1]_i_2 
       (.I0(fifo_data_count[3]),
        .I1(fifo_data_count[2]),
        .I2(fifo_data_count[4]),
        .I3(fifo_data_count[5]),
        .I4(fifo_data_count[1]),
        .I5(fifo_data_count[0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .I2(fifo_data_count[1]),
        .I3(\axi_rdata_reg[1] ),
        .I4(\axi_rdata_reg[0] [1]),
        .I5(\axi_rdata_reg[0] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000000C0000000AF)) 
    \axi_rdata[2]_i_2 
       (.I0(rd_data[2]),
        .I1(fifo_data_count[2]),
        .I2(\axi_rdata_reg[0] [2]),
        .I3(\axi_rdata_reg[0] [3]),
        .I4(\axi_rdata_reg[0] [0]),
        .I5(\axi_rdata_reg[0] [1]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[2]_i_3 
       (.I0(fifo_data_count[5]),
        .I1(fifo_data_count[4]),
        .I2(fifo_data_count[3]),
        .I3(fifo_data_count[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8888888A88)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[1] ),
        .I1(\axi_rdata[3]_i_2_n_0 ),
        .I2(\axi_rdata_reg[0] [0]),
        .I3(rd_data[3]),
        .I4(\axi_rdata_reg[0] [1]),
        .I5(fifo_data_count[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00F40000)) 
    \axi_rdata[3]_i_2 
       (.I0(\count[4]_i_2_n_0 ),
        .I1(fifo_data_count[4]),
        .I2(fifo_data_count[5]),
        .I3(\axi_rdata_reg[0] [1]),
        .I4(\axi_rdata_reg[0] [0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8A80A0A08A80)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[1] ),
        .I1(rd_valid),
        .I2(\axi_rdata_reg[0] [0]),
        .I3(rd_data[4]),
        .I4(\axi_rdata_reg[0] [1]),
        .I5(fifo_data_count[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \axi_rdata[5]_i_1 
       (.I0(rd_data[5]),
        .I1(\axi_rdata_reg[0] [1]),
        .I2(fifo_data_count[5]),
        .I3(\axi_rdata_reg[0] [2]),
        .I4(\axi_rdata_reg[0] [3]),
        .I5(\axi_rdata_reg[0] [0]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[6]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[7]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[8]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[0] [1]),
        .I1(\axi_rdata_reg[0] [3]),
        .I2(rd_data[9]),
        .I3(\axi_rdata_reg[0] [0]),
        .I4(\axi_rdata_reg[0] [2]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \count[0]_i_1 
       (.I0(fifo_rst_pulse),
        .I1(s00_axi_aresetn),
        .I2(\count[5]_i_4_n_0 ),
        .I3(fifo_data_count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004404040400440)) 
    \count[1]_i_1 
       (.I0(fifo_rst_pulse),
        .I1(s00_axi_aresetn),
        .I2(fifo_data_count[1]),
        .I3(do_read),
        .I4(do_write),
        .I5(fifo_data_count[0]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AA8AA00800200)) 
    \count[2]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(fifo_data_count[1]),
        .I2(do_write),
        .I3(do_read),
        .I4(fifo_data_count[0]),
        .I5(fifo_data_count[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A20AA008A20A802)) 
    \count[3]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count[5]_i_4_n_0 ),
        .I2(fifo_data_count[2]),
        .I3(fifo_data_count[3]),
        .I4(\count[3]_i_2_n_0 ),
        .I5(\count[3]_i_3_n_0 ),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000202000000000)) 
    \count[3]_i_2 
       (.I0(fifo_data_count[1]),
        .I1(\axi_rdata[1]_i_2_n_0 ),
        .I2(fifo_wr_pulse),
        .I3(\axi_rdata[0]_i_3_n_0 ),
        .I4(fifo_rd_pulse),
        .I5(fifo_data_count[0]),
        .O(\count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5553FFFF0000)) 
    \count[3]_i_3 
       (.I0(fifo_rd_pulse),
        .I1(fifo_data_count[5]),
        .I2(fifo_data_count[4]),
        .I3(\rd_ptr[4]_i_3_n_0 ),
        .I4(\count[5]_i_6_n_0 ),
        .I5(fifo_wr_pulse),
        .O(\count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8822228888888288)) 
    \count[4]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(fifo_data_count[4]),
        .I2(\count[4]_i_2_n_0 ),
        .I3(do_write),
        .I4(do_read),
        .I5(\count[5]_i_3_n_0 ),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[4]_i_2 
       (.I0(fifo_data_count[3]),
        .I1(fifo_data_count[2]),
        .I2(fifo_data_count[0]),
        .I3(fifo_data_count[1]),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888222888888288)) 
    \count[5]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(fifo_data_count[5]),
        .I2(fifo_data_count[4]),
        .I3(\count[5]_i_3_n_0 ),
        .I4(\count[5]_i_4_n_0 ),
        .I5(\count[5]_i_5_n_0 ),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(fifo_rst_pulse),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0303030101030101)) 
    \count[5]_i_3 
       (.I0(fifo_wr_pulse),
        .I1(\count[5]_i_6_n_0 ),
        .I2(\rd_ptr[4]_i_3_n_0 ),
        .I3(fifo_data_count[4]),
        .I4(fifo_data_count[5]),
        .I5(fifo_rd_pulse),
        .O(\count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9A855555557)) 
    \count[5]_i_4 
       (.I0(fifo_rd_pulse),
        .I1(\rd_ptr[4]_i_3_n_0 ),
        .I2(fifo_data_count[4]),
        .I3(fifo_data_count[5]),
        .I4(\count[5]_i_6_n_0 ),
        .I5(fifo_wr_pulse),
        .O(\count[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000000D0)) 
    \count[5]_i_5 
       (.I0(fifo_rd_pulse),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(fifo_wr_pulse),
        .I3(\axi_rdata[1]_i_2_n_0 ),
        .I4(\count[4]_i_2_n_0 ),
        .O(\count[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[5]_i_6 
       (.I0(fifo_data_count[1]),
        .I1(fifo_data_count[0]),
        .O(\count[5]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(fifo_data_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(fifo_data_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(fifo_data_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(fifo_data_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .Q(fifo_data_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[5]_i_1_n_0 ),
        .Q(fifo_data_count[5]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 5}}" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "U0/sc_fifo_axi_v1_0_S00_AXI_inst/sc_fifo_inst/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "992" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,wr_ptr_reg,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,rd_ptr,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(Q),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(rd_data),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(fifo_wr_pulse),
        .ENBWREN(mem_reg_i_1_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(fifo_valid),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(fifo_srst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(fifo_srst),
        .WEA({do_write0,do_write0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hEF)) 
    mem_reg_i_1
       (.I0(do_read),
        .I1(fifo_rst_pulse),
        .I2(s00_axi_aresetn),
        .O(mem_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_2
       (.I0(fifo_rst_pulse),
        .I1(s00_axi_aresetn),
        .O(fifo_srst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    mem_reg_i_3
       (.I0(fifo_data_count[0]),
        .I1(fifo_data_count[1]),
        .I2(fifo_data_count[5]),
        .I3(fifo_data_count[4]),
        .I4(fifo_data_count[2]),
        .I5(fifo_data_count[3]),
        .O(do_write0));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(plusOp_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(plusOp_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1 
       (.I0(rd_ptr[2]),
        .I1(rd_ptr[1]),
        .I2(rd_ptr[0]),
        .O(plusOp_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr[3]),
        .I1(rd_ptr[0]),
        .I2(rd_ptr[1]),
        .I3(rd_ptr[2]),
        .O(plusOp_0[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rd_ptr[4]_i_1 
       (.I0(fifo_rd_pulse),
        .I1(fifo_data_count[5]),
        .I2(fifo_data_count[4]),
        .I3(\rd_ptr[4]_i_3_n_0 ),
        .I4(fifo_data_count[1]),
        .I5(fifo_data_count[0]),
        .O(do_read));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_ptr[4]_i_2 
       (.I0(rd_ptr[4]),
        .I1(rd_ptr[2]),
        .I2(rd_ptr[1]),
        .I3(rd_ptr[0]),
        .I4(rd_ptr[3]),
        .O(plusOp_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rd_ptr[4]_i_3 
       (.I0(fifo_data_count[2]),
        .I1(fifo_data_count[3]),
        .O(\rd_ptr[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(do_read),
        .D(plusOp_0[0]),
        .Q(rd_ptr[0]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(do_read),
        .D(plusOp_0[1]),
        .Q(rd_ptr[1]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(do_read),
        .D(plusOp_0[2]),
        .Q(rd_ptr[2]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(do_read),
        .D(plusOp_0[3]),
        .Q(rd_ptr[3]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(do_read),
        .D(plusOp_0[4]),
        .Q(rd_ptr[4]),
        .R(fifo_srst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000CE00)) 
    rd_valid_i_1
       (.I0(rd_valid),
        .I1(fifo_valid),
        .I2(fifo_rd_pulse),
        .I3(s00_axi_aresetn),
        .I4(fifo_rst_pulse),
        .O(rd_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \valid_pipe[0]_i_1 
       (.I0(do_read),
        .I1(s00_axi_aresetn),
        .I2(fifo_rst_pulse),
        .O(\valid_pipe[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_pipe_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\valid_pipe[0]_i_1_n_0 ),
        .Q(fifo_valid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg[2]),
        .I1(wr_ptr_reg[1]),
        .I2(wr_ptr_reg[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_1 
       (.I0(wr_ptr_reg[3]),
        .I1(wr_ptr_reg[0]),
        .I2(wr_ptr_reg[1]),
        .I3(wr_ptr_reg[2]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr[4]_i_1 
       (.I0(fifo_wr_pulse),
        .I1(\axi_rdata[1]_i_2_n_0 ),
        .O(do_write));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_ptr[4]_i_2 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(wr_ptr_reg[1]),
        .I3(wr_ptr_reg[0]),
        .I4(wr_ptr_reg[3]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(do_write),
        .D(plusOp[0]),
        .Q(wr_ptr_reg[0]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(do_write),
        .D(plusOp[1]),
        .Q(wr_ptr_reg[1]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(do_write),
        .D(plusOp[2]),
        .Q(wr_ptr_reg[2]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(do_write),
        .D(plusOp[3]),
        .Q(wr_ptr_reg[3]),
        .R(fifo_srst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(do_write),
        .D(plusOp[4]),
        .Q(wr_ptr_reg[4]),
        .R(fifo_srst));
endmodule

(* ORIG_REF_NAME = "sc_fifo_axi_v1_0" *) 
module mult_bd_sh_sc_fifo_axi_0_0_sc_fifo_axi_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [18:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input [15:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [18:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  mult_bd_sh_sc_fifo_axi_0_0_sc_fifo_axi_v1_0_S00_AXI sc_fifo_axi_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "sc_fifo_axi_v1_0_S00_AXI" *) 
module mult_bd_sh_sc_fifo_axi_0_0_sc_fifo_axi_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [18:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input [15:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [15:0]fifo_data_in;
  wire \fifo_data_in[15]_i_1_n_0 ;
  wire fifo_rd_pulse;
  wire fifo_rd_pulse0;
  wire fifo_rst_pulse;
  wire fifo_rst_pulse0;
  wire fifo_rst_pulse_i_2_n_0;
  wire fifo_srst0;
  wire fifo_wr_pulse;
  wire rd_valid;
  wire [30:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [18:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire sc_fifo_inst_n_16;
  wire [3:0]sel0;
  wire slv_reg_rden__0;
  wire [3:0]wr_index;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(fifo_srst0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(fifo_srst0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(fifo_srst0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(fifo_srst0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(fifo_srst0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(fifo_srst0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(wr_index[0]),
        .R(fifo_srst0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(wr_index[1]),
        .R(fifo_srst0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(wr_index[2]),
        .R(fifo_srst0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(wr_index[3]),
        .R(fifo_srst0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(fifo_srst0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(fifo_srst0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(fifo_srst0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(reg_data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[16]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[17]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[18]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(fifo_srst0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(fifo_srst0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(fifo_srst0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(fifo_srst0));
  LUT3 #(
    .INIT(8'h08)) 
    \fifo_data_in[15]_i_1 
       (.I0(fifo_rst_pulse_i_2_n_0),
        .I1(wr_index[1]),
        .I2(wr_index[0]),
        .O(\fifo_data_in[15]_i_1_n_0 ));
  FDRE \fifo_data_in_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(fifo_data_in[0]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(fifo_data_in[10]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(fifo_data_in[11]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(fifo_data_in[12]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(fifo_data_in[13]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(fifo_data_in[14]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(fifo_data_in[15]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(fifo_data_in[1]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(fifo_data_in[2]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(fifo_data_in[3]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(fifo_data_in[4]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(fifo_data_in[5]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(fifo_data_in[6]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(fifo_data_in[7]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(fifo_data_in[8]),
        .R(fifo_srst0));
  FDRE \fifo_data_in_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\fifo_data_in[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(fifo_data_in[9]),
        .R(fifo_srst0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    fifo_rd_pulse_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(wr_index[1]),
        .I2(fifo_rst_pulse_i_2_n_0),
        .I3(wr_index[0]),
        .O(fifo_rd_pulse0));
  FDRE fifo_rd_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_rd_pulse0),
        .Q(fifo_rd_pulse),
        .R(fifo_srst0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    fifo_rst_pulse_i_1
       (.I0(s00_axi_wdata[0]),
        .I1(wr_index[0]),
        .I2(fifo_rst_pulse_i_2_n_0),
        .I3(wr_index[1]),
        .O(fifo_rst_pulse0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    fifo_rst_pulse_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(wr_index[2]),
        .I5(wr_index[3]),
        .O(fifo_rst_pulse_i_2_n_0));
  FDRE fifo_rst_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_rst_pulse0),
        .Q(fifo_rst_pulse),
        .R(fifo_srst0));
  FDRE fifo_wr_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\fifo_data_in[15]_i_1_n_0 ),
        .Q(fifo_wr_pulse),
        .R(fifo_srst0));
  FDRE rd_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sc_fifo_inst_n_16),
        .Q(rd_valid),
        .R(1'b0));
  mult_bd_sh_sc_fifo_axi_0_0_sc_fifo sc_fifo_inst
       (.D(reg_data_out[15:0]),
        .Q(fifo_data_in),
        .\axi_rdata_reg[0] (sel0),
        .\axi_rdata_reg[1] (\axi_rdata[4]_i_2_n_0 ),
        .fifo_rd_pulse(fifo_rd_pulse),
        .fifo_rst_pulse(fifo_rst_pulse),
        .fifo_wr_pulse(fifo_wr_pulse),
        .rd_valid(rd_valid),
        .rd_valid_reg(sc_fifo_inst_n_16),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

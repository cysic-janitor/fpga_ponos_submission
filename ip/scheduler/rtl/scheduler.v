// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2_AR000035788 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Mar 19 11:51:13 2024
// Host        : Zeus running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog ip/scheduler/netlist/scheduler.v -force
// Design      : axi_m_wr
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ADDR_INCR = "1" *) (* C_ADDR_W = "64" *) (* C_BR_EN = "0" *) 
(* C_BURST_LEN = "256" *) (* C_DATA_W = "32" *) (* C_LOG_NUM_TRANSACTIONS = "12" *) 
(* C_MAX_LENGTH_W = "32" *) (* LP_LOG_ADDR_INCR = "0" *) (* LP_LOG_BURST_LEN = "8" *) 
(* LP_LOG_DATA_W = "5" *) (* LP_LOG_MAX_W_TO_AW = "8" *) (* LP_LOG_NUM_TRANSACTIONS = "24" *) 
(* LP_LOG_TRANSACTION_OFFSET = "10" *) (* LP_TRANSACTION_CNTR_W = "24" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module axi_m_wr
   (clk,
    rst_n,
    ctrl_start_i,
    ctrl_offset_i,
    ctrl_size_i,
    ctrl_done_o,
    axis_s_tvalid_i,
    axis_s_tdata_i,
    axis_s_tready_o,
    axi_m_awaddr_o,
    axi_m_awlen_o,
    axi_m_awsize_o,
    axi_m_awvalid_o,
    axi_m_awready_i,
    axi_m_wdata_o,
    axi_m_wstrb_o,
    axi_m_wlast_o,
    axi_m_wvalid_o,
    axi_m_wready_i,
    axi_m_bresp_i,
    axi_m_bvalid_i,
    axi_m_bready_o);
  input clk;
  input rst_n;
  input ctrl_start_i;
  input [63:0]ctrl_offset_i;
  input [31:0]ctrl_size_i;
  output ctrl_done_o;
  input axis_s_tvalid_i;
  input [31:0]axis_s_tdata_i;
  output axis_s_tready_o;
  output [63:0]axi_m_awaddr_o;
  output [7:0]axi_m_awlen_o;
  output [2:0]axi_m_awsize_o;
  output axi_m_awvalid_o;
  input axi_m_awready_i;
  output [31:0]axi_m_wdata_o;
  output [3:0]axi_m_wstrb_o;
  output axi_m_wlast_o;
  output axi_m_wvalid_o;
  input axi_m_wready_i;
  input [1:0]axi_m_bresp_i;
  input axi_m_bvalid_i;
  output axi_m_bready_o;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[16]_i_10_n_0 ;
  wire \addr[16]_i_11_n_0 ;
  wire \addr[16]_i_12_n_0 ;
  wire \addr[16]_i_13_n_0 ;
  wire \addr[16]_i_14_n_0 ;
  wire \addr[16]_i_15_n_0 ;
  wire \addr[16]_i_16_n_0 ;
  wire \addr[16]_i_2_n_0 ;
  wire \addr[16]_i_3_n_0 ;
  wire \addr[16]_i_4_n_0 ;
  wire \addr[16]_i_5_n_0 ;
  wire \addr[16]_i_6_n_0 ;
  wire \addr[16]_i_7_n_0 ;
  wire \addr[16]_i_8_n_0 ;
  wire \addr[16]_i_9_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[24]_i_10_n_0 ;
  wire \addr[24]_i_11_n_0 ;
  wire \addr[24]_i_12_n_0 ;
  wire \addr[24]_i_13_n_0 ;
  wire \addr[24]_i_14_n_0 ;
  wire \addr[24]_i_15_n_0 ;
  wire \addr[24]_i_16_n_0 ;
  wire \addr[24]_i_17_n_0 ;
  wire \addr[24]_i_2_n_0 ;
  wire \addr[24]_i_3_n_0 ;
  wire \addr[24]_i_4_n_0 ;
  wire \addr[24]_i_5_n_0 ;
  wire \addr[24]_i_6_n_0 ;
  wire \addr[24]_i_7_n_0 ;
  wire \addr[24]_i_8_n_0 ;
  wire \addr[24]_i_9_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[32]_i_10_n_0 ;
  wire \addr[32]_i_11_n_0 ;
  wire \addr[32]_i_12_n_0 ;
  wire \addr[32]_i_13_n_0 ;
  wire \addr[32]_i_14_n_0 ;
  wire \addr[32]_i_15_n_0 ;
  wire \addr[32]_i_16_n_0 ;
  wire \addr[32]_i_17_n_0 ;
  wire \addr[32]_i_2_n_0 ;
  wire \addr[32]_i_3_n_0 ;
  wire \addr[32]_i_4_n_0 ;
  wire \addr[32]_i_5_n_0 ;
  wire \addr[32]_i_6_n_0 ;
  wire \addr[32]_i_7_n_0 ;
  wire \addr[32]_i_8_n_0 ;
  wire \addr[32]_i_9_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[40]_i_10_n_0 ;
  wire \addr[40]_i_2_n_0 ;
  wire \addr[40]_i_3_n_0 ;
  wire \addr[40]_i_4_n_0 ;
  wire \addr[40]_i_5_n_0 ;
  wire \addr[40]_i_6_n_0 ;
  wire \addr[40]_i_7_n_0 ;
  wire \addr[40]_i_8_n_0 ;
  wire \addr[40]_i_9_n_0 ;
  wire \addr[48]_i_2_n_0 ;
  wire \addr[48]_i_3_n_0 ;
  wire \addr[48]_i_4_n_0 ;
  wire \addr[48]_i_5_n_0 ;
  wire \addr[48]_i_6_n_0 ;
  wire \addr[48]_i_7_n_0 ;
  wire \addr[48]_i_8_n_0 ;
  wire \addr[48]_i_9_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[56]_i_2_n_0 ;
  wire \addr[56]_i_3_n_0 ;
  wire \addr[56]_i_4_n_0 ;
  wire \addr[56]_i_5_n_0 ;
  wire \addr[56]_i_6_n_0 ;
  wire \addr[56]_i_7_n_0 ;
  wire \addr[56]_i_8_n_0 ;
  wire \addr[56]_i_9_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[63]_i_10_n_0 ;
  wire \addr[63]_i_2_n_0 ;
  wire \addr[63]_i_4_n_0 ;
  wire \addr[63]_i_5_n_0 ;
  wire \addr[63]_i_6_n_0 ;
  wire \addr[63]_i_7_n_0 ;
  wire \addr[63]_i_8_n_0 ;
  wire \addr[63]_i_9_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire \addr[8]_i_1_n_0 ;
  wire \addr_reg[16]_i_1_n_0 ;
  wire \addr_reg[16]_i_1_n_1 ;
  wire \addr_reg[16]_i_1_n_10 ;
  wire \addr_reg[16]_i_1_n_11 ;
  wire \addr_reg[16]_i_1_n_12 ;
  wire \addr_reg[16]_i_1_n_13 ;
  wire \addr_reg[16]_i_1_n_14 ;
  wire \addr_reg[16]_i_1_n_15 ;
  wire \addr_reg[16]_i_1_n_2 ;
  wire \addr_reg[16]_i_1_n_3 ;
  wire \addr_reg[16]_i_1_n_4 ;
  wire \addr_reg[16]_i_1_n_5 ;
  wire \addr_reg[16]_i_1_n_6 ;
  wire \addr_reg[16]_i_1_n_7 ;
  wire \addr_reg[16]_i_1_n_8 ;
  wire \addr_reg[16]_i_1_n_9 ;
  wire \addr_reg[24]_i_1_n_0 ;
  wire \addr_reg[24]_i_1_n_1 ;
  wire \addr_reg[24]_i_1_n_10 ;
  wire \addr_reg[24]_i_1_n_11 ;
  wire \addr_reg[24]_i_1_n_12 ;
  wire \addr_reg[24]_i_1_n_13 ;
  wire \addr_reg[24]_i_1_n_14 ;
  wire \addr_reg[24]_i_1_n_15 ;
  wire \addr_reg[24]_i_1_n_2 ;
  wire \addr_reg[24]_i_1_n_3 ;
  wire \addr_reg[24]_i_1_n_4 ;
  wire \addr_reg[24]_i_1_n_5 ;
  wire \addr_reg[24]_i_1_n_6 ;
  wire \addr_reg[24]_i_1_n_7 ;
  wire \addr_reg[24]_i_1_n_8 ;
  wire \addr_reg[24]_i_1_n_9 ;
  wire \addr_reg[32]_i_1_n_0 ;
  wire \addr_reg[32]_i_1_n_1 ;
  wire \addr_reg[32]_i_1_n_10 ;
  wire \addr_reg[32]_i_1_n_11 ;
  wire \addr_reg[32]_i_1_n_12 ;
  wire \addr_reg[32]_i_1_n_13 ;
  wire \addr_reg[32]_i_1_n_14 ;
  wire \addr_reg[32]_i_1_n_15 ;
  wire \addr_reg[32]_i_1_n_2 ;
  wire \addr_reg[32]_i_1_n_3 ;
  wire \addr_reg[32]_i_1_n_4 ;
  wire \addr_reg[32]_i_1_n_5 ;
  wire \addr_reg[32]_i_1_n_6 ;
  wire \addr_reg[32]_i_1_n_7 ;
  wire \addr_reg[32]_i_1_n_8 ;
  wire \addr_reg[32]_i_1_n_9 ;
  wire \addr_reg[40]_i_1_n_0 ;
  wire \addr_reg[40]_i_1_n_1 ;
  wire \addr_reg[40]_i_1_n_10 ;
  wire \addr_reg[40]_i_1_n_11 ;
  wire \addr_reg[40]_i_1_n_12 ;
  wire \addr_reg[40]_i_1_n_13 ;
  wire \addr_reg[40]_i_1_n_14 ;
  wire \addr_reg[40]_i_1_n_15 ;
  wire \addr_reg[40]_i_1_n_2 ;
  wire \addr_reg[40]_i_1_n_3 ;
  wire \addr_reg[40]_i_1_n_4 ;
  wire \addr_reg[40]_i_1_n_5 ;
  wire \addr_reg[40]_i_1_n_6 ;
  wire \addr_reg[40]_i_1_n_7 ;
  wire \addr_reg[40]_i_1_n_8 ;
  wire \addr_reg[40]_i_1_n_9 ;
  wire \addr_reg[48]_i_1_n_0 ;
  wire \addr_reg[48]_i_1_n_1 ;
  wire \addr_reg[48]_i_1_n_10 ;
  wire \addr_reg[48]_i_1_n_11 ;
  wire \addr_reg[48]_i_1_n_12 ;
  wire \addr_reg[48]_i_1_n_13 ;
  wire \addr_reg[48]_i_1_n_14 ;
  wire \addr_reg[48]_i_1_n_15 ;
  wire \addr_reg[48]_i_1_n_2 ;
  wire \addr_reg[48]_i_1_n_3 ;
  wire \addr_reg[48]_i_1_n_4 ;
  wire \addr_reg[48]_i_1_n_5 ;
  wire \addr_reg[48]_i_1_n_6 ;
  wire \addr_reg[48]_i_1_n_7 ;
  wire \addr_reg[48]_i_1_n_8 ;
  wire \addr_reg[48]_i_1_n_9 ;
  wire \addr_reg[56]_i_1_n_0 ;
  wire \addr_reg[56]_i_1_n_1 ;
  wire \addr_reg[56]_i_1_n_10 ;
  wire \addr_reg[56]_i_1_n_11 ;
  wire \addr_reg[56]_i_1_n_12 ;
  wire \addr_reg[56]_i_1_n_13 ;
  wire \addr_reg[56]_i_1_n_14 ;
  wire \addr_reg[56]_i_1_n_15 ;
  wire \addr_reg[56]_i_1_n_2 ;
  wire \addr_reg[56]_i_1_n_3 ;
  wire \addr_reg[56]_i_1_n_4 ;
  wire \addr_reg[56]_i_1_n_5 ;
  wire \addr_reg[56]_i_1_n_6 ;
  wire \addr_reg[56]_i_1_n_7 ;
  wire \addr_reg[56]_i_1_n_8 ;
  wire \addr_reg[56]_i_1_n_9 ;
  wire \addr_reg[63]_i_3_n_10 ;
  wire \addr_reg[63]_i_3_n_11 ;
  wire \addr_reg[63]_i_3_n_12 ;
  wire \addr_reg[63]_i_3_n_13 ;
  wire \addr_reg[63]_i_3_n_14 ;
  wire \addr_reg[63]_i_3_n_15 ;
  wire \addr_reg[63]_i_3_n_2 ;
  wire \addr_reg[63]_i_3_n_3 ;
  wire \addr_reg[63]_i_3_n_4 ;
  wire \addr_reg[63]_i_3_n_5 ;
  wire \addr_reg[63]_i_3_n_6 ;
  wire \addr_reg[63]_i_3_n_7 ;
  wire \addr_reg[63]_i_3_n_9 ;
  wire aw_idle;
  wire awxfer;
  wire \awxfer_num[0]_i_1_n_0 ;
  wire \awxfer_num[23]_i_1_n_0 ;
  wire \awxfer_num_reg[16]_i_1_n_0 ;
  wire \awxfer_num_reg[16]_i_1_n_1 ;
  wire \awxfer_num_reg[16]_i_1_n_10 ;
  wire \awxfer_num_reg[16]_i_1_n_11 ;
  wire \awxfer_num_reg[16]_i_1_n_12 ;
  wire \awxfer_num_reg[16]_i_1_n_13 ;
  wire \awxfer_num_reg[16]_i_1_n_14 ;
  wire \awxfer_num_reg[16]_i_1_n_15 ;
  wire \awxfer_num_reg[16]_i_1_n_2 ;
  wire \awxfer_num_reg[16]_i_1_n_3 ;
  wire \awxfer_num_reg[16]_i_1_n_4 ;
  wire \awxfer_num_reg[16]_i_1_n_5 ;
  wire \awxfer_num_reg[16]_i_1_n_6 ;
  wire \awxfer_num_reg[16]_i_1_n_7 ;
  wire \awxfer_num_reg[16]_i_1_n_8 ;
  wire \awxfer_num_reg[16]_i_1_n_9 ;
  wire \awxfer_num_reg[23]_i_3_n_10 ;
  wire \awxfer_num_reg[23]_i_3_n_11 ;
  wire \awxfer_num_reg[23]_i_3_n_12 ;
  wire \awxfer_num_reg[23]_i_3_n_13 ;
  wire \awxfer_num_reg[23]_i_3_n_14 ;
  wire \awxfer_num_reg[23]_i_3_n_15 ;
  wire \awxfer_num_reg[23]_i_3_n_2 ;
  wire \awxfer_num_reg[23]_i_3_n_3 ;
  wire \awxfer_num_reg[23]_i_3_n_4 ;
  wire \awxfer_num_reg[23]_i_3_n_5 ;
  wire \awxfer_num_reg[23]_i_3_n_6 ;
  wire \awxfer_num_reg[23]_i_3_n_7 ;
  wire \awxfer_num_reg[23]_i_3_n_9 ;
  wire \awxfer_num_reg[8]_i_1_n_0 ;
  wire \awxfer_num_reg[8]_i_1_n_1 ;
  wire \awxfer_num_reg[8]_i_1_n_10 ;
  wire \awxfer_num_reg[8]_i_1_n_11 ;
  wire \awxfer_num_reg[8]_i_1_n_12 ;
  wire \awxfer_num_reg[8]_i_1_n_13 ;
  wire \awxfer_num_reg[8]_i_1_n_14 ;
  wire \awxfer_num_reg[8]_i_1_n_15 ;
  wire \awxfer_num_reg[8]_i_1_n_2 ;
  wire \awxfer_num_reg[8]_i_1_n_3 ;
  wire \awxfer_num_reg[8]_i_1_n_4 ;
  wire \awxfer_num_reg[8]_i_1_n_5 ;
  wire \awxfer_num_reg[8]_i_1_n_6 ;
  wire \awxfer_num_reg[8]_i_1_n_7 ;
  wire \awxfer_num_reg[8]_i_1_n_8 ;
  wire \awxfer_num_reg[8]_i_1_n_9 ;
  wire \awxfer_num_reg_n_0_[0] ;
  wire \awxfer_num_reg_n_0_[10] ;
  wire \awxfer_num_reg_n_0_[11] ;
  wire \awxfer_num_reg_n_0_[12] ;
  wire \awxfer_num_reg_n_0_[13] ;
  wire \awxfer_num_reg_n_0_[14] ;
  wire \awxfer_num_reg_n_0_[15] ;
  wire \awxfer_num_reg_n_0_[16] ;
  wire \awxfer_num_reg_n_0_[17] ;
  wire \awxfer_num_reg_n_0_[18] ;
  wire \awxfer_num_reg_n_0_[19] ;
  wire \awxfer_num_reg_n_0_[1] ;
  wire \awxfer_num_reg_n_0_[20] ;
  wire \awxfer_num_reg_n_0_[21] ;
  wire \awxfer_num_reg_n_0_[22] ;
  wire \awxfer_num_reg_n_0_[23] ;
  wire \awxfer_num_reg_n_0_[2] ;
  wire \awxfer_num_reg_n_0_[3] ;
  wire \awxfer_num_reg_n_0_[4] ;
  wire \awxfer_num_reg_n_0_[5] ;
  wire \awxfer_num_reg_n_0_[6] ;
  wire \awxfer_num_reg_n_0_[7] ;
  wire \awxfer_num_reg_n_0_[8] ;
  wire \awxfer_num_reg_n_0_[9] ;
  wire [63:0]axi_m_awaddr_o;
  wire [7:0]axi_m_awlen_o;
  wire axi_m_awready_i;
  wire axi_m_awvalid_o;
  wire axi_m_bvalid_i;
  wire axi_m_wlast_o;
  wire axi_m_wready_i;
  wire [31:0]axis_s_tdata_i;
  wire axis_s_tvalid_i;
  wire clk;
  wire ctrl_done_o;
  wire [63:0]ctrl_offset_i;
  wire [63:0]ctrl_offset_r;
  wire [31:0]ctrl_size_i;
  wire ctrl_start_i;
  wire [7:0]final_burst_len;
  wire [7:0]final_burst_len0;
  wire \final_burst_len[7]_i_2_n_0 ;
  wire i_aw_trans_cntr_n_0;
  wire i_aw_trans_cntr_n_9;
  wire i_burst_cntr_n_1;
  wire i_burst_cntr_n_2;
  wire i_w_to_aw_cntr_n_0;
  wire i_w_trans_cntr_n_0;
  wire [23:0]num_transactions;
  wire [23:0]num_transactions0;
  wire \num_transactions[15]_i_2_n_0 ;
  wire \num_transactions[15]_i_3_n_0 ;
  wire \num_transactions[15]_i_4_n_0 ;
  wire \num_transactions[15]_i_5_n_0 ;
  wire \num_transactions[15]_i_6_n_0 ;
  wire \num_transactions[15]_i_7_n_0 ;
  wire \num_transactions[15]_i_8_n_0 ;
  wire \num_transactions[15]_i_9_n_0 ;
  wire \num_transactions[23]_i_2_n_0 ;
  wire \num_transactions[23]_i_3_n_0 ;
  wire \num_transactions[23]_i_4_n_0 ;
  wire \num_transactions[23]_i_5_n_0 ;
  wire \num_transactions[23]_i_6_n_0 ;
  wire \num_transactions[23]_i_7_n_0 ;
  wire \num_transactions[23]_i_8_n_0 ;
  wire \num_transactions[23]_i_9_n_0 ;
  wire \num_transactions[7]_i_2_n_0 ;
  wire \num_transactions[7]_i_3_n_0 ;
  wire \num_transactions[7]_i_4_n_0 ;
  wire \num_transactions[7]_i_5_n_0 ;
  wire \num_transactions[7]_i_6_n_0 ;
  wire \num_transactions[7]_i_7_n_0 ;
  wire \num_transactions[7]_i_8_n_0 ;
  wire \num_transactions[7]_i_9_n_0 ;
  wire \num_transactions_reg[15]_i_1_n_0 ;
  wire \num_transactions_reg[15]_i_1_n_1 ;
  wire \num_transactions_reg[15]_i_1_n_2 ;
  wire \num_transactions_reg[15]_i_1_n_3 ;
  wire \num_transactions_reg[15]_i_1_n_4 ;
  wire \num_transactions_reg[15]_i_1_n_5 ;
  wire \num_transactions_reg[15]_i_1_n_6 ;
  wire \num_transactions_reg[15]_i_1_n_7 ;
  wire \num_transactions_reg[23]_i_1_n_1 ;
  wire \num_transactions_reg[23]_i_1_n_2 ;
  wire \num_transactions_reg[23]_i_1_n_3 ;
  wire \num_transactions_reg[23]_i_1_n_4 ;
  wire \num_transactions_reg[23]_i_1_n_5 ;
  wire \num_transactions_reg[23]_i_1_n_6 ;
  wire \num_transactions_reg[23]_i_1_n_7 ;
  wire \num_transactions_reg[7]_i_1_n_0 ;
  wire \num_transactions_reg[7]_i_1_n_1 ;
  wire \num_transactions_reg[7]_i_1_n_2 ;
  wire \num_transactions_reg[7]_i_1_n_3 ;
  wire \num_transactions_reg[7]_i_1_n_4 ;
  wire \num_transactions_reg[7]_i_1_n_5 ;
  wire \num_transactions_reg[7]_i_1_n_6 ;
  wire \num_transactions_reg[7]_i_1_n_7 ;
  wire rst_n;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_pulse;
  wire wfirst_pulse0;
  wire wfirst_q;
  wire wfirst_q0;

  assign axi_m_awsize_o[2] = \<const0> ;
  assign axi_m_awsize_o[1] = \<const1> ;
  assign axi_m_awsize_o[0] = \<const0> ;
  assign axi_m_bready_o = \<const1> ;
  assign axi_m_wdata_o[31:0] = axis_s_tdata_i;
  assign axi_m_wstrb_o[3] = \<const1> ;
  assign axi_m_wstrb_o[2] = \<const1> ;
  assign axi_m_wstrb_o[1] = \<const1> ;
  assign axi_m_wstrb_o[0] = \<const1> ;
  assign axi_m_wvalid_o = axis_s_tvalid_i;
  assign axis_s_tready_o = axi_m_wready_i;
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0]_i_1 
       (.I0(ctrl_offset_i[0]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_10 
       (.I0(\awxfer_num_reg_n_0_[5] ),
        .I1(ctrl_offset_r[15]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[15]),
        .O(\addr[16]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_11 
       (.I0(\awxfer_num_reg_n_0_[4] ),
        .I1(ctrl_offset_r[14]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[14]),
        .O(\addr[16]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_12 
       (.I0(\awxfer_num_reg_n_0_[3] ),
        .I1(ctrl_offset_r[13]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[13]),
        .O(\addr[16]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_13 
       (.I0(\awxfer_num_reg_n_0_[2] ),
        .I1(ctrl_offset_r[12]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[12]),
        .O(\addr[16]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_14 
       (.I0(\awxfer_num_reg_n_0_[1] ),
        .I1(ctrl_offset_r[11]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[11]),
        .O(\addr[16]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_15 
       (.I0(\awxfer_num_reg_n_0_[0] ),
        .I1(ctrl_offset_r[10]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[10]),
        .O(\addr[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[16]_i_16 
       (.I0(ctrl_offset_i[9]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[9]),
        .O(\addr[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_2 
       (.I0(\awxfer_num_reg_n_0_[6] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_3 
       (.I0(\awxfer_num_reg_n_0_[5] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_4 
       (.I0(\awxfer_num_reg_n_0_[4] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_5 
       (.I0(\awxfer_num_reg_n_0_[3] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_6 
       (.I0(\awxfer_num_reg_n_0_[2] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_7 
       (.I0(\awxfer_num_reg_n_0_[1] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[16]_i_8 
       (.I0(\awxfer_num_reg_n_0_[0] ),
        .I1(ctrl_start_i),
        .O(\addr[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[16]_i_9 
       (.I0(\awxfer_num_reg_n_0_[6] ),
        .I1(ctrl_offset_r[16]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[16]),
        .O(\addr[16]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1]_i_1 
       (.I0(ctrl_offset_i[1]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_10 
       (.I0(\awxfer_num_reg_n_0_[14] ),
        .I1(ctrl_offset_r[24]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[24]),
        .O(\addr[24]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_11 
       (.I0(\awxfer_num_reg_n_0_[13] ),
        .I1(ctrl_offset_r[23]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[23]),
        .O(\addr[24]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_12 
       (.I0(\awxfer_num_reg_n_0_[12] ),
        .I1(ctrl_offset_r[22]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[22]),
        .O(\addr[24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_13 
       (.I0(\awxfer_num_reg_n_0_[11] ),
        .I1(ctrl_offset_r[21]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[21]),
        .O(\addr[24]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_14 
       (.I0(\awxfer_num_reg_n_0_[10] ),
        .I1(ctrl_offset_r[20]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[20]),
        .O(\addr[24]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_15 
       (.I0(\awxfer_num_reg_n_0_[9] ),
        .I1(ctrl_offset_r[19]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[19]),
        .O(\addr[24]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_16 
       (.I0(\awxfer_num_reg_n_0_[8] ),
        .I1(ctrl_offset_r[18]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[18]),
        .O(\addr[24]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[24]_i_17 
       (.I0(\awxfer_num_reg_n_0_[7] ),
        .I1(ctrl_offset_r[17]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[17]),
        .O(\addr[24]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_2 
       (.I0(\awxfer_num_reg_n_0_[14] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_3 
       (.I0(\awxfer_num_reg_n_0_[13] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_4 
       (.I0(\awxfer_num_reg_n_0_[12] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_5 
       (.I0(\awxfer_num_reg_n_0_[11] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_6 
       (.I0(\awxfer_num_reg_n_0_[10] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_7 
       (.I0(\awxfer_num_reg_n_0_[9] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_8 
       (.I0(\awxfer_num_reg_n_0_[8] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[24]_i_9 
       (.I0(\awxfer_num_reg_n_0_[7] ),
        .I1(ctrl_start_i),
        .O(\addr[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[2]_i_1 
       (.I0(ctrl_offset_i[2]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[2]),
        .O(\addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_10 
       (.I0(\awxfer_num_reg_n_0_[22] ),
        .I1(ctrl_offset_r[32]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[32]),
        .O(\addr[32]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_11 
       (.I0(\awxfer_num_reg_n_0_[21] ),
        .I1(ctrl_offset_r[31]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[31]),
        .O(\addr[32]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_12 
       (.I0(\awxfer_num_reg_n_0_[20] ),
        .I1(ctrl_offset_r[30]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[30]),
        .O(\addr[32]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_13 
       (.I0(\awxfer_num_reg_n_0_[19] ),
        .I1(ctrl_offset_r[29]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[29]),
        .O(\addr[32]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_14 
       (.I0(\awxfer_num_reg_n_0_[18] ),
        .I1(ctrl_offset_r[28]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[28]),
        .O(\addr[32]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_15 
       (.I0(\awxfer_num_reg_n_0_[17] ),
        .I1(ctrl_offset_r[27]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[27]),
        .O(\addr[32]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_16 
       (.I0(\awxfer_num_reg_n_0_[16] ),
        .I1(ctrl_offset_r[26]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[26]),
        .O(\addr[32]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[32]_i_17 
       (.I0(\awxfer_num_reg_n_0_[15] ),
        .I1(ctrl_offset_r[25]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[25]),
        .O(\addr[32]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_2 
       (.I0(\awxfer_num_reg_n_0_[22] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_3 
       (.I0(\awxfer_num_reg_n_0_[21] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_4 
       (.I0(\awxfer_num_reg_n_0_[20] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_5 
       (.I0(\awxfer_num_reg_n_0_[19] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_6 
       (.I0(\awxfer_num_reg_n_0_[18] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_7 
       (.I0(\awxfer_num_reg_n_0_[17] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_8 
       (.I0(\awxfer_num_reg_n_0_[16] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[32]_i_9 
       (.I0(\awxfer_num_reg_n_0_[15] ),
        .I1(ctrl_start_i),
        .O(\addr[32]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[3]_i_1 
       (.I0(ctrl_offset_i[3]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \addr[40]_i_10 
       (.I0(\awxfer_num_reg_n_0_[23] ),
        .I1(ctrl_offset_r[33]),
        .I2(ctrl_start_i),
        .I3(ctrl_offset_i[33]),
        .O(\addr[40]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[40]_i_2 
       (.I0(\awxfer_num_reg_n_0_[23] ),
        .I1(ctrl_start_i),
        .O(\addr[40]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_3 
       (.I0(ctrl_offset_i[40]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[40]),
        .O(\addr[40]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_4 
       (.I0(ctrl_offset_i[39]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[39]),
        .O(\addr[40]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_5 
       (.I0(ctrl_offset_i[38]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[38]),
        .O(\addr[40]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_6 
       (.I0(ctrl_offset_i[37]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[37]),
        .O(\addr[40]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_7 
       (.I0(ctrl_offset_i[36]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[36]),
        .O(\addr[40]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_8 
       (.I0(ctrl_offset_i[35]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[35]),
        .O(\addr[40]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[40]_i_9 
       (.I0(ctrl_offset_i[34]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[34]),
        .O(\addr[40]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_2 
       (.I0(ctrl_offset_i[48]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[48]),
        .O(\addr[48]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_3 
       (.I0(ctrl_offset_i[47]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[47]),
        .O(\addr[48]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_4 
       (.I0(ctrl_offset_i[46]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[46]),
        .O(\addr[48]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_5 
       (.I0(ctrl_offset_i[45]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[45]),
        .O(\addr[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_6 
       (.I0(ctrl_offset_i[44]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[44]),
        .O(\addr[48]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_7 
       (.I0(ctrl_offset_i[43]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[43]),
        .O(\addr[48]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_8 
       (.I0(ctrl_offset_i[42]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[42]),
        .O(\addr[48]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[48]_i_9 
       (.I0(ctrl_offset_i[41]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[41]),
        .O(\addr[48]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[4]_i_1 
       (.I0(ctrl_offset_i[4]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[4]),
        .O(\addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_2 
       (.I0(ctrl_offset_i[56]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[56]),
        .O(\addr[56]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_3 
       (.I0(ctrl_offset_i[55]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[55]),
        .O(\addr[56]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_4 
       (.I0(ctrl_offset_i[54]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[54]),
        .O(\addr[56]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_5 
       (.I0(ctrl_offset_i[53]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[53]),
        .O(\addr[56]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_6 
       (.I0(ctrl_offset_i[52]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[52]),
        .O(\addr[56]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_7 
       (.I0(ctrl_offset_i[51]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[51]),
        .O(\addr[56]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_8 
       (.I0(ctrl_offset_i[50]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[50]),
        .O(\addr[56]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[56]_i_9 
       (.I0(ctrl_offset_i[49]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[49]),
        .O(\addr[56]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_i_1 
       (.I0(ctrl_offset_i[5]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[5]),
        .O(\addr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_10 
       (.I0(ctrl_offset_i[57]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[57]),
        .O(\addr[63]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr[63]_i_2 
       (.I0(ctrl_start_i),
        .I1(axi_m_awready_i),
        .I2(axi_m_awvalid_o),
        .O(\addr[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_4 
       (.I0(ctrl_offset_i[63]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[63]),
        .O(\addr[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_5 
       (.I0(ctrl_offset_i[62]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[62]),
        .O(\addr[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_6 
       (.I0(ctrl_offset_i[61]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[61]),
        .O(\addr[63]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_7 
       (.I0(ctrl_offset_i[60]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[60]),
        .O(\addr[63]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_8 
       (.I0(ctrl_offset_i[59]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[59]),
        .O(\addr[63]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_9 
       (.I0(ctrl_offset_i[58]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[58]),
        .O(\addr[63]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[6]_i_1 
       (.I0(ctrl_offset_i[6]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[6]),
        .O(\addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[7]_i_1 
       (.I0(ctrl_offset_i[7]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[7]),
        .O(\addr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[8]_i_1 
       (.I0(ctrl_offset_i[8]),
        .I1(ctrl_start_i),
        .I2(ctrl_offset_r[8]),
        .O(\addr[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[0]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[10]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[11]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[12] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[12]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[13] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[13]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[14] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[14]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[15] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[15]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[16] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[16]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[16]_i_1 
       (.CI(\<const0> ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[16]_i_1_n_0 ,\addr_reg[16]_i_1_n_1 ,\addr_reg[16]_i_1_n_2 ,\addr_reg[16]_i_1_n_3 ,\addr_reg[16]_i_1_n_4 ,\addr_reg[16]_i_1_n_5 ,\addr_reg[16]_i_1_n_6 ,\addr_reg[16]_i_1_n_7 }),
        .DI({\addr[16]_i_2_n_0 ,\addr[16]_i_3_n_0 ,\addr[16]_i_4_n_0 ,\addr[16]_i_5_n_0 ,\addr[16]_i_6_n_0 ,\addr[16]_i_7_n_0 ,\addr[16]_i_8_n_0 ,\<const0> }),
        .O({\addr_reg[16]_i_1_n_8 ,\addr_reg[16]_i_1_n_9 ,\addr_reg[16]_i_1_n_10 ,\addr_reg[16]_i_1_n_11 ,\addr_reg[16]_i_1_n_12 ,\addr_reg[16]_i_1_n_13 ,\addr_reg[16]_i_1_n_14 ,\addr_reg[16]_i_1_n_15 }),
        .S({\addr[16]_i_9_n_0 ,\addr[16]_i_10_n_0 ,\addr[16]_i_11_n_0 ,\addr[16]_i_12_n_0 ,\addr[16]_i_13_n_0 ,\addr[16]_i_14_n_0 ,\addr[16]_i_15_n_0 ,\addr[16]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[17] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[17]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[18] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[18]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[19] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[19]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[1]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[20] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[20]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[21] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[21]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[22] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[22]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[23] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[23]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[24] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[24]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[24]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[24]_i_1 
       (.CI(\addr_reg[16]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[24]_i_1_n_0 ,\addr_reg[24]_i_1_n_1 ,\addr_reg[24]_i_1_n_2 ,\addr_reg[24]_i_1_n_3 ,\addr_reg[24]_i_1_n_4 ,\addr_reg[24]_i_1_n_5 ,\addr_reg[24]_i_1_n_6 ,\addr_reg[24]_i_1_n_7 }),
        .DI({\addr[24]_i_2_n_0 ,\addr[24]_i_3_n_0 ,\addr[24]_i_4_n_0 ,\addr[24]_i_5_n_0 ,\addr[24]_i_6_n_0 ,\addr[24]_i_7_n_0 ,\addr[24]_i_8_n_0 ,\addr[24]_i_9_n_0 }),
        .O({\addr_reg[24]_i_1_n_8 ,\addr_reg[24]_i_1_n_9 ,\addr_reg[24]_i_1_n_10 ,\addr_reg[24]_i_1_n_11 ,\addr_reg[24]_i_1_n_12 ,\addr_reg[24]_i_1_n_13 ,\addr_reg[24]_i_1_n_14 ,\addr_reg[24]_i_1_n_15 }),
        .S({\addr[24]_i_10_n_0 ,\addr[24]_i_11_n_0 ,\addr[24]_i_12_n_0 ,\addr[24]_i_13_n_0 ,\addr[24]_i_14_n_0 ,\addr[24]_i_15_n_0 ,\addr[24]_i_16_n_0 ,\addr[24]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[25] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[25]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[26] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[26]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[27] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[27]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[28] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[28]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[29] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[29]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[2]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[30] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[30]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[31] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[31]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[32] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[32]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[32]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[32]_i_1 
       (.CI(\addr_reg[24]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[32]_i_1_n_0 ,\addr_reg[32]_i_1_n_1 ,\addr_reg[32]_i_1_n_2 ,\addr_reg[32]_i_1_n_3 ,\addr_reg[32]_i_1_n_4 ,\addr_reg[32]_i_1_n_5 ,\addr_reg[32]_i_1_n_6 ,\addr_reg[32]_i_1_n_7 }),
        .DI({\addr[32]_i_2_n_0 ,\addr[32]_i_3_n_0 ,\addr[32]_i_4_n_0 ,\addr[32]_i_5_n_0 ,\addr[32]_i_6_n_0 ,\addr[32]_i_7_n_0 ,\addr[32]_i_8_n_0 ,\addr[32]_i_9_n_0 }),
        .O({\addr_reg[32]_i_1_n_8 ,\addr_reg[32]_i_1_n_9 ,\addr_reg[32]_i_1_n_10 ,\addr_reg[32]_i_1_n_11 ,\addr_reg[32]_i_1_n_12 ,\addr_reg[32]_i_1_n_13 ,\addr_reg[32]_i_1_n_14 ,\addr_reg[32]_i_1_n_15 }),
        .S({\addr[32]_i_10_n_0 ,\addr[32]_i_11_n_0 ,\addr[32]_i_12_n_0 ,\addr[32]_i_13_n_0 ,\addr[32]_i_14_n_0 ,\addr[32]_i_15_n_0 ,\addr[32]_i_16_n_0 ,\addr[32]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[33] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[33]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[34] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[34]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[35] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[35]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[36] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[36]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[37] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[37]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[38] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[38]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[39] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[39]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[3]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[40] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[40]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[40]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[40]_i_1 
       (.CI(\addr_reg[32]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[40]_i_1_n_0 ,\addr_reg[40]_i_1_n_1 ,\addr_reg[40]_i_1_n_2 ,\addr_reg[40]_i_1_n_3 ,\addr_reg[40]_i_1_n_4 ,\addr_reg[40]_i_1_n_5 ,\addr_reg[40]_i_1_n_6 ,\addr_reg[40]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\addr[40]_i_2_n_0 }),
        .O({\addr_reg[40]_i_1_n_8 ,\addr_reg[40]_i_1_n_9 ,\addr_reg[40]_i_1_n_10 ,\addr_reg[40]_i_1_n_11 ,\addr_reg[40]_i_1_n_12 ,\addr_reg[40]_i_1_n_13 ,\addr_reg[40]_i_1_n_14 ,\addr_reg[40]_i_1_n_15 }),
        .S({\addr[40]_i_3_n_0 ,\addr[40]_i_4_n_0 ,\addr[40]_i_5_n_0 ,\addr[40]_i_6_n_0 ,\addr[40]_i_7_n_0 ,\addr[40]_i_8_n_0 ,\addr[40]_i_9_n_0 ,\addr[40]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[41] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[41]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[42] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[42]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[43] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[43]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[44] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[44]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[45] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[45]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[46] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[46]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[47] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[47]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[48] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[48]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[48]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[48]_i_1 
       (.CI(\addr_reg[40]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[48]_i_1_n_0 ,\addr_reg[48]_i_1_n_1 ,\addr_reg[48]_i_1_n_2 ,\addr_reg[48]_i_1_n_3 ,\addr_reg[48]_i_1_n_4 ,\addr_reg[48]_i_1_n_5 ,\addr_reg[48]_i_1_n_6 ,\addr_reg[48]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\addr_reg[48]_i_1_n_8 ,\addr_reg[48]_i_1_n_9 ,\addr_reg[48]_i_1_n_10 ,\addr_reg[48]_i_1_n_11 ,\addr_reg[48]_i_1_n_12 ,\addr_reg[48]_i_1_n_13 ,\addr_reg[48]_i_1_n_14 ,\addr_reg[48]_i_1_n_15 }),
        .S({\addr[48]_i_2_n_0 ,\addr[48]_i_3_n_0 ,\addr[48]_i_4_n_0 ,\addr[48]_i_5_n_0 ,\addr[48]_i_6_n_0 ,\addr[48]_i_7_n_0 ,\addr[48]_i_8_n_0 ,\addr[48]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[49] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[49]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[4]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[4]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[50] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_14 ),
        .Q(axi_m_awaddr_o[50]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[51] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_13 ),
        .Q(axi_m_awaddr_o[51]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[52] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_12 ),
        .Q(axi_m_awaddr_o[52]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[53] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_11 ),
        .Q(axi_m_awaddr_o[53]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[54] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_10 ),
        .Q(axi_m_awaddr_o[54]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[55] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_9 ),
        .Q(axi_m_awaddr_o[55]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[56] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[56]_i_1_n_8 ),
        .Q(axi_m_awaddr_o[56]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[56]_i_1 
       (.CI(\addr_reg[48]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[56]_i_1_n_0 ,\addr_reg[56]_i_1_n_1 ,\addr_reg[56]_i_1_n_2 ,\addr_reg[56]_i_1_n_3 ,\addr_reg[56]_i_1_n_4 ,\addr_reg[56]_i_1_n_5 ,\addr_reg[56]_i_1_n_6 ,\addr_reg[56]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\addr_reg[56]_i_1_n_8 ,\addr_reg[56]_i_1_n_9 ,\addr_reg[56]_i_1_n_10 ,\addr_reg[56]_i_1_n_11 ,\addr_reg[56]_i_1_n_12 ,\addr_reg[56]_i_1_n_13 ,\addr_reg[56]_i_1_n_14 ,\addr_reg[56]_i_1_n_15 }),
        .S({\addr[56]_i_2_n_0 ,\addr[56]_i_3_n_0 ,\addr[56]_i_4_n_0 ,\addr[56]_i_5_n_0 ,\addr[56]_i_6_n_0 ,\addr[56]_i_7_n_0 ,\addr[56]_i_8_n_0 ,\addr[56]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[57] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_15 ),
        .Q(axi_m_awaddr_o[57]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[58] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_14 ),
        .Q(axi_m_awaddr_o[58]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[59] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_13 ),
        .Q(axi_m_awaddr_o[59]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[5]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[5]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[60] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_12 ),
        .Q(axi_m_awaddr_o[60]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[61] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_11 ),
        .Q(axi_m_awaddr_o[61]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[62] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_10 ),
        .Q(axi_m_awaddr_o[62]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[63] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[63]_i_3_n_9 ),
        .Q(axi_m_awaddr_o[63]),
        .R(i_aw_trans_cntr_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \addr_reg[63]_i_3 
       (.CI(\addr_reg[56]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\addr_reg[63]_i_3_n_2 ,\addr_reg[63]_i_3_n_3 ,\addr_reg[63]_i_3_n_4 ,\addr_reg[63]_i_3_n_5 ,\addr_reg[63]_i_3_n_6 ,\addr_reg[63]_i_3_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\addr_reg[63]_i_3_n_9 ,\addr_reg[63]_i_3_n_10 ,\addr_reg[63]_i_3_n_11 ,\addr_reg[63]_i_3_n_12 ,\addr_reg[63]_i_3_n_13 ,\addr_reg[63]_i_3_n_14 ,\addr_reg[63]_i_3_n_15 }),
        .S({\<const0> ,\addr[63]_i_4_n_0 ,\addr[63]_i_5_n_0 ,\addr[63]_i_6_n_0 ,\addr[63]_i_7_n_0 ,\addr[63]_i_8_n_0 ,\addr[63]_i_9_n_0 ,\addr[63]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[6]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[6]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[7]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[7]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr[8]_i_1_n_0 ),
        .Q(axi_m_awaddr_o[8]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk),
        .CE(\addr[63]_i_2_n_0 ),
        .D(\addr_reg[16]_i_1_n_15 ),
        .Q(axi_m_awaddr_o[9]),
        .R(i_aw_trans_cntr_n_0));
  FDSE #(
    .INIT(1'b1)) 
    aw_idle_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(i_aw_trans_cntr_n_9),
        .Q(aw_idle),
        .S(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(i_w_to_aw_cntr_n_0),
        .Q(axi_m_awvalid_o),
        .R(i_aw_trans_cntr_n_0));
  LUT4 #(
    .INIT(16'hBFEA)) 
    \awxfer_num[0]_i_1 
       (.I0(ctrl_start_i),
        .I1(axi_m_awready_i),
        .I2(axi_m_awvalid_o),
        .I3(\awxfer_num_reg_n_0_[0] ),
        .O(\awxfer_num[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \awxfer_num[23]_i_1 
       (.I0(ctrl_start_i),
        .I1(rst_n),
        .O(\awxfer_num[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \awxfer_num[23]_i_2 
       (.I0(axi_m_awready_i),
        .I1(axi_m_awvalid_o),
        .O(awxfer));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\awxfer_num[0]_i_1_n_0 ),
        .Q(\awxfer_num_reg_n_0_[0] ),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[10] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_14 ),
        .Q(\awxfer_num_reg_n_0_[10] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[11] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_13 ),
        .Q(\awxfer_num_reg_n_0_[11] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[12] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_12 ),
        .Q(\awxfer_num_reg_n_0_[12] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[13] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_11 ),
        .Q(\awxfer_num_reg_n_0_[13] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[14] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_10 ),
        .Q(\awxfer_num_reg_n_0_[14] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[15] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_9 ),
        .Q(\awxfer_num_reg_n_0_[15] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[16] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_8 ),
        .Q(\awxfer_num_reg_n_0_[16] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \awxfer_num_reg[16]_i_1 
       (.CI(\awxfer_num_reg[8]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\awxfer_num_reg[16]_i_1_n_0 ,\awxfer_num_reg[16]_i_1_n_1 ,\awxfer_num_reg[16]_i_1_n_2 ,\awxfer_num_reg[16]_i_1_n_3 ,\awxfer_num_reg[16]_i_1_n_4 ,\awxfer_num_reg[16]_i_1_n_5 ,\awxfer_num_reg[16]_i_1_n_6 ,\awxfer_num_reg[16]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\awxfer_num_reg[16]_i_1_n_8 ,\awxfer_num_reg[16]_i_1_n_9 ,\awxfer_num_reg[16]_i_1_n_10 ,\awxfer_num_reg[16]_i_1_n_11 ,\awxfer_num_reg[16]_i_1_n_12 ,\awxfer_num_reg[16]_i_1_n_13 ,\awxfer_num_reg[16]_i_1_n_14 ,\awxfer_num_reg[16]_i_1_n_15 }),
        .S({\awxfer_num_reg_n_0_[16] ,\awxfer_num_reg_n_0_[15] ,\awxfer_num_reg_n_0_[14] ,\awxfer_num_reg_n_0_[13] ,\awxfer_num_reg_n_0_[12] ,\awxfer_num_reg_n_0_[11] ,\awxfer_num_reg_n_0_[10] ,\awxfer_num_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[17] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_15 ),
        .Q(\awxfer_num_reg_n_0_[17] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[18] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_14 ),
        .Q(\awxfer_num_reg_n_0_[18] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[19] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_13 ),
        .Q(\awxfer_num_reg_n_0_[19] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[1] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_15 ),
        .Q(\awxfer_num_reg_n_0_[1] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[20] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_12 ),
        .Q(\awxfer_num_reg_n_0_[20] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[21] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_11 ),
        .Q(\awxfer_num_reg_n_0_[21] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[22] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_10 ),
        .Q(\awxfer_num_reg_n_0_[22] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[23] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[23]_i_3_n_9 ),
        .Q(\awxfer_num_reg_n_0_[23] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \awxfer_num_reg[23]_i_3 
       (.CI(\awxfer_num_reg[16]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\awxfer_num_reg[23]_i_3_n_2 ,\awxfer_num_reg[23]_i_3_n_3 ,\awxfer_num_reg[23]_i_3_n_4 ,\awxfer_num_reg[23]_i_3_n_5 ,\awxfer_num_reg[23]_i_3_n_6 ,\awxfer_num_reg[23]_i_3_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\awxfer_num_reg[23]_i_3_n_9 ,\awxfer_num_reg[23]_i_3_n_10 ,\awxfer_num_reg[23]_i_3_n_11 ,\awxfer_num_reg[23]_i_3_n_12 ,\awxfer_num_reg[23]_i_3_n_13 ,\awxfer_num_reg[23]_i_3_n_14 ,\awxfer_num_reg[23]_i_3_n_15 }),
        .S({\<const0> ,\awxfer_num_reg_n_0_[23] ,\awxfer_num_reg_n_0_[22] ,\awxfer_num_reg_n_0_[21] ,\awxfer_num_reg_n_0_[20] ,\awxfer_num_reg_n_0_[19] ,\awxfer_num_reg_n_0_[18] ,\awxfer_num_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[2] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_14 ),
        .Q(\awxfer_num_reg_n_0_[2] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[3] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_13 ),
        .Q(\awxfer_num_reg_n_0_[3] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[4] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_12 ),
        .Q(\awxfer_num_reg_n_0_[4] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[5] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_11 ),
        .Q(\awxfer_num_reg_n_0_[5] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[6] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_10 ),
        .Q(\awxfer_num_reg_n_0_[6] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[7] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_9 ),
        .Q(\awxfer_num_reg_n_0_[7] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[8] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[8]_i_1_n_8 ),
        .Q(\awxfer_num_reg_n_0_[8] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \awxfer_num_reg[8]_i_1 
       (.CI(\awxfer_num_reg_n_0_[0] ),
        .CI_TOP(GND_2),
        .CO({\awxfer_num_reg[8]_i_1_n_0 ,\awxfer_num_reg[8]_i_1_n_1 ,\awxfer_num_reg[8]_i_1_n_2 ,\awxfer_num_reg[8]_i_1_n_3 ,\awxfer_num_reg[8]_i_1_n_4 ,\awxfer_num_reg[8]_i_1_n_5 ,\awxfer_num_reg[8]_i_1_n_6 ,\awxfer_num_reg[8]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\awxfer_num_reg[8]_i_1_n_8 ,\awxfer_num_reg[8]_i_1_n_9 ,\awxfer_num_reg[8]_i_1_n_10 ,\awxfer_num_reg[8]_i_1_n_11 ,\awxfer_num_reg[8]_i_1_n_12 ,\awxfer_num_reg[8]_i_1_n_13 ,\awxfer_num_reg[8]_i_1_n_14 ,\awxfer_num_reg[8]_i_1_n_15 }),
        .S({\awxfer_num_reg_n_0_[8] ,\awxfer_num_reg_n_0_[7] ,\awxfer_num_reg_n_0_[6] ,\awxfer_num_reg_n_0_[5] ,\awxfer_num_reg_n_0_[4] ,\awxfer_num_reg_n_0_[3] ,\awxfer_num_reg_n_0_[2] ,\awxfer_num_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \awxfer_num_reg[9] 
       (.C(clk),
        .CE(awxfer),
        .D(\awxfer_num_reg[16]_i_1_n_15 ),
        .Q(\awxfer_num_reg_n_0_[9] ),
        .R(\awxfer_num[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[0] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[0]),
        .Q(ctrl_offset_r[0]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[10] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[10]),
        .Q(ctrl_offset_r[10]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[11] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[11]),
        .Q(ctrl_offset_r[11]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[12] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[12]),
        .Q(ctrl_offset_r[12]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[13] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[13]),
        .Q(ctrl_offset_r[13]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[14] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[14]),
        .Q(ctrl_offset_r[14]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[15] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[15]),
        .Q(ctrl_offset_r[15]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[16] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[16]),
        .Q(ctrl_offset_r[16]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[17] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[17]),
        .Q(ctrl_offset_r[17]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[18] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[18]),
        .Q(ctrl_offset_r[18]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[19] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[19]),
        .Q(ctrl_offset_r[19]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[1] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[1]),
        .Q(ctrl_offset_r[1]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[20] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[20]),
        .Q(ctrl_offset_r[20]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[21] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[21]),
        .Q(ctrl_offset_r[21]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[22] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[22]),
        .Q(ctrl_offset_r[22]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[23] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[23]),
        .Q(ctrl_offset_r[23]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[24] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[24]),
        .Q(ctrl_offset_r[24]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[25] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[25]),
        .Q(ctrl_offset_r[25]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[26] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[26]),
        .Q(ctrl_offset_r[26]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[27] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[27]),
        .Q(ctrl_offset_r[27]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[28] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[28]),
        .Q(ctrl_offset_r[28]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[29] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[29]),
        .Q(ctrl_offset_r[29]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[2] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[2]),
        .Q(ctrl_offset_r[2]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[30] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[30]),
        .Q(ctrl_offset_r[30]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[31] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[31]),
        .Q(ctrl_offset_r[31]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[32] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[32]),
        .Q(ctrl_offset_r[32]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[33] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[33]),
        .Q(ctrl_offset_r[33]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[34] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[34]),
        .Q(ctrl_offset_r[34]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[35] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[35]),
        .Q(ctrl_offset_r[35]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[36] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[36]),
        .Q(ctrl_offset_r[36]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[37] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[37]),
        .Q(ctrl_offset_r[37]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[38] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[38]),
        .Q(ctrl_offset_r[38]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[39] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[39]),
        .Q(ctrl_offset_r[39]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[3] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[3]),
        .Q(ctrl_offset_r[3]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[40] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[40]),
        .Q(ctrl_offset_r[40]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[41] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[41]),
        .Q(ctrl_offset_r[41]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[42] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[42]),
        .Q(ctrl_offset_r[42]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[43] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[43]),
        .Q(ctrl_offset_r[43]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[44] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[44]),
        .Q(ctrl_offset_r[44]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[45] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[45]),
        .Q(ctrl_offset_r[45]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[46] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[46]),
        .Q(ctrl_offset_r[46]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[47] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[47]),
        .Q(ctrl_offset_r[47]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[48] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[48]),
        .Q(ctrl_offset_r[48]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[49] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[49]),
        .Q(ctrl_offset_r[49]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[4] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[4]),
        .Q(ctrl_offset_r[4]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[50] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[50]),
        .Q(ctrl_offset_r[50]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[51] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[51]),
        .Q(ctrl_offset_r[51]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[52] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[52]),
        .Q(ctrl_offset_r[52]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[53] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[53]),
        .Q(ctrl_offset_r[53]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[54] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[54]),
        .Q(ctrl_offset_r[54]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[55] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[55]),
        .Q(ctrl_offset_r[55]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[56] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[56]),
        .Q(ctrl_offset_r[56]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[57] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[57]),
        .Q(ctrl_offset_r[57]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[58] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[58]),
        .Q(ctrl_offset_r[58]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[59] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[59]),
        .Q(ctrl_offset_r[59]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[5] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[5]),
        .Q(ctrl_offset_r[5]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[60] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[60]),
        .Q(ctrl_offset_r[60]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[61] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[61]),
        .Q(ctrl_offset_r[61]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[62] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[62]),
        .Q(ctrl_offset_r[62]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[63] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[63]),
        .Q(ctrl_offset_r[63]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[6] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[6]),
        .Q(ctrl_offset_r[6]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[7] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[7]),
        .Q(ctrl_offset_r[7]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[8] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[8]),
        .Q(ctrl_offset_r[8]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_offset_r_reg[9] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(ctrl_offset_i[9]),
        .Q(ctrl_offset_r[9]),
        .R(i_aw_trans_cntr_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1 
       (.I0(ctrl_size_i[0]),
        .O(final_burst_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(ctrl_size_i[1]),
        .I1(ctrl_size_i[0]),
        .O(final_burst_len0[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \final_burst_len[2]_i_1 
       (.I0(ctrl_size_i[2]),
        .I1(ctrl_size_i[0]),
        .I2(ctrl_size_i[1]),
        .O(final_burst_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \final_burst_len[3]_i_1 
       (.I0(ctrl_size_i[3]),
        .I1(ctrl_size_i[1]),
        .I2(ctrl_size_i[0]),
        .I3(ctrl_size_i[2]),
        .O(final_burst_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \final_burst_len[4]_i_1 
       (.I0(ctrl_size_i[4]),
        .I1(ctrl_size_i[2]),
        .I2(ctrl_size_i[0]),
        .I3(ctrl_size_i[1]),
        .I4(ctrl_size_i[3]),
        .O(final_burst_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \final_burst_len[5]_i_1 
       (.I0(ctrl_size_i[5]),
        .I1(ctrl_size_i[3]),
        .I2(ctrl_size_i[1]),
        .I3(ctrl_size_i[0]),
        .I4(ctrl_size_i[2]),
        .I5(ctrl_size_i[4]),
        .O(final_burst_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[6]_i_1 
       (.I0(ctrl_size_i[6]),
        .I1(\final_burst_len[7]_i_2_n_0 ),
        .O(final_burst_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \final_burst_len[7]_i_1 
       (.I0(ctrl_size_i[6]),
        .I1(\final_burst_len[7]_i_2_n_0 ),
        .I2(ctrl_size_i[7]),
        .O(final_burst_len0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_burst_len[7]_i_2 
       (.I0(ctrl_size_i[4]),
        .I1(ctrl_size_i[2]),
        .I2(ctrl_size_i[0]),
        .I3(ctrl_size_i[1]),
        .I4(ctrl_size_i[3]),
        .I5(ctrl_size_i[5]),
        .O(\final_burst_len[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[0] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[0]),
        .Q(final_burst_len[0]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[1] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[1]),
        .Q(final_burst_len[1]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[2] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[2]),
        .Q(final_burst_len[2]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[3] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[3]),
        .Q(final_burst_len[3]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[4] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[4]),
        .Q(final_burst_len[4]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[5] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[5]),
        .Q(final_burst_len[5]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[6] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[6]),
        .Q(final_burst_len[6]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \final_burst_len_reg[7] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(final_burst_len0[7]),
        .Q(final_burst_len[7]),
        .R(i_aw_trans_cntr_n_0));
  ponos_counter_bidir__parameterized0 i_aw_trans_cntr
       (.Q(final_burst_len),
        .SR(i_aw_trans_cntr_n_0),
        .aw_idle(aw_idle),
        .awvalid_r_reg(i_aw_trans_cntr_n_9),
        .axi_m_awlen_o(axi_m_awlen_o),
        .axi_m_awready_i(axi_m_awready_i),
        .clk(clk),
        .\count_r_reg[23]_0 (num_transactions),
        .is_zero_r_reg_0(i_burst_cntr_n_1),
        .is_zero_r_reg_1(axi_m_awvalid_o),
        .rst_n(rst_n),
        .start(start));
  ponos_counter_bidir__parameterized0_0 i_b_trans_cntr
       (.Q(num_transactions),
        .SR(i_aw_trans_cntr_n_0),
        .axi_m_bvalid_i(axi_m_bvalid_i),
        .clk(clk),
        .ctrl_done_o(ctrl_done_o),
        .is_zero_r_reg_0(i_burst_cntr_n_1),
        .start(start));
  ponos_counter_bidir i_burst_cntr
       (.Q(final_burst_len),
        .SR(i_aw_trans_cntr_n_0),
        .\axi_m_awlen_o[7]_INST_0_i_1_0 (num_transactions),
        .axi_m_wready_i(axi_m_wready_i),
        .axis_s_tvalid_i(axis_s_tvalid_i),
        .clk(clk),
        .is_zero_r_reg_0(axi_m_wlast_o),
        .\num_transactions_reg[16] (i_burst_cntr_n_1),
        .start(start),
        .w_almost_final_transaction(w_almost_final_transaction),
        .wfirst(wfirst),
        .wfirst_reg(i_burst_cntr_n_2));
  ponos_counter_bidir__parameterized1 i_w_to_aw_cntr
       (.SR(i_aw_trans_cntr_n_0),
        .aw_idle(aw_idle),
        .aw_idle_reg(i_w_to_aw_cntr_n_0),
        .axi_m_awready_i(axi_m_awready_i),
        .clk(clk),
        .is_zero_r_reg_0(axi_m_awvalid_o),
        .wfirst_pulse(wfirst_pulse));
  ponos_counter_bidir__parameterized0_1 i_w_trans_cntr
       (.Q(num_transactions),
        .SR(i_aw_trans_cntr_n_0),
        .axi_m_wlast_o(axi_m_wlast_o),
        .axi_m_wready_i(axi_m_wready_i),
        .axis_s_tvalid_i(axis_s_tvalid_i),
        .clk(clk),
        .\count_r_reg[14]_0 (i_w_trans_cntr_n_0),
        .start(start));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_2 
       (.I0(ctrl_size_i[23]),
        .O(\num_transactions[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_3 
       (.I0(ctrl_size_i[22]),
        .O(\num_transactions[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_4 
       (.I0(ctrl_size_i[21]),
        .O(\num_transactions[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_5 
       (.I0(ctrl_size_i[20]),
        .O(\num_transactions[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_6 
       (.I0(ctrl_size_i[19]),
        .O(\num_transactions[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_7 
       (.I0(ctrl_size_i[18]),
        .O(\num_transactions[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_8 
       (.I0(ctrl_size_i[17]),
        .O(\num_transactions[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_9 
       (.I0(ctrl_size_i[16]),
        .O(\num_transactions[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_2 
       (.I0(ctrl_size_i[31]),
        .O(\num_transactions[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_3 
       (.I0(ctrl_size_i[30]),
        .O(\num_transactions[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_4 
       (.I0(ctrl_size_i[29]),
        .O(\num_transactions[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_5 
       (.I0(ctrl_size_i[28]),
        .O(\num_transactions[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_6 
       (.I0(ctrl_size_i[27]),
        .O(\num_transactions[23]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_7 
       (.I0(ctrl_size_i[26]),
        .O(\num_transactions[23]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_8 
       (.I0(ctrl_size_i[25]),
        .O(\num_transactions[23]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_9 
       (.I0(ctrl_size_i[24]),
        .O(\num_transactions[23]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_2 
       (.I0(ctrl_size_i[15]),
        .O(\num_transactions[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_3 
       (.I0(ctrl_size_i[14]),
        .O(\num_transactions[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_4 
       (.I0(ctrl_size_i[13]),
        .O(\num_transactions[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_5 
       (.I0(ctrl_size_i[12]),
        .O(\num_transactions[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_6 
       (.I0(ctrl_size_i[11]),
        .O(\num_transactions[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_7 
       (.I0(ctrl_size_i[10]),
        .O(\num_transactions[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_8 
       (.I0(ctrl_size_i[9]),
        .O(\num_transactions[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \num_transactions[7]_i_9 
       (.I0(ctrl_size_i[8]),
        .I1(ctrl_size_i[7]),
        .I2(\final_burst_len[7]_i_2_n_0 ),
        .I3(ctrl_size_i[6]),
        .O(\num_transactions[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[0] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[0]),
        .Q(num_transactions[0]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[10] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[10]),
        .Q(num_transactions[10]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[11] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[11]),
        .Q(num_transactions[11]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[12] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[12]),
        .Q(num_transactions[12]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[13] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[13]),
        .Q(num_transactions[13]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[14] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[14]),
        .Q(num_transactions[14]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[15] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[15]),
        .Q(num_transactions[15]),
        .R(i_aw_trans_cntr_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_transactions_reg[15]_i_1 
       (.CI(\num_transactions_reg[7]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\num_transactions_reg[15]_i_1_n_0 ,\num_transactions_reg[15]_i_1_n_1 ,\num_transactions_reg[15]_i_1_n_2 ,\num_transactions_reg[15]_i_1_n_3 ,\num_transactions_reg[15]_i_1_n_4 ,\num_transactions_reg[15]_i_1_n_5 ,\num_transactions_reg[15]_i_1_n_6 ,\num_transactions_reg[15]_i_1_n_7 }),
        .DI(ctrl_size_i[23:16]),
        .O(num_transactions0[15:8]),
        .S({\num_transactions[15]_i_2_n_0 ,\num_transactions[15]_i_3_n_0 ,\num_transactions[15]_i_4_n_0 ,\num_transactions[15]_i_5_n_0 ,\num_transactions[15]_i_6_n_0 ,\num_transactions[15]_i_7_n_0 ,\num_transactions[15]_i_8_n_0 ,\num_transactions[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[16] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[16]),
        .Q(num_transactions[16]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[17] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[17]),
        .Q(num_transactions[17]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[18] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[18]),
        .Q(num_transactions[18]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[19] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[19]),
        .Q(num_transactions[19]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[1] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[1]),
        .Q(num_transactions[1]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[20] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[20]),
        .Q(num_transactions[20]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[21] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[21]),
        .Q(num_transactions[21]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[22] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[22]),
        .Q(num_transactions[22]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[23] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[23]),
        .Q(num_transactions[23]),
        .R(i_aw_trans_cntr_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_transactions_reg[23]_i_1 
       (.CI(\num_transactions_reg[15]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\num_transactions_reg[23]_i_1_n_1 ,\num_transactions_reg[23]_i_1_n_2 ,\num_transactions_reg[23]_i_1_n_3 ,\num_transactions_reg[23]_i_1_n_4 ,\num_transactions_reg[23]_i_1_n_5 ,\num_transactions_reg[23]_i_1_n_6 ,\num_transactions_reg[23]_i_1_n_7 }),
        .DI({\<const0> ,ctrl_size_i[30:24]}),
        .O(num_transactions0[23:16]),
        .S({\num_transactions[23]_i_2_n_0 ,\num_transactions[23]_i_3_n_0 ,\num_transactions[23]_i_4_n_0 ,\num_transactions[23]_i_5_n_0 ,\num_transactions[23]_i_6_n_0 ,\num_transactions[23]_i_7_n_0 ,\num_transactions[23]_i_8_n_0 ,\num_transactions[23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[2] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[2]),
        .Q(num_transactions[2]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[3] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[3]),
        .Q(num_transactions[3]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[4] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[4]),
        .Q(num_transactions[4]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[5] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[5]),
        .Q(num_transactions[5]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[6] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[6]),
        .Q(num_transactions[6]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[7] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[7]),
        .Q(num_transactions[7]),
        .R(i_aw_trans_cntr_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_transactions_reg[7]_i_1 
       (.CI(\<const1> ),
        .CI_TOP(GND_2),
        .CO({\num_transactions_reg[7]_i_1_n_0 ,\num_transactions_reg[7]_i_1_n_1 ,\num_transactions_reg[7]_i_1_n_2 ,\num_transactions_reg[7]_i_1_n_3 ,\num_transactions_reg[7]_i_1_n_4 ,\num_transactions_reg[7]_i_1_n_5 ,\num_transactions_reg[7]_i_1_n_6 ,\num_transactions_reg[7]_i_1_n_7 }),
        .DI(ctrl_size_i[15:8]),
        .O(num_transactions0[7:0]),
        .S({\num_transactions[7]_i_2_n_0 ,\num_transactions[7]_i_3_n_0 ,\num_transactions[7]_i_4_n_0 ,\num_transactions[7]_i_5_n_0 ,\num_transactions[7]_i_6_n_0 ,\num_transactions[7]_i_7_n_0 ,\num_transactions[7]_i_8_n_0 ,\num_transactions[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[8] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[8]),
        .Q(num_transactions[8]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_reg[9] 
       (.C(clk),
        .CE(ctrl_start_i),
        .D(num_transactions0[9]),
        .Q(num_transactions[9]),
        .R(i_aw_trans_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(ctrl_start_i),
        .Q(start),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    w_almost_final_transaction_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(i_w_trans_cntr_n_0),
        .Q(w_almost_final_transaction),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wfirst_pulse_i_1
       (.I0(axis_s_tvalid_i),
        .I1(wfirst),
        .I2(wfirst_q),
        .O(wfirst_pulse0));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_pulse_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wfirst_pulse0),
        .Q(wfirst_pulse),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wfirst_q_i_1
       (.I0(wfirst),
        .I1(axis_s_tvalid_i),
        .O(wfirst_q0));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_q_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(wfirst_q0),
        .Q(wfirst_q),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    wfirst_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(i_burst_cntr_n_2),
        .Q(wfirst),
        .S(i_aw_trans_cntr_n_0));
endmodule

(* ORIG_REF_NAME = "counter_bidir" *) 
module ponos_counter_bidir
   (is_zero_r_reg_0,
    \num_transactions_reg[16] ,
    wfirst_reg,
    SR,
    clk,
    w_almost_final_transaction,
    Q,
    axis_s_tvalid_i,
    axi_m_wready_i,
    \axi_m_awlen_o[7]_INST_0_i_1_0 ,
    start,
    wfirst);
  output is_zero_r_reg_0;
  output \num_transactions_reg[16] ;
  output wfirst_reg;
  input [0:0]SR;
  input clk;
  input w_almost_final_transaction;
  input [7:0]Q;
  input axis_s_tvalid_i;
  input axi_m_wready_i;
  input [23:0]\axi_m_awlen_o[7]_INST_0_i_1_0 ;
  input start;
  input wfirst;

  wire \<const1> ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [23:0]\axi_m_awlen_o[7]_INST_0_i_1_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_2_n_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_3_n_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_4_n_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_5_n_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_6_n_0 ;
  wire \axi_m_awlen_o[7]_INST_0_i_7_n_0 ;
  wire axi_m_wready_i;
  wire axis_s_tvalid_i;
  wire clk;
  wire [7:0]count_r;
  wire \count_r[1]_i_2_n_0 ;
  wire \count_r[3]_i_2_n_0 ;
  wire \count_r[4]_i_2_n_0 ;
  wire \count_r[5]_i_2_n_0 ;
  wire \count_r[6]_i_2_n_0 ;
  wire \count_r[6]_i_3__0_n_0 ;
  wire \count_r[6]_i_4_n_0 ;
  wire \count_r[7]_i_2_n_0 ;
  wire is_zero_r_i_1_n_0;
  wire is_zero_r_i_2_n_0;
  wire is_zero_r_i_3__0_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_reg_0;
  wire \num_transactions_reg[16] ;
  wire [7:0]p_1_in;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_reg;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_1 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_2_n_0 ),
        .I1(\axi_m_awlen_o[7]_INST_0_i_3_n_0 ),
        .I2(\axi_m_awlen_o[7]_INST_0_i_4_n_0 ),
        .I3(\axi_m_awlen_o[7]_INST_0_i_5_n_0 ),
        .I4(\axi_m_awlen_o[7]_INST_0_i_6_n_0 ),
        .I5(\axi_m_awlen_o[7]_INST_0_i_7_n_0 ),
        .O(\num_transactions_reg[16] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_2 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [16]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [15]),
        .I2(\axi_m_awlen_o[7]_INST_0_i_1_0 [18]),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [17]),
        .O(\axi_m_awlen_o[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_3 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [20]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [19]),
        .I2(\axi_m_awlen_o[7]_INST_0_i_1_0 [22]),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [21]),
        .O(\axi_m_awlen_o[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_4 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [8]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [7]),
        .I2(\axi_m_awlen_o[7]_INST_0_i_1_0 [10]),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [9]),
        .O(\axi_m_awlen_o[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_5 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [12]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [11]),
        .I2(\axi_m_awlen_o[7]_INST_0_i_1_0 [14]),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [13]),
        .O(\axi_m_awlen_o[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_m_awlen_o[7]_INST_0_i_6 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [4]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [3]),
        .I2(\axi_m_awlen_o[7]_INST_0_i_1_0 [6]),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [5]),
        .O(\axi_m_awlen_o[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \axi_m_awlen_o[7]_INST_0_i_7 
       (.I0(\axi_m_awlen_o[7]_INST_0_i_1_0 [0]),
        .I1(\axi_m_awlen_o[7]_INST_0_i_1_0 [23]),
        .I2(start),
        .I3(\axi_m_awlen_o[7]_INST_0_i_1_0 [2]),
        .I4(\axi_m_awlen_o[7]_INST_0_i_1_0 [1]),
        .O(\axi_m_awlen_o[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBF7BB7788048844)) 
    \count_r[0]_i_1 
       (.I0(count_r[0]),
        .I1(\num_transactions_reg[16] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_i_4_n_0),
        .I4(is_zero_r_reg_0),
        .I5(Q[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h9F9FFF9F90900090)) 
    \count_r[1]_i_1 
       (.I0(\count_r[6]_i_2_n_0 ),
        .I1(count_r[1]),
        .I2(\num_transactions_reg[16] ),
        .I3(w_almost_final_transaction),
        .I4(\count_r[1]_i_2_n_0 ),
        .I5(Q[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count_r[1]_i_2 
       (.I0(axi_m_wready_i),
        .I1(axis_s_tvalid_i),
        .I2(is_zero_r_reg_0),
        .O(\count_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE1FFFFFFE1000000)) 
    \count_r[2]_i_1 
       (.I0(count_r[1]),
        .I1(\count_r[6]_i_2_n_0 ),
        .I2(count_r[2]),
        .I3(\num_transactions_reg[16] ),
        .I4(\count_r[6]_i_4_n_0 ),
        .I5(Q[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h77F7777744044444)) 
    \count_r[3]_i_1 
       (.I0(\count_r[3]_i_2_n_0 ),
        .I1(\num_transactions_reg[16] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_i_4_n_0),
        .I4(is_zero_r_reg_0),
        .I5(Q[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h00000008FFFFFFF7)) 
    \count_r[3]_i_2 
       (.I0(axi_m_wready_i),
        .I1(axis_s_tvalid_i),
        .I2(count_r[0]),
        .I3(count_r[1]),
        .I4(count_r[2]),
        .I5(count_r[3]),
        .O(\count_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h77F7777744044444)) 
    \count_r[4]_i_1 
       (.I0(\count_r[4]_i_2_n_0 ),
        .I1(\num_transactions_reg[16] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_i_4_n_0),
        .I4(is_zero_r_reg_0),
        .I5(Q[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \count_r[4]_i_2 
       (.I0(\count_r[6]_i_2_n_0 ),
        .I1(count_r[2]),
        .I2(count_r[1]),
        .I3(count_r[3]),
        .I4(count_r[4]),
        .O(\count_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h77F7777744044444)) 
    \count_r[5]_i_1 
       (.I0(\count_r[5]_i_2_n_0 ),
        .I1(\num_transactions_reg[16] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_i_4_n_0),
        .I4(is_zero_r_reg_0),
        .I5(Q[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \count_r[5]_i_2 
       (.I0(\count_r[6]_i_2_n_0 ),
        .I1(count_r[3]),
        .I2(count_r[1]),
        .I3(count_r[2]),
        .I4(count_r[4]),
        .I5(count_r[5]),
        .O(\count_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE1FFFFFFE1000000)) 
    \count_r[6]_i_1 
       (.I0(\count_r[6]_i_2_n_0 ),
        .I1(\count_r[6]_i_3__0_n_0 ),
        .I2(count_r[6]),
        .I3(\num_transactions_reg[16] ),
        .I4(\count_r[6]_i_4_n_0 ),
        .I5(Q[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \count_r[6]_i_2 
       (.I0(axi_m_wready_i),
        .I1(axis_s_tvalid_i),
        .I2(count_r[0]),
        .O(\count_r[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_r[6]_i_3__0 
       (.I0(count_r[4]),
        .I1(count_r[2]),
        .I2(count_r[1]),
        .I3(count_r[3]),
        .I4(count_r[5]),
        .O(\count_r[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count_r[6]_i_4 
       (.I0(is_zero_r_reg_0),
        .I1(axis_s_tvalid_i),
        .I2(axi_m_wready_i),
        .I3(w_almost_final_transaction),
        .O(\count_r[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h77F7777744044444)) 
    \count_r[7]_i_1 
       (.I0(\count_r[7]_i_2_n_0 ),
        .I1(\num_transactions_reg[16] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_i_4_n_0),
        .I4(is_zero_r_reg_0),
        .I5(Q[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h00001000FFFFEFFF)) 
    \count_r[7]_i_2 
       (.I0(\count_r[6]_i_3__0_n_0 ),
        .I1(count_r[0]),
        .I2(axis_s_tvalid_i),
        .I3(axi_m_wready_i),
        .I4(count_r[6]),
        .I5(count_r[7]),
        .O(\count_r[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(count_r[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[1]),
        .Q(count_r[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(count_r[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(count_r[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[4]),
        .Q(count_r[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[5]),
        .Q(count_r[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(count_r[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(count_r[7]),
        .S(SR));
  LUT6 #(
    .INIT(64'hFFAAB8AA00AAF0AA)) 
    is_zero_r_i_1
       (.I0(is_zero_r_i_2_n_0),
        .I1(w_almost_final_transaction),
        .I2(is_zero_r_i_3__0_n_0),
        .I3(\num_transactions_reg[16] ),
        .I4(is_zero_r_i_4_n_0),
        .I5(is_zero_r_reg_0),
        .O(is_zero_r_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    is_zero_r_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(is_zero_r_i_5_n_0),
        .O(is_zero_r_i_2_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    is_zero_r_i_3__0
       (.I0(count_r[0]),
        .I1(count_r[6]),
        .I2(count_r[7]),
        .I3(\count_r[6]_i_3__0_n_0 ),
        .O(is_zero_r_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    is_zero_r_i_4
       (.I0(axis_s_tvalid_i),
        .I1(axi_m_wready_i),
        .O(is_zero_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(is_zero_r_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(is_zero_r_i_1_n_0),
        .Q(is_zero_r_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    wfirst_i_1
       (.I0(wfirst),
        .I1(axis_s_tvalid_i),
        .I2(axi_m_wready_i),
        .I3(is_zero_r_reg_0),
        .O(wfirst_reg));
endmodule

(* ORIG_REF_NAME = "counter_bidir" *) 
module ponos_counter_bidir__parameterized0
   (SR,
    axi_m_awlen_o,
    awvalid_r_reg,
    clk,
    is_zero_r_reg_0,
    Q,
    rst_n,
    \count_r_reg[23]_0 ,
    start,
    axi_m_awready_i,
    is_zero_r_reg_1,
    aw_idle);
  output [0:0]SR;
  output [7:0]axi_m_awlen_o;
  output awvalid_r_reg;
  input clk;
  input is_zero_r_reg_0;
  input [7:0]Q;
  input rst_n;
  input [23:0]\count_r_reg[23]_0 ;
  input start;
  input axi_m_awready_i;
  input is_zero_r_reg_1;
  input aw_idle;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire [7:0]Q;
  wire [0:0]SR;
  wire aw_idle;
  wire awvalid_r_reg;
  wire [7:0]axi_m_awlen_o;
  wire axi_m_awready_i;
  wire clk;
  wire count_r0_carry__0_i_1__0_n_0;
  wire count_r0_carry__0_i_2__0_n_0;
  wire count_r0_carry__0_i_3__0_n_0;
  wire count_r0_carry__0_i_4__0_n_0;
  wire count_r0_carry__0_i_5__0_n_0;
  wire count_r0_carry__0_i_6__0_n_0;
  wire count_r0_carry__0_i_7__0_n_0;
  wire count_r0_carry__0_i_8__0_n_0;
  wire count_r0_carry__0_n_0;
  wire count_r0_carry__0_n_1;
  wire count_r0_carry__0_n_10;
  wire count_r0_carry__0_n_11;
  wire count_r0_carry__0_n_12;
  wire count_r0_carry__0_n_13;
  wire count_r0_carry__0_n_14;
  wire count_r0_carry__0_n_15;
  wire count_r0_carry__0_n_2;
  wire count_r0_carry__0_n_3;
  wire count_r0_carry__0_n_4;
  wire count_r0_carry__0_n_5;
  wire count_r0_carry__0_n_6;
  wire count_r0_carry__0_n_7;
  wire count_r0_carry__0_n_8;
  wire count_r0_carry__0_n_9;
  wire count_r0_carry__1_i_1__0_n_0;
  wire count_r0_carry__1_i_2__0_n_0;
  wire count_r0_carry__1_i_3__0_n_0;
  wire count_r0_carry__1_i_4__0_n_0;
  wire count_r0_carry__1_i_5__0_n_0;
  wire count_r0_carry__1_i_6__0_n_0;
  wire count_r0_carry__1_i_7__0_n_0;
  wire count_r0_carry__1_i_8__0_n_0;
  wire count_r0_carry__1_n_1;
  wire count_r0_carry__1_n_10;
  wire count_r0_carry__1_n_11;
  wire count_r0_carry__1_n_12;
  wire count_r0_carry__1_n_13;
  wire count_r0_carry__1_n_14;
  wire count_r0_carry__1_n_15;
  wire count_r0_carry__1_n_2;
  wire count_r0_carry__1_n_3;
  wire count_r0_carry__1_n_4;
  wire count_r0_carry__1_n_5;
  wire count_r0_carry__1_n_6;
  wire count_r0_carry__1_n_7;
  wire count_r0_carry__1_n_8;
  wire count_r0_carry__1_n_9;
  wire count_r0_carry_i_1__0_n_0;
  wire count_r0_carry_i_2__0_n_0;
  wire count_r0_carry_i_3__0_n_0;
  wire count_r0_carry_i_4__0_n_0;
  wire count_r0_carry_i_5__0_n_0;
  wire count_r0_carry_i_6__0_n_0;
  wire count_r0_carry_i_7__0_n_0;
  wire count_r0_carry_i_8_n_0;
  wire count_r0_carry_n_0;
  wire count_r0_carry_n_1;
  wire count_r0_carry_n_10;
  wire count_r0_carry_n_11;
  wire count_r0_carry_n_12;
  wire count_r0_carry_n_13;
  wire count_r0_carry_n_14;
  wire count_r0_carry_n_15;
  wire count_r0_carry_n_2;
  wire count_r0_carry_n_3;
  wire count_r0_carry_n_4;
  wire count_r0_carry_n_5;
  wire count_r0_carry_n_6;
  wire count_r0_carry_n_7;
  wire count_r0_carry_n_8;
  wire count_r0_carry_n_9;
  wire \count_r[0]_i_1__1_n_0 ;
  wire \count_r[10]_i_1__0_n_0 ;
  wire \count_r[11]_i_1__0_n_0 ;
  wire \count_r[12]_i_1__0_n_0 ;
  wire \count_r[13]_i_1__0_n_0 ;
  wire \count_r[14]_i_1__0_n_0 ;
  wire \count_r[15]_i_1__0_n_0 ;
  wire \count_r[16]_i_1__0_n_0 ;
  wire \count_r[17]_i_1__0_n_0 ;
  wire \count_r[18]_i_1__0_n_0 ;
  wire \count_r[19]_i_1__0_n_0 ;
  wire \count_r[1]_i_1__2_n_0 ;
  wire \count_r[20]_i_1__0_n_0 ;
  wire \count_r[21]_i_1__0_n_0 ;
  wire \count_r[22]_i_1__0_n_0 ;
  wire \count_r[23]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__2_n_0 ;
  wire \count_r[3]_i_1__2_n_0 ;
  wire \count_r[4]_i_1__2_n_0 ;
  wire \count_r[5]_i_1__2_n_0 ;
  wire \count_r[6]_i_1__2_n_0 ;
  wire \count_r[7]_i_1__2_n_0 ;
  wire \count_r[8]_i_1__0_n_0 ;
  wire \count_r[9]_i_1__0_n_0 ;
  wire [23:0]\count_r_reg[23]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire is_zero_r;
  wire is_zero_r_i_1__2_n_0;
  wire is_zero_r_i_2__2_n_0;
  wire is_zero_r_i_3__2_n_0;
  wire is_zero_r_i_4__2_n_0;
  wire is_zero_r_i_5__1_n_0;
  wire is_zero_r_i_6__0_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire rst_n;
  wire start;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr[63]_i_1 
       (.I0(rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    aw_idle_i_1
       (.I0(is_zero_r_reg_1),
        .I1(axi_m_awready_i),
        .I2(is_zero_r),
        .I3(start),
        .I4(aw_idle),
        .O(awvalid_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[0]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[0]),
        .O(axi_m_awlen_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[1]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[1]),
        .O(axi_m_awlen_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[2]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[2]),
        .O(axi_m_awlen_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[3]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[3]),
        .O(axi_m_awlen_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[4]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[4]),
        .O(axi_m_awlen_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[5]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[5]),
        .O(axi_m_awlen_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[6]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[6]),
        .O(axi_m_awlen_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_m_awlen_o[7]_INST_0 
       (.I0(is_zero_r),
        .I1(is_zero_r_reg_0),
        .I2(Q[7]),
        .O(axi_m_awlen_o[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry
       (.CI(\<const1> ),
        .CI_TOP(GND_2),
        .CO({count_r0_carry_n_0,count_r0_carry_n_1,count_r0_carry_n_2,count_r0_carry_n_3,count_r0_carry_n_4,count_r0_carry_n_5,count_r0_carry_n_6,count_r0_carry_n_7}),
        .DI({\count_r_reg_n_0_[7] ,\count_r_reg_n_0_[6] ,\count_r_reg_n_0_[5] ,\count_r_reg_n_0_[4] ,\count_r_reg_n_0_[3] ,\count_r_reg_n_0_[2] ,\count_r_reg_n_0_[1] ,\count_r_reg_n_0_[0] }),
        .O({count_r0_carry_n_8,count_r0_carry_n_9,count_r0_carry_n_10,count_r0_carry_n_11,count_r0_carry_n_12,count_r0_carry_n_13,count_r0_carry_n_14,count_r0_carry_n_15}),
        .S({count_r0_carry_i_1__0_n_0,count_r0_carry_i_2__0_n_0,count_r0_carry_i_3__0_n_0,count_r0_carry_i_4__0_n_0,count_r0_carry_i_5__0_n_0,count_r0_carry_i_6__0_n_0,count_r0_carry_i_7__0_n_0,count_r0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__0
       (.CI(count_r0_carry_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__0_n_0,count_r0_carry__0_n_1,count_r0_carry__0_n_2,count_r0_carry__0_n_3,count_r0_carry__0_n_4,count_r0_carry__0_n_5,count_r0_carry__0_n_6,count_r0_carry__0_n_7}),
        .DI({\count_r_reg_n_0_[15] ,\count_r_reg_n_0_[14] ,\count_r_reg_n_0_[13] ,\count_r_reg_n_0_[12] ,\count_r_reg_n_0_[11] ,\count_r_reg_n_0_[10] ,\count_r_reg_n_0_[9] ,\count_r_reg_n_0_[8] }),
        .O({count_r0_carry__0_n_8,count_r0_carry__0_n_9,count_r0_carry__0_n_10,count_r0_carry__0_n_11,count_r0_carry__0_n_12,count_r0_carry__0_n_13,count_r0_carry__0_n_14,count_r0_carry__0_n_15}),
        .S({count_r0_carry__0_i_1__0_n_0,count_r0_carry__0_i_2__0_n_0,count_r0_carry__0_i_3__0_n_0,count_r0_carry__0_i_4__0_n_0,count_r0_carry__0_i_5__0_n_0,count_r0_carry__0_i_6__0_n_0,count_r0_carry__0_i_7__0_n_0,count_r0_carry__0_i_8__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_1__0
       (.I0(\count_r_reg_n_0_[15] ),
        .O(count_r0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_2__0
       (.I0(\count_r_reg_n_0_[14] ),
        .O(count_r0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_3__0
       (.I0(\count_r_reg_n_0_[13] ),
        .O(count_r0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_4__0
       (.I0(\count_r_reg_n_0_[12] ),
        .O(count_r0_carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_5__0
       (.I0(\count_r_reg_n_0_[11] ),
        .O(count_r0_carry__0_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_6__0
       (.I0(\count_r_reg_n_0_[10] ),
        .O(count_r0_carry__0_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_7__0
       (.I0(\count_r_reg_n_0_[9] ),
        .O(count_r0_carry__0_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_8__0
       (.I0(\count_r_reg_n_0_[8] ),
        .O(count_r0_carry__0_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__1
       (.CI(count_r0_carry__0_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__1_n_1,count_r0_carry__1_n_2,count_r0_carry__1_n_3,count_r0_carry__1_n_4,count_r0_carry__1_n_5,count_r0_carry__1_n_6,count_r0_carry__1_n_7}),
        .DI({\<const0> ,\count_r_reg_n_0_[22] ,\count_r_reg_n_0_[21] ,\count_r_reg_n_0_[20] ,\count_r_reg_n_0_[19] ,\count_r_reg_n_0_[18] ,\count_r_reg_n_0_[17] ,\count_r_reg_n_0_[16] }),
        .O({count_r0_carry__1_n_8,count_r0_carry__1_n_9,count_r0_carry__1_n_10,count_r0_carry__1_n_11,count_r0_carry__1_n_12,count_r0_carry__1_n_13,count_r0_carry__1_n_14,count_r0_carry__1_n_15}),
        .S({count_r0_carry__1_i_1__0_n_0,count_r0_carry__1_i_2__0_n_0,count_r0_carry__1_i_3__0_n_0,count_r0_carry__1_i_4__0_n_0,count_r0_carry__1_i_5__0_n_0,count_r0_carry__1_i_6__0_n_0,count_r0_carry__1_i_7__0_n_0,count_r0_carry__1_i_8__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_1__0
       (.I0(\count_r_reg_n_0_[23] ),
        .O(count_r0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_2__0
       (.I0(\count_r_reg_n_0_[22] ),
        .O(count_r0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_3__0
       (.I0(\count_r_reg_n_0_[21] ),
        .O(count_r0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_4__0
       (.I0(\count_r_reg_n_0_[20] ),
        .O(count_r0_carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_5__0
       (.I0(\count_r_reg_n_0_[19] ),
        .O(count_r0_carry__1_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_6__0
       (.I0(\count_r_reg_n_0_[18] ),
        .O(count_r0_carry__1_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_7__0
       (.I0(\count_r_reg_n_0_[17] ),
        .O(count_r0_carry__1_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_8__0
       (.I0(\count_r_reg_n_0_[16] ),
        .O(count_r0_carry__1_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_1__0
       (.I0(\count_r_reg_n_0_[7] ),
        .O(count_r0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_2__0
       (.I0(\count_r_reg_n_0_[6] ),
        .O(count_r0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_3__0
       (.I0(\count_r_reg_n_0_[5] ),
        .O(count_r0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_4__0
       (.I0(\count_r_reg_n_0_[4] ),
        .O(count_r0_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_5__0
       (.I0(\count_r_reg_n_0_[3] ),
        .O(count_r0_carry_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_6__0
       (.I0(\count_r_reg_n_0_[2] ),
        .O(count_r0_carry_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_7__0
       (.I0(\count_r_reg_n_0_[1] ),
        .O(count_r0_carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    count_r0_carry_i_8
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(axi_m_awready_i),
        .I2(is_zero_r_reg_1),
        .O(count_r0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_1__1 
       (.I0(\count_r_reg[23]_0 [0]),
        .I1(start),
        .I2(count_r0_carry_n_15),
        .O(\count_r[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[10]_i_1__0 
       (.I0(\count_r_reg[23]_0 [10]),
        .I1(start),
        .I2(count_r0_carry__0_n_13),
        .O(\count_r[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[11]_i_1__0 
       (.I0(\count_r_reg[23]_0 [11]),
        .I1(start),
        .I2(count_r0_carry__0_n_12),
        .O(\count_r[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[12]_i_1__0 
       (.I0(\count_r_reg[23]_0 [12]),
        .I1(start),
        .I2(count_r0_carry__0_n_11),
        .O(\count_r[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[13]_i_1__0 
       (.I0(\count_r_reg[23]_0 [13]),
        .I1(start),
        .I2(count_r0_carry__0_n_10),
        .O(\count_r[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[14]_i_1__0 
       (.I0(\count_r_reg[23]_0 [14]),
        .I1(start),
        .I2(count_r0_carry__0_n_9),
        .O(\count_r[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[15]_i_1__0 
       (.I0(\count_r_reg[23]_0 [15]),
        .I1(start),
        .I2(count_r0_carry__0_n_8),
        .O(\count_r[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[16]_i_1__0 
       (.I0(\count_r_reg[23]_0 [16]),
        .I1(start),
        .I2(count_r0_carry__1_n_15),
        .O(\count_r[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[17]_i_1__0 
       (.I0(\count_r_reg[23]_0 [17]),
        .I1(start),
        .I2(count_r0_carry__1_n_14),
        .O(\count_r[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[18]_i_1__0 
       (.I0(\count_r_reg[23]_0 [18]),
        .I1(start),
        .I2(count_r0_carry__1_n_13),
        .O(\count_r[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[19]_i_1__0 
       (.I0(\count_r_reg[23]_0 [19]),
        .I1(start),
        .I2(count_r0_carry__1_n_12),
        .O(\count_r[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[1]_i_1__2 
       (.I0(\count_r_reg[23]_0 [1]),
        .I1(start),
        .I2(count_r0_carry_n_14),
        .O(\count_r[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[20]_i_1__0 
       (.I0(\count_r_reg[23]_0 [20]),
        .I1(start),
        .I2(count_r0_carry__1_n_11),
        .O(\count_r[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[21]_i_1__0 
       (.I0(\count_r_reg[23]_0 [21]),
        .I1(start),
        .I2(count_r0_carry__1_n_10),
        .O(\count_r[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[22]_i_1__0 
       (.I0(\count_r_reg[23]_0 [22]),
        .I1(start),
        .I2(count_r0_carry__1_n_9),
        .O(\count_r[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[23]_i_1__0 
       (.I0(\count_r_reg[23]_0 [23]),
        .I1(start),
        .I2(count_r0_carry__1_n_8),
        .O(\count_r[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[2]_i_1__2 
       (.I0(\count_r_reg[23]_0 [2]),
        .I1(start),
        .I2(count_r0_carry_n_13),
        .O(\count_r[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[3]_i_1__2 
       (.I0(\count_r_reg[23]_0 [3]),
        .I1(start),
        .I2(count_r0_carry_n_12),
        .O(\count_r[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[4]_i_1__2 
       (.I0(\count_r_reg[23]_0 [4]),
        .I1(start),
        .I2(count_r0_carry_n_11),
        .O(\count_r[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[5]_i_1__2 
       (.I0(\count_r_reg[23]_0 [5]),
        .I1(start),
        .I2(count_r0_carry_n_10),
        .O(\count_r[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[6]_i_1__2 
       (.I0(\count_r_reg[23]_0 [6]),
        .I1(start),
        .I2(count_r0_carry_n_9),
        .O(\count_r[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[7]_i_1__2 
       (.I0(\count_r_reg[23]_0 [7]),
        .I1(start),
        .I2(count_r0_carry_n_8),
        .O(\count_r[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[8]_i_1__0 
       (.I0(\count_r_reg[23]_0 [8]),
        .I1(start),
        .I2(count_r0_carry__0_n_15),
        .O(\count_r[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[9]_i_1__0 
       (.I0(\count_r_reg[23]_0 [9]),
        .I1(start),
        .I2(count_r0_carry__0_n_14),
        .O(\count_r[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[0]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[10]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[11]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[12]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[13]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[14]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[15]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[16]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[17]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[18]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[19]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[1]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[20]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[21]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[22]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[23]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[2]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[3]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[4]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[5]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[6]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[7]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[8]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[9]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBFBFBFBBB0B0B0)) 
    is_zero_r_i_1__2
       (.I0(is_zero_r_i_2__2_n_0),
        .I1(is_zero_r_reg_0),
        .I2(start),
        .I3(axi_m_awready_i),
        .I4(is_zero_r_reg_1),
        .I5(is_zero_r),
        .O(is_zero_r_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    is_zero_r_i_2__2
       (.I0(is_zero_r_i_3__2_n_0),
        .I1(is_zero_r_i_4__2_n_0),
        .I2(is_zero_r_i_5__1_n_0),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(is_zero_r_i_6__0_n_0),
        .O(is_zero_r_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__2
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[4] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg_n_0_[6] ),
        .I5(\count_r_reg_n_0_[5] ),
        .O(is_zero_r_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__2
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(\count_r_reg_n_0_[22] ),
        .I2(\count_r_reg_n_0_[19] ),
        .I3(\count_r_reg_n_0_[20] ),
        .I4(start),
        .I5(\count_r_reg_n_0_[23] ),
        .O(is_zero_r_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5__1
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(\count_r_reg_n_0_[16] ),
        .I2(\count_r_reg_n_0_[13] ),
        .I3(\count_r_reg_n_0_[14] ),
        .I4(\count_r_reg_n_0_[18] ),
        .I5(\count_r_reg_n_0_[17] ),
        .O(is_zero_r_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6__0
       (.I0(\count_r_reg_n_0_[9] ),
        .I1(\count_r_reg_n_0_[10] ),
        .I2(\count_r_reg_n_0_[7] ),
        .I3(\count_r_reg_n_0_[8] ),
        .I4(\count_r_reg_n_0_[12] ),
        .I5(\count_r_reg_n_0_[11] ),
        .O(is_zero_r_i_6__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(is_zero_r_i_1__2_n_0),
        .Q(is_zero_r),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "counter_bidir" *) 
module ponos_counter_bidir__parameterized0_0
   (ctrl_done_o,
    SR,
    clk,
    axi_m_bvalid_i,
    Q,
    start,
    is_zero_r_reg_0);
  output ctrl_done_o;
  input [0:0]SR;
  input clk;
  input axi_m_bvalid_i;
  input [23:0]Q;
  input start;
  input is_zero_r_reg_0;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire [23:0]Q;
  wire [0:0]SR;
  wire axi_m_bvalid_i;
  wire clk;
  wire count_r0_carry__0_i_1_n_0;
  wire count_r0_carry__0_i_2_n_0;
  wire count_r0_carry__0_i_3_n_0;
  wire count_r0_carry__0_i_4_n_0;
  wire count_r0_carry__0_i_5_n_0;
  wire count_r0_carry__0_i_6_n_0;
  wire count_r0_carry__0_i_7_n_0;
  wire count_r0_carry__0_i_8_n_0;
  wire count_r0_carry__0_n_0;
  wire count_r0_carry__0_n_1;
  wire count_r0_carry__0_n_10;
  wire count_r0_carry__0_n_11;
  wire count_r0_carry__0_n_12;
  wire count_r0_carry__0_n_13;
  wire count_r0_carry__0_n_14;
  wire count_r0_carry__0_n_15;
  wire count_r0_carry__0_n_2;
  wire count_r0_carry__0_n_3;
  wire count_r0_carry__0_n_4;
  wire count_r0_carry__0_n_5;
  wire count_r0_carry__0_n_6;
  wire count_r0_carry__0_n_7;
  wire count_r0_carry__0_n_8;
  wire count_r0_carry__0_n_9;
  wire count_r0_carry__1_i_1_n_0;
  wire count_r0_carry__1_i_2_n_0;
  wire count_r0_carry__1_i_3_n_0;
  wire count_r0_carry__1_i_4_n_0;
  wire count_r0_carry__1_i_5_n_0;
  wire count_r0_carry__1_i_6_n_0;
  wire count_r0_carry__1_i_7_n_0;
  wire count_r0_carry__1_i_8_n_0;
  wire count_r0_carry__1_n_1;
  wire count_r0_carry__1_n_10;
  wire count_r0_carry__1_n_11;
  wire count_r0_carry__1_n_12;
  wire count_r0_carry__1_n_13;
  wire count_r0_carry__1_n_14;
  wire count_r0_carry__1_n_15;
  wire count_r0_carry__1_n_2;
  wire count_r0_carry__1_n_3;
  wire count_r0_carry__1_n_4;
  wire count_r0_carry__1_n_5;
  wire count_r0_carry__1_n_6;
  wire count_r0_carry__1_n_7;
  wire count_r0_carry__1_n_8;
  wire count_r0_carry__1_n_9;
  wire count_r0_carry_i_1_n_0;
  wire count_r0_carry_i_2_n_0;
  wire count_r0_carry_i_3_n_0;
  wire count_r0_carry_i_4_n_0;
  wire count_r0_carry_i_5_n_0;
  wire count_r0_carry_i_6_n_0;
  wire count_r0_carry_i_7_n_0;
  wire count_r0_carry_i_8__1_n_0;
  wire count_r0_carry_n_0;
  wire count_r0_carry_n_1;
  wire count_r0_carry_n_10;
  wire count_r0_carry_n_11;
  wire count_r0_carry_n_12;
  wire count_r0_carry_n_13;
  wire count_r0_carry_n_14;
  wire count_r0_carry_n_15;
  wire count_r0_carry_n_2;
  wire count_r0_carry_n_3;
  wire count_r0_carry_n_4;
  wire count_r0_carry_n_5;
  wire count_r0_carry_n_6;
  wire count_r0_carry_n_7;
  wire count_r0_carry_n_8;
  wire count_r0_carry_n_9;
  wire \count_r[0]_i_1__0_n_0 ;
  wire \count_r[10]_i_1_n_0 ;
  wire \count_r[11]_i_1_n_0 ;
  wire \count_r[12]_i_1_n_0 ;
  wire \count_r[13]_i_1_n_0 ;
  wire \count_r[14]_i_1_n_0 ;
  wire \count_r[15]_i_1_n_0 ;
  wire \count_r[16]_i_1_n_0 ;
  wire \count_r[17]_i_1_n_0 ;
  wire \count_r[18]_i_1_n_0 ;
  wire \count_r[19]_i_1_n_0 ;
  wire \count_r[1]_i_1__1_n_0 ;
  wire \count_r[20]_i_1_n_0 ;
  wire \count_r[21]_i_1_n_0 ;
  wire \count_r[22]_i_1_n_0 ;
  wire \count_r[23]_i_1_n_0 ;
  wire \count_r[2]_i_1__1_n_0 ;
  wire \count_r[3]_i_1__1_n_0 ;
  wire \count_r[4]_i_1__1_n_0 ;
  wire \count_r[5]_i_1__1_n_0 ;
  wire \count_r[6]_i_1__1_n_0 ;
  wire \count_r[7]_i_1__1_n_0 ;
  wire \count_r[8]_i_1_n_0 ;
  wire \count_r[9]_i_1_n_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire ctrl_done_o;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire is_zero_r_i_3__1_n_0;
  wire is_zero_r_i_4__1_n_0;
  wire is_zero_r_i_5__0_n_0;
  wire is_zero_r_i_6_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_n_0;
  wire start;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry
       (.CI(\<const1> ),
        .CI_TOP(GND_2),
        .CO({count_r0_carry_n_0,count_r0_carry_n_1,count_r0_carry_n_2,count_r0_carry_n_3,count_r0_carry_n_4,count_r0_carry_n_5,count_r0_carry_n_6,count_r0_carry_n_7}),
        .DI({\count_r_reg_n_0_[7] ,\count_r_reg_n_0_[6] ,\count_r_reg_n_0_[5] ,\count_r_reg_n_0_[4] ,\count_r_reg_n_0_[3] ,\count_r_reg_n_0_[2] ,\count_r_reg_n_0_[1] ,\count_r_reg_n_0_[0] }),
        .O({count_r0_carry_n_8,count_r0_carry_n_9,count_r0_carry_n_10,count_r0_carry_n_11,count_r0_carry_n_12,count_r0_carry_n_13,count_r0_carry_n_14,count_r0_carry_n_15}),
        .S({count_r0_carry_i_1_n_0,count_r0_carry_i_2_n_0,count_r0_carry_i_3_n_0,count_r0_carry_i_4_n_0,count_r0_carry_i_5_n_0,count_r0_carry_i_6_n_0,count_r0_carry_i_7_n_0,count_r0_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__0
       (.CI(count_r0_carry_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__0_n_0,count_r0_carry__0_n_1,count_r0_carry__0_n_2,count_r0_carry__0_n_3,count_r0_carry__0_n_4,count_r0_carry__0_n_5,count_r0_carry__0_n_6,count_r0_carry__0_n_7}),
        .DI({\count_r_reg_n_0_[15] ,\count_r_reg_n_0_[14] ,\count_r_reg_n_0_[13] ,\count_r_reg_n_0_[12] ,\count_r_reg_n_0_[11] ,\count_r_reg_n_0_[10] ,\count_r_reg_n_0_[9] ,\count_r_reg_n_0_[8] }),
        .O({count_r0_carry__0_n_8,count_r0_carry__0_n_9,count_r0_carry__0_n_10,count_r0_carry__0_n_11,count_r0_carry__0_n_12,count_r0_carry__0_n_13,count_r0_carry__0_n_14,count_r0_carry__0_n_15}),
        .S({count_r0_carry__0_i_1_n_0,count_r0_carry__0_i_2_n_0,count_r0_carry__0_i_3_n_0,count_r0_carry__0_i_4_n_0,count_r0_carry__0_i_5_n_0,count_r0_carry__0_i_6_n_0,count_r0_carry__0_i_7_n_0,count_r0_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_1
       (.I0(\count_r_reg_n_0_[15] ),
        .O(count_r0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_2
       (.I0(\count_r_reg_n_0_[14] ),
        .O(count_r0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_3
       (.I0(\count_r_reg_n_0_[13] ),
        .O(count_r0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_4
       (.I0(\count_r_reg_n_0_[12] ),
        .O(count_r0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_5
       (.I0(\count_r_reg_n_0_[11] ),
        .O(count_r0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_6
       (.I0(\count_r_reg_n_0_[10] ),
        .O(count_r0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_7
       (.I0(\count_r_reg_n_0_[9] ),
        .O(count_r0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_8
       (.I0(\count_r_reg_n_0_[8] ),
        .O(count_r0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__1
       (.CI(count_r0_carry__0_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__1_n_1,count_r0_carry__1_n_2,count_r0_carry__1_n_3,count_r0_carry__1_n_4,count_r0_carry__1_n_5,count_r0_carry__1_n_6,count_r0_carry__1_n_7}),
        .DI({\<const0> ,\count_r_reg_n_0_[22] ,\count_r_reg_n_0_[21] ,\count_r_reg_n_0_[20] ,\count_r_reg_n_0_[19] ,\count_r_reg_n_0_[18] ,\count_r_reg_n_0_[17] ,\count_r_reg_n_0_[16] }),
        .O({count_r0_carry__1_n_8,count_r0_carry__1_n_9,count_r0_carry__1_n_10,count_r0_carry__1_n_11,count_r0_carry__1_n_12,count_r0_carry__1_n_13,count_r0_carry__1_n_14,count_r0_carry__1_n_15}),
        .S({count_r0_carry__1_i_1_n_0,count_r0_carry__1_i_2_n_0,count_r0_carry__1_i_3_n_0,count_r0_carry__1_i_4_n_0,count_r0_carry__1_i_5_n_0,count_r0_carry__1_i_6_n_0,count_r0_carry__1_i_7_n_0,count_r0_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_1
       (.I0(\count_r_reg_n_0_[23] ),
        .O(count_r0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_2
       (.I0(\count_r_reg_n_0_[22] ),
        .O(count_r0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_3
       (.I0(\count_r_reg_n_0_[21] ),
        .O(count_r0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_4
       (.I0(\count_r_reg_n_0_[20] ),
        .O(count_r0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_5
       (.I0(\count_r_reg_n_0_[19] ),
        .O(count_r0_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_6
       (.I0(\count_r_reg_n_0_[18] ),
        .O(count_r0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_7
       (.I0(\count_r_reg_n_0_[17] ),
        .O(count_r0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_8
       (.I0(\count_r_reg_n_0_[16] ),
        .O(count_r0_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_1
       (.I0(\count_r_reg_n_0_[7] ),
        .O(count_r0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_2
       (.I0(\count_r_reg_n_0_[6] ),
        .O(count_r0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_3
       (.I0(\count_r_reg_n_0_[5] ),
        .O(count_r0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_4
       (.I0(\count_r_reg_n_0_[4] ),
        .O(count_r0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_5
       (.I0(\count_r_reg_n_0_[3] ),
        .O(count_r0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_6
       (.I0(\count_r_reg_n_0_[2] ),
        .O(count_r0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_7
       (.I0(\count_r_reg_n_0_[1] ),
        .O(count_r0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_8__1
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(axi_m_bvalid_i),
        .O(count_r0_carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_1__0 
       (.I0(Q[0]),
        .I1(start),
        .I2(count_r0_carry_n_15),
        .O(\count_r[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[10]_i_1 
       (.I0(Q[10]),
        .I1(start),
        .I2(count_r0_carry__0_n_13),
        .O(\count_r[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[11]_i_1 
       (.I0(Q[11]),
        .I1(start),
        .I2(count_r0_carry__0_n_12),
        .O(\count_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[12]_i_1 
       (.I0(Q[12]),
        .I1(start),
        .I2(count_r0_carry__0_n_11),
        .O(\count_r[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[13]_i_1 
       (.I0(Q[13]),
        .I1(start),
        .I2(count_r0_carry__0_n_10),
        .O(\count_r[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[14]_i_1 
       (.I0(Q[14]),
        .I1(start),
        .I2(count_r0_carry__0_n_9),
        .O(\count_r[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[15]_i_1 
       (.I0(Q[15]),
        .I1(start),
        .I2(count_r0_carry__0_n_8),
        .O(\count_r[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[16]_i_1 
       (.I0(Q[16]),
        .I1(start),
        .I2(count_r0_carry__1_n_15),
        .O(\count_r[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[17]_i_1 
       (.I0(Q[17]),
        .I1(start),
        .I2(count_r0_carry__1_n_14),
        .O(\count_r[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[18]_i_1 
       (.I0(Q[18]),
        .I1(start),
        .I2(count_r0_carry__1_n_13),
        .O(\count_r[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[19]_i_1 
       (.I0(Q[19]),
        .I1(start),
        .I2(count_r0_carry__1_n_12),
        .O(\count_r[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[1]_i_1__1 
       (.I0(Q[1]),
        .I1(start),
        .I2(count_r0_carry_n_14),
        .O(\count_r[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[20]_i_1 
       (.I0(Q[20]),
        .I1(start),
        .I2(count_r0_carry__1_n_11),
        .O(\count_r[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[21]_i_1 
       (.I0(Q[21]),
        .I1(start),
        .I2(count_r0_carry__1_n_10),
        .O(\count_r[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[22]_i_1 
       (.I0(Q[22]),
        .I1(start),
        .I2(count_r0_carry__1_n_9),
        .O(\count_r[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[23]_i_1 
       (.I0(Q[23]),
        .I1(start),
        .I2(count_r0_carry__1_n_8),
        .O(\count_r[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[2]_i_1__1 
       (.I0(Q[2]),
        .I1(start),
        .I2(count_r0_carry_n_13),
        .O(\count_r[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[3]_i_1__1 
       (.I0(Q[3]),
        .I1(start),
        .I2(count_r0_carry_n_12),
        .O(\count_r[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[4]_i_1__1 
       (.I0(Q[4]),
        .I1(start),
        .I2(count_r0_carry_n_11),
        .O(\count_r[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[5]_i_1__1 
       (.I0(Q[5]),
        .I1(start),
        .I2(count_r0_carry_n_10),
        .O(\count_r[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[6]_i_1__1 
       (.I0(Q[6]),
        .I1(start),
        .I2(count_r0_carry_n_9),
        .O(\count_r[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[7]_i_1__1 
       (.I0(Q[7]),
        .I1(start),
        .I2(count_r0_carry_n_8),
        .O(\count_r[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[8]_i_1 
       (.I0(Q[8]),
        .I1(start),
        .I2(count_r0_carry__0_n_15),
        .O(\count_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[9]_i_1 
       (.I0(Q[9]),
        .I1(start),
        .I2(count_r0_carry__0_n_14),
        .O(\count_r[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[0]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[10]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[11]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[12]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[13]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[14]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[15]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[16]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[17]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[18]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[19]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[1]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[20]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[21]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[22]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[23]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[2]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[3]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[4]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[5]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[6]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[7]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[8]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[9]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ctrl_done_o_INST_0
       (.I0(is_zero_r_reg_n_0),
        .I1(axi_m_bvalid_i),
        .O(ctrl_done_o));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBBBFBBB0)) 
    is_zero_r_i_1__1
       (.I0(is_zero_r_i_2__1_n_0),
        .I1(is_zero_r_reg_0),
        .I2(axi_m_bvalid_i),
        .I3(start),
        .I4(is_zero_r_reg_n_0),
        .O(is_zero_r_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    is_zero_r_i_2__1
       (.I0(is_zero_r_i_3__1_n_0),
        .I1(is_zero_r_i_4__1_n_0),
        .I2(is_zero_r_i_5__0_n_0),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(is_zero_r_i_6_n_0),
        .O(is_zero_r_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__1
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[4] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg_n_0_[6] ),
        .I5(\count_r_reg_n_0_[5] ),
        .O(is_zero_r_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__1
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(\count_r_reg_n_0_[22] ),
        .I2(\count_r_reg_n_0_[19] ),
        .I3(\count_r_reg_n_0_[20] ),
        .I4(start),
        .I5(\count_r_reg_n_0_[23] ),
        .O(is_zero_r_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_5__0
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(\count_r_reg_n_0_[16] ),
        .I2(\count_r_reg_n_0_[13] ),
        .I3(\count_r_reg_n_0_[14] ),
        .I4(\count_r_reg_n_0_[18] ),
        .I5(\count_r_reg_n_0_[17] ),
        .O(is_zero_r_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_6
       (.I0(\count_r_reg_n_0_[9] ),
        .I1(\count_r_reg_n_0_[10] ),
        .I2(\count_r_reg_n_0_[7] ),
        .I3(\count_r_reg_n_0_[8] ),
        .I4(\count_r_reg_n_0_[12] ),
        .I5(\count_r_reg_n_0_[11] ),
        .O(is_zero_r_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(is_zero_r_i_1__1_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "counter_bidir" *) 
module ponos_counter_bidir__parameterized0_1
   (\count_r_reg[14]_0 ,
    Q,
    start,
    axi_m_wlast_o,
    axis_s_tvalid_i,
    axi_m_wready_i,
    SR,
    clk);
  output \count_r_reg[14]_0 ;
  input [23:0]Q;
  input start;
  input axi_m_wlast_o;
  input axis_s_tvalid_i;
  input axi_m_wready_i;
  input [0:0]SR;
  input clk;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire [23:0]Q;
  wire [0:0]SR;
  wire axi_m_wlast_o;
  wire axi_m_wready_i;
  wire axis_s_tvalid_i;
  wire clk;
  wire count_r0_carry__0_i_1__1_n_0;
  wire count_r0_carry__0_i_2__1_n_0;
  wire count_r0_carry__0_i_3__1_n_0;
  wire count_r0_carry__0_i_4__1_n_0;
  wire count_r0_carry__0_i_5__1_n_0;
  wire count_r0_carry__0_i_6__1_n_0;
  wire count_r0_carry__0_i_7__1_n_0;
  wire count_r0_carry__0_i_8__1_n_0;
  wire count_r0_carry__0_n_0;
  wire count_r0_carry__0_n_1;
  wire count_r0_carry__0_n_10;
  wire count_r0_carry__0_n_11;
  wire count_r0_carry__0_n_12;
  wire count_r0_carry__0_n_13;
  wire count_r0_carry__0_n_14;
  wire count_r0_carry__0_n_15;
  wire count_r0_carry__0_n_2;
  wire count_r0_carry__0_n_3;
  wire count_r0_carry__0_n_4;
  wire count_r0_carry__0_n_5;
  wire count_r0_carry__0_n_6;
  wire count_r0_carry__0_n_7;
  wire count_r0_carry__0_n_8;
  wire count_r0_carry__0_n_9;
  wire count_r0_carry__1_i_1__1_n_0;
  wire count_r0_carry__1_i_2__1_n_0;
  wire count_r0_carry__1_i_3__1_n_0;
  wire count_r0_carry__1_i_4__1_n_0;
  wire count_r0_carry__1_i_5__1_n_0;
  wire count_r0_carry__1_i_6__1_n_0;
  wire count_r0_carry__1_i_7__1_n_0;
  wire count_r0_carry__1_i_8__1_n_0;
  wire count_r0_carry__1_n_1;
  wire count_r0_carry__1_n_10;
  wire count_r0_carry__1_n_11;
  wire count_r0_carry__1_n_12;
  wire count_r0_carry__1_n_13;
  wire count_r0_carry__1_n_14;
  wire count_r0_carry__1_n_15;
  wire count_r0_carry__1_n_2;
  wire count_r0_carry__1_n_3;
  wire count_r0_carry__1_n_4;
  wire count_r0_carry__1_n_5;
  wire count_r0_carry__1_n_6;
  wire count_r0_carry__1_n_7;
  wire count_r0_carry__1_n_8;
  wire count_r0_carry__1_n_9;
  wire count_r0_carry_i_1__1_n_0;
  wire count_r0_carry_i_2__1_n_0;
  wire count_r0_carry_i_3__1_n_0;
  wire count_r0_carry_i_4__1_n_0;
  wire count_r0_carry_i_5__1_n_0;
  wire count_r0_carry_i_6__1_n_0;
  wire count_r0_carry_i_7__1_n_0;
  wire count_r0_carry_i_8__0_n_0;
  wire count_r0_carry_n_0;
  wire count_r0_carry_n_1;
  wire count_r0_carry_n_10;
  wire count_r0_carry_n_11;
  wire count_r0_carry_n_12;
  wire count_r0_carry_n_13;
  wire count_r0_carry_n_14;
  wire count_r0_carry_n_15;
  wire count_r0_carry_n_2;
  wire count_r0_carry_n_3;
  wire count_r0_carry_n_4;
  wire count_r0_carry_n_5;
  wire count_r0_carry_n_6;
  wire count_r0_carry_n_7;
  wire count_r0_carry_n_8;
  wire count_r0_carry_n_9;
  wire \count_r[0]_i_1__2_n_0 ;
  wire \count_r[10]_i_1__1_n_0 ;
  wire \count_r[11]_i_1__1_n_0 ;
  wire \count_r[12]_i_1__1_n_0 ;
  wire \count_r[13]_i_1__1_n_0 ;
  wire \count_r[14]_i_1__1_n_0 ;
  wire \count_r[15]_i_1__1_n_0 ;
  wire \count_r[16]_i_1__1_n_0 ;
  wire \count_r[17]_i_1__1_n_0 ;
  wire \count_r[18]_i_1__1_n_0 ;
  wire \count_r[19]_i_1__1_n_0 ;
  wire \count_r[1]_i_1__3_n_0 ;
  wire \count_r[20]_i_1__1_n_0 ;
  wire \count_r[21]_i_1__1_n_0 ;
  wire \count_r[22]_i_1__1_n_0 ;
  wire \count_r[23]_i_1__1_n_0 ;
  wire \count_r[2]_i_1__3_n_0 ;
  wire \count_r[3]_i_1__3_n_0 ;
  wire \count_r[4]_i_1__3_n_0 ;
  wire \count_r[5]_i_1__3_n_0 ;
  wire \count_r[6]_i_1__3_n_0 ;
  wire \count_r[7]_i_1__3_n_0 ;
  wire \count_r[8]_i_1__1_n_0 ;
  wire \count_r[9]_i_1__1_n_0 ;
  wire \count_r_reg[14]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire start;
  wire w_almost_final_transaction_i_2_n_0;
  wire w_almost_final_transaction_i_3_n_0;
  wire w_almost_final_transaction_i_4_n_0;
  wire w_almost_final_transaction_i_5_n_0;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry
       (.CI(\<const1> ),
        .CI_TOP(GND_2),
        .CO({count_r0_carry_n_0,count_r0_carry_n_1,count_r0_carry_n_2,count_r0_carry_n_3,count_r0_carry_n_4,count_r0_carry_n_5,count_r0_carry_n_6,count_r0_carry_n_7}),
        .DI({\count_r_reg_n_0_[7] ,\count_r_reg_n_0_[6] ,\count_r_reg_n_0_[5] ,\count_r_reg_n_0_[4] ,\count_r_reg_n_0_[3] ,\count_r_reg_n_0_[2] ,\count_r_reg_n_0_[1] ,\count_r_reg_n_0_[0] }),
        .O({count_r0_carry_n_8,count_r0_carry_n_9,count_r0_carry_n_10,count_r0_carry_n_11,count_r0_carry_n_12,count_r0_carry_n_13,count_r0_carry_n_14,count_r0_carry_n_15}),
        .S({count_r0_carry_i_1__1_n_0,count_r0_carry_i_2__1_n_0,count_r0_carry_i_3__1_n_0,count_r0_carry_i_4__1_n_0,count_r0_carry_i_5__1_n_0,count_r0_carry_i_6__1_n_0,count_r0_carry_i_7__1_n_0,count_r0_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__0
       (.CI(count_r0_carry_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__0_n_0,count_r0_carry__0_n_1,count_r0_carry__0_n_2,count_r0_carry__0_n_3,count_r0_carry__0_n_4,count_r0_carry__0_n_5,count_r0_carry__0_n_6,count_r0_carry__0_n_7}),
        .DI({\count_r_reg_n_0_[15] ,\count_r_reg_n_0_[14] ,\count_r_reg_n_0_[13] ,\count_r_reg_n_0_[12] ,\count_r_reg_n_0_[11] ,\count_r_reg_n_0_[10] ,\count_r_reg_n_0_[9] ,\count_r_reg_n_0_[8] }),
        .O({count_r0_carry__0_n_8,count_r0_carry__0_n_9,count_r0_carry__0_n_10,count_r0_carry__0_n_11,count_r0_carry__0_n_12,count_r0_carry__0_n_13,count_r0_carry__0_n_14,count_r0_carry__0_n_15}),
        .S({count_r0_carry__0_i_1__1_n_0,count_r0_carry__0_i_2__1_n_0,count_r0_carry__0_i_3__1_n_0,count_r0_carry__0_i_4__1_n_0,count_r0_carry__0_i_5__1_n_0,count_r0_carry__0_i_6__1_n_0,count_r0_carry__0_i_7__1_n_0,count_r0_carry__0_i_8__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_1__1
       (.I0(\count_r_reg_n_0_[15] ),
        .O(count_r0_carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_2__1
       (.I0(\count_r_reg_n_0_[14] ),
        .O(count_r0_carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_3__1
       (.I0(\count_r_reg_n_0_[13] ),
        .O(count_r0_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_4__1
       (.I0(\count_r_reg_n_0_[12] ),
        .O(count_r0_carry__0_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_5__1
       (.I0(\count_r_reg_n_0_[11] ),
        .O(count_r0_carry__0_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_6__1
       (.I0(\count_r_reg_n_0_[10] ),
        .O(count_r0_carry__0_i_6__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_7__1
       (.I0(\count_r_reg_n_0_[9] ),
        .O(count_r0_carry__0_i_7__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__0_i_8__1
       (.I0(\count_r_reg_n_0_[8] ),
        .O(count_r0_carry__0_i_8__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    count_r0_carry__1
       (.CI(count_r0_carry__0_n_0),
        .CI_TOP(GND_2),
        .CO({count_r0_carry__1_n_1,count_r0_carry__1_n_2,count_r0_carry__1_n_3,count_r0_carry__1_n_4,count_r0_carry__1_n_5,count_r0_carry__1_n_6,count_r0_carry__1_n_7}),
        .DI({\<const0> ,\count_r_reg_n_0_[22] ,\count_r_reg_n_0_[21] ,\count_r_reg_n_0_[20] ,\count_r_reg_n_0_[19] ,\count_r_reg_n_0_[18] ,\count_r_reg_n_0_[17] ,\count_r_reg_n_0_[16] }),
        .O({count_r0_carry__1_n_8,count_r0_carry__1_n_9,count_r0_carry__1_n_10,count_r0_carry__1_n_11,count_r0_carry__1_n_12,count_r0_carry__1_n_13,count_r0_carry__1_n_14,count_r0_carry__1_n_15}),
        .S({count_r0_carry__1_i_1__1_n_0,count_r0_carry__1_i_2__1_n_0,count_r0_carry__1_i_3__1_n_0,count_r0_carry__1_i_4__1_n_0,count_r0_carry__1_i_5__1_n_0,count_r0_carry__1_i_6__1_n_0,count_r0_carry__1_i_7__1_n_0,count_r0_carry__1_i_8__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_1__1
       (.I0(\count_r_reg_n_0_[23] ),
        .O(count_r0_carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_2__1
       (.I0(\count_r_reg_n_0_[22] ),
        .O(count_r0_carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_3__1
       (.I0(\count_r_reg_n_0_[21] ),
        .O(count_r0_carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_4__1
       (.I0(\count_r_reg_n_0_[20] ),
        .O(count_r0_carry__1_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_5__1
       (.I0(\count_r_reg_n_0_[19] ),
        .O(count_r0_carry__1_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_6__1
       (.I0(\count_r_reg_n_0_[18] ),
        .O(count_r0_carry__1_i_6__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_7__1
       (.I0(\count_r_reg_n_0_[17] ),
        .O(count_r0_carry__1_i_7__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry__1_i_8__1
       (.I0(\count_r_reg_n_0_[16] ),
        .O(count_r0_carry__1_i_8__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_1__1
       (.I0(\count_r_reg_n_0_[7] ),
        .O(count_r0_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_2__1
       (.I0(\count_r_reg_n_0_[6] ),
        .O(count_r0_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_3__1
       (.I0(\count_r_reg_n_0_[5] ),
        .O(count_r0_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_4__1
       (.I0(\count_r_reg_n_0_[4] ),
        .O(count_r0_carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_5__1
       (.I0(\count_r_reg_n_0_[3] ),
        .O(count_r0_carry_i_5__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_6__1
       (.I0(\count_r_reg_n_0_[2] ),
        .O(count_r0_carry_i_6__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_7__1
       (.I0(\count_r_reg_n_0_[1] ),
        .O(count_r0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9555)) 
    count_r0_carry_i_8__0
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(axi_m_wlast_o),
        .I2(axis_s_tvalid_i),
        .I3(axi_m_wready_i),
        .O(count_r0_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_1__2 
       (.I0(Q[0]),
        .I1(start),
        .I2(count_r0_carry_n_15),
        .O(\count_r[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[10]_i_1__1 
       (.I0(Q[10]),
        .I1(start),
        .I2(count_r0_carry__0_n_13),
        .O(\count_r[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[11]_i_1__1 
       (.I0(Q[11]),
        .I1(start),
        .I2(count_r0_carry__0_n_12),
        .O(\count_r[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[12]_i_1__1 
       (.I0(Q[12]),
        .I1(start),
        .I2(count_r0_carry__0_n_11),
        .O(\count_r[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[13]_i_1__1 
       (.I0(Q[13]),
        .I1(start),
        .I2(count_r0_carry__0_n_10),
        .O(\count_r[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[14]_i_1__1 
       (.I0(Q[14]),
        .I1(start),
        .I2(count_r0_carry__0_n_9),
        .O(\count_r[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[15]_i_1__1 
       (.I0(Q[15]),
        .I1(start),
        .I2(count_r0_carry__0_n_8),
        .O(\count_r[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[16]_i_1__1 
       (.I0(Q[16]),
        .I1(start),
        .I2(count_r0_carry__1_n_15),
        .O(\count_r[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[17]_i_1__1 
       (.I0(Q[17]),
        .I1(start),
        .I2(count_r0_carry__1_n_14),
        .O(\count_r[17]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[18]_i_1__1 
       (.I0(Q[18]),
        .I1(start),
        .I2(count_r0_carry__1_n_13),
        .O(\count_r[18]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[19]_i_1__1 
       (.I0(Q[19]),
        .I1(start),
        .I2(count_r0_carry__1_n_12),
        .O(\count_r[19]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[1]_i_1__3 
       (.I0(Q[1]),
        .I1(start),
        .I2(count_r0_carry_n_14),
        .O(\count_r[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[20]_i_1__1 
       (.I0(Q[20]),
        .I1(start),
        .I2(count_r0_carry__1_n_11),
        .O(\count_r[20]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[21]_i_1__1 
       (.I0(Q[21]),
        .I1(start),
        .I2(count_r0_carry__1_n_10),
        .O(\count_r[21]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[22]_i_1__1 
       (.I0(Q[22]),
        .I1(start),
        .I2(count_r0_carry__1_n_9),
        .O(\count_r[22]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[23]_i_1__1 
       (.I0(Q[23]),
        .I1(start),
        .I2(count_r0_carry__1_n_8),
        .O(\count_r[23]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[2]_i_1__3 
       (.I0(Q[2]),
        .I1(start),
        .I2(count_r0_carry_n_13),
        .O(\count_r[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[3]_i_1__3 
       (.I0(Q[3]),
        .I1(start),
        .I2(count_r0_carry_n_12),
        .O(\count_r[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[4]_i_1__3 
       (.I0(Q[4]),
        .I1(start),
        .I2(count_r0_carry_n_11),
        .O(\count_r[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[5]_i_1__3 
       (.I0(Q[5]),
        .I1(start),
        .I2(count_r0_carry_n_10),
        .O(\count_r[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[6]_i_1__3 
       (.I0(Q[6]),
        .I1(start),
        .I2(count_r0_carry_n_9),
        .O(\count_r[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[7]_i_1__3 
       (.I0(Q[7]),
        .I1(start),
        .I2(count_r0_carry_n_8),
        .O(\count_r[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[8]_i_1__1 
       (.I0(Q[8]),
        .I1(start),
        .I2(count_r0_carry__0_n_15),
        .O(\count_r[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[9]_i_1__1 
       (.I0(Q[9]),
        .I1(start),
        .I2(count_r0_carry__0_n_14),
        .O(\count_r[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[0]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[10]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[11]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[12]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[13]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[14]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[15]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[16]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[17]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[18]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[19]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[1]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[20]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[21]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[22]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[23]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[2]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[3]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[4]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[5]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[6]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[7]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[8]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[9]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    w_almost_final_transaction_i_1
       (.I0(w_almost_final_transaction_i_2_n_0),
        .I1(w_almost_final_transaction_i_3_n_0),
        .I2(w_almost_final_transaction_i_4_n_0),
        .I3(w_almost_final_transaction_i_5_n_0),
        .O(\count_r_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_2
       (.I0(\count_r_reg_n_0_[14] ),
        .I1(\count_r_reg_n_0_[15] ),
        .I2(\count_r_reg_n_0_[12] ),
        .I3(\count_r_reg_n_0_[13] ),
        .I4(\count_r_reg_n_0_[17] ),
        .I5(\count_r_reg_n_0_[16] ),
        .O(w_almost_final_transaction_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    w_almost_final_transaction_i_3
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg_n_0_[5] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(w_almost_final_transaction_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_4
       (.I0(\count_r_reg_n_0_[8] ),
        .I1(\count_r_reg_n_0_[9] ),
        .I2(\count_r_reg_n_0_[6] ),
        .I3(\count_r_reg_n_0_[7] ),
        .I4(\count_r_reg_n_0_[11] ),
        .I5(\count_r_reg_n_0_[10] ),
        .O(w_almost_final_transaction_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    w_almost_final_transaction_i_5
       (.I0(\count_r_reg_n_0_[20] ),
        .I1(\count_r_reg_n_0_[21] ),
        .I2(\count_r_reg_n_0_[18] ),
        .I3(\count_r_reg_n_0_[19] ),
        .I4(\count_r_reg_n_0_[23] ),
        .I5(\count_r_reg_n_0_[22] ),
        .O(w_almost_final_transaction_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "counter_bidir" *) 
module ponos_counter_bidir__parameterized1
   (aw_idle_reg,
    SR,
    clk,
    wfirst_pulse,
    is_zero_r_reg_0,
    axi_m_awready_i,
    aw_idle);
  output aw_idle_reg;
  input [0:0]SR;
  input clk;
  input wfirst_pulse;
  input is_zero_r_reg_0;
  input axi_m_awready_i;
  input aw_idle;

  wire \<const1> ;
  wire [0:0]SR;
  wire aw_idle;
  wire aw_idle_reg;
  wire axi_m_awready_i;
  wire clk;
  wire \count_r[0]_i_1__3_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__0_n_0 ;
  wire \count_r[3]_i_1__0_n_0 ;
  wire \count_r[4]_i_1__0_n_0 ;
  wire \count_r[4]_i_2__0_n_0 ;
  wire \count_r[4]_i_3_n_0 ;
  wire \count_r[5]_i_1__0_n_0 ;
  wire \count_r[5]_i_2__0_n_0 ;
  wire \count_r[6]_i_1__0_n_0 ;
  wire \count_r[6]_i_2__0_n_0 ;
  wire \count_r[6]_i_3_n_0 ;
  wire \count_r[7]_i_1__0_n_0 ;
  wire \count_r[7]_i_2__0_n_0 ;
  wire \count_r[7]_i_3_n_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_i_3_n_0;
  wire is_zero_r_i_4__0_n_0;
  wire is_zero_r_reg_0;
  wire p_1_out;
  wire stall_aw;
  wire wfirst_pulse;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h01F1)) 
    awvalid_r_i_1
       (.I0(aw_idle),
        .I1(stall_aw),
        .I2(is_zero_r_reg_0),
        .I3(axi_m_awready_i),
        .O(aw_idle_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \count_r[0]_i_1__3 
       (.I0(wfirst_pulse),
        .I1(is_zero_r_reg_0),
        .I2(axi_m_awready_i),
        .I3(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hC6669CCC)) 
    \count_r[1]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(axi_m_awready_i),
        .I3(is_zero_r_reg_0),
        .I4(wfirst_pulse),
        .O(\count_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7770888EFFF1000)) 
    \count_r[2]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(wfirst_pulse),
        .I2(is_zero_r_reg_0),
        .I3(axi_m_awready_i),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \count_r[3]_i_1__0 
       (.I0(p_1_out),
        .I1(wfirst_pulse),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg_n_0_[3] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count_r[3]_i_2__0 
       (.I0(is_zero_r_reg_0),
        .I1(axi_m_awready_i),
        .O(p_1_out));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \count_r[4]_i_1__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r[4]_i_2__0_n_0 ),
        .I3(\count_r[4]_i_3_n_0 ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(\count_r_reg_n_0_[3] ),
        .O(\count_r[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \count_r[4]_i_2__0 
       (.I0(axi_m_awready_i),
        .I1(is_zero_r_reg_0),
        .I2(wfirst_pulse),
        .O(\count_r[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_r[4]_i_3 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(wfirst_pulse),
        .I2(is_zero_r_reg_0),
        .I3(axi_m_awready_i),
        .O(\count_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77778888FFF80007)) 
    \count_r[5]_i_1__0 
       (.I0(\count_r[6]_i_2__0_n_0 ),
        .I1(\count_r[6]_i_3_n_0 ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r[5]_i_2__0_n_0 ),
        .I4(\count_r_reg_n_0_[5] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(\count_r[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \count_r[5]_i_2__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(wfirst_pulse),
        .I3(is_zero_r_reg_0),
        .I4(axi_m_awready_i),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F8080FFAA0055)) 
    \count_r[6]_i_1__0 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(\count_r[6]_i_2__0_n_0 ),
        .I2(\count_r[6]_i_3_n_0 ),
        .I3(\count_r[7]_i_2__0_n_0 ),
        .I4(\count_r_reg_n_0_[6] ),
        .I5(\count_r_reg_n_0_[5] ),
        .O(\count_r[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count_r[6]_i_2__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[3] ),
        .O(\count_r[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \count_r[6]_i_3 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(wfirst_pulse),
        .I2(is_zero_r_reg_0),
        .I3(axi_m_awready_i),
        .O(\count_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00FFFE0001)) 
    \count_r[7]_i_1__0 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(\count_r[7]_i_2__0_n_0 ),
        .I2(\count_r_reg_n_0_[5] ),
        .I3(\count_r[7]_i_3_n_0 ),
        .I4(\count_r_reg_n_0_[7] ),
        .I5(\count_r_reg_n_0_[6] ),
        .O(\count_r[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_r[7]_i_2__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(p_1_out),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[1] ),
        .I5(\count_r_reg_n_0_[3] ),
        .O(\count_r[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_r[7]_i_3 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[5] ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(\count_r[6]_i_3_n_0 ),
        .O(\count_r[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[0]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[1]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[2]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[3]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[4]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[5]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[6]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\count_r[7]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFCEFEFEF0CE0E0E0)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_i_2__0_n_0),
        .I1(is_zero_r_i_3_n_0),
        .I2(wfirst_pulse),
        .I3(is_zero_r_reg_0),
        .I4(axi_m_awready_i),
        .I5(stall_aw),
        .O(is_zero_r_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    is_zero_r_i_2__0
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(\count_r_reg_n_0_[7] ),
        .I2(\count_r_reg_n_0_[5] ),
        .I3(\count_r_reg_n_0_[4] ),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r[6]_i_2__0_n_0 ),
        .O(is_zero_r_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00008F0000000000)) 
    is_zero_r_i_3
       (.I0(axi_m_awready_i),
        .I1(is_zero_r_reg_0),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[4] ),
        .I5(is_zero_r_i_4__0_n_0),
        .O(is_zero_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__0
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[5] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg_n_0_[7] ),
        .I5(\count_r_reg_n_0_[6] ),
        .O(is_zero_r_i_4__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(is_zero_r_i_1__0_n_0),
        .Q(stall_aw),
        .S(SR));
endmodule

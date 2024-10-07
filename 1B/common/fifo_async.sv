

`ifndef FIFO_ASYNC_SV
`define FIFO_ASYNC_SV

module fifo_async #(
  parameter FIFO_DEPTH = 64,
  parameter FIFO_W = 512,
  parameter MEM_MACRO_TYPE = "distributed",  // "registers", "distributed"-LUTRAM, "block"-BRAM
  parameter CASCADE_HEIGHT = 0
) (
  input wr_clk,
  input rd_clk,
  input rst_n,

  input                     wr_req_i,
  input        [FIFO_W-1:0] wr_data_i,
  output logic              full_o,

  input                     rd_req_i,
  output logic [FIFO_W-1:0] rd_data_o,
  output logic              empty_o
);

  logic [FIFO_W-1:0] fifo_in;
  logic              fifo_wr;
  logic              fifo_full;
  logic [FIFO_W-1:0] fifo_out;
  logic              fifo_rd;
  logic              fifo_empty;

  assign fifo_in = wr_data_i;
  assign fifo_wr = wr_req_i & ~fifo_full;
  assign fifo_rd = rd_req_i & ~fifo_empty;

  if (MEM_MACRO_TYPE == "block") begin
    localparam DATA_DEPTH = (FIFO_DEPTH + 511) / 512 * 512;  // make FIFO_DEPTH multiply of 512
    localparam NUM_BLOCKS = (FIFO_W + 71) / 72;
    localparam NUM_72b_BLOCKS = ((NUM_BLOCKS - 1) * 72 + 4 >= FIFO_W) ? NUM_BLOCKS - 1 :
                                (FIFO_W <= NUM_BLOCKS * 64) ? 0 : (FIFO_W - NUM_BLOCKS * 64) / 8;
    localparam NUM_64b_BLOCKS = (NUM_72b_BLOCKS == NUM_BLOCKS) ? 0 : NUM_BLOCKS - NUM_72b_BLOCKS - 1;
    localparam EXTRA_BLOCK_W = FIFO_W - NUM_64b_BLOCKS * 64 - NUM_72b_BLOCKS * 72;

    logic [NUM_BLOCKS-1:0] full;
    logic [NUM_BLOCKS-1:0] empty;
    for (genvar i = 0; i < NUM_64b_BLOCKS; i = i + 1) begin
      // xpm_fifo_sync: Asynchronous FIFO
      // Xilinx Parameterized Macro, version 2023.1
      xpm_fifo_async #(
        .CASCADE_HEIGHT   (CASCADE_HEIGHT),
        .FIFO_MEMORY_TYPE (MEM_MACRO_TYPE),
        .FIFO_READ_LATENCY(0),
        .FIFO_WRITE_DEPTH (DATA_DEPTH),
        .READ_DATA_WIDTH  (64),
        .READ_MODE        ("fwft"),
        .USE_ADV_FEATURES ("0000"),
        .WRITE_DATA_WIDTH (64)
      ) i_fifo_async (
        .wr_clk,
        .rd_clk,
        .rst(~rst_n),

        .wr_en(fifo_wr),
        .din  (fifo_in[64*i+:64]),
        .full (full[i]),

        .rd_en(fifo_rd),
        .dout (fifo_out[64*i+:64]),
        .empty(empty[i])
      );
    end
    for (genvar i = 0; i < NUM_72b_BLOCKS; i = i + 1) begin
      // xpm_fifo_async: Asynchronous FIFO
      // Xilinx Parameterized Macro, version 2023.1
      xpm_fifo_async #(
        .CASCADE_HEIGHT   (CASCADE_HEIGHT),
        .FIFO_MEMORY_TYPE (MEM_MACRO_TYPE),
        .FIFO_READ_LATENCY(0),
        .FIFO_WRITE_DEPTH (DATA_DEPTH),
        .READ_DATA_WIDTH  (72),
        .READ_MODE        ("fwft"),
        .USE_ADV_FEATURES ("0000"),
        .WRITE_DATA_WIDTH (72)
      ) i_fifo_axis_sync (
        .wr_clk,
        .rd_clk,
        .rst(~rst_n),

        .wr_en(fifo_wr),
        .din  (fifo_in[64*NUM_64b_BLOCKS+72*i+:72]),
        .full (full[NUM_64b_BLOCKS+i]),

        .rd_en(fifo_rd),
        .dout (fifo_out[64*NUM_64b_BLOCKS+72*i+:72]),
        .empty(empty[NUM_64b_BLOCKS+i])
      );
    end
    if (EXTRA_BLOCK_W > 0) begin
      // xpm_fifo_sync: Synchronous FIFO
      // Xilinx Parameterized Macro, version 2023.1
      localparam LOC_MEM_MACRO_TYPE = (EXTRA_BLOCK_W <= 4) ? "distributed" : MEM_MACRO_TYPE;
      xpm_fifo_async #(
        .CASCADE_HEIGHT   (CASCADE_HEIGHT),
        .FIFO_MEMORY_TYPE (LOC_MEM_MACRO_TYPE),
        .FIFO_READ_LATENCY(0),
        .FIFO_WRITE_DEPTH (DATA_DEPTH),
        .READ_DATA_WIDTH  (EXTRA_BLOCK_W),
        .READ_MODE        ("fwft"),
        .USE_ADV_FEATURES ("0000"),
        .WRITE_DATA_WIDTH (EXTRA_BLOCK_W)
      ) i_fifo_async (
        .wr_clk,
        .rd_clk,
        .rst(~rst_n),

        .wr_en(fifo_wr),
        .din  (fifo_in[(FIFO_W-1)-:EXTRA_BLOCK_W]),
        .full (full[NUM_BLOCKS-1]),

        .rd_en(fifo_rd),
        .dout (fifo_out[(FIFO_W-1)-:EXTRA_BLOCK_W]),
        .empty(empty[NUM_BLOCKS-1])
      );
    end
    assign fifo_full  = |full;
    assign fifo_empty = |empty;
  end else begin
    localparam DATA_DEPTH = 2 ** $clog2(FIFO_DEPTH);
    // xpm_fifo_sync: Asynchronous FIFO
    // Xilinx Parameterized Macro, version 2023.1
    xpm_fifo_async #(
      .CASCADE_HEIGHT   (CASCADE_HEIGHT),
      .FIFO_MEMORY_TYPE (MEM_MACRO_TYPE),
      .FIFO_READ_LATENCY(0),
      .FIFO_WRITE_DEPTH (DATA_DEPTH),
      .READ_DATA_WIDTH  (FIFO_W),
      .READ_MODE        ("fwft"),
      .USE_ADV_FEATURES ("0000"),
      .WRITE_DATA_WIDTH (FIFO_W)
    ) i_fifo_async (
      .wr_clk,
      .rd_clk,
      .rst(~rst_n),

      .wr_en(fifo_wr),
      .din  (fifo_in),
      .full (fifo_full),

      .rd_en(fifo_rd),
      .dout (fifo_out),
      .empty(fifo_empty)
    );
  end

  assign    full_o = fifo_full;
  assign   empty_o = fifo_empty;
  assign rd_data_o = fifo_out;

  // pragma translate_off
`ifndef VERILATOR
  initial begin : p_assertions
    assert ((MEM_MACRO_TYPE == "registers") || 
            (MEM_MACRO_TYPE == "distributed") || 
            (MEM_MACRO_TYPE == "block"))
    else $fatal(1, "AXIS_FIFO_ASYNC: MEM_MACRO_TYPE only registers, distributed, block aloud ");
  end
`endif
  // pragma translate_on

endmodule

`endif  // FIFO_ASYNC_SV
`timescale 1ns / 1ps

module tb_sc_fifo_axi;

    parameter CLK_PERIOD = 20;   // 50 MHz FCLK_CLK0
    parameter DEPTH      = 32;

    localparam FPGA_REV_REG   = 6'h00;
    localparam FIFO_RST_REG   = 6'h04;
    localparam WR_DATA_REG    = 6'h08;
    localparam RD_REQ_REG     = 6'h0C;
    localparam RD_DATA_REG    = 6'h10;
    localparam STATUS_REG     = 6'h14;
    localparam DATA_COUNT_REG = 6'h18;
    localparam CONFIG_REG     = 6'h1C;
    localparam THRESHOLD_REG  = 6'h20;

    reg         clk;
    reg         aresetn;
    reg  [5:0]  awaddr;
    reg         awvalid;
    wire        awready;
    reg  [31:0] wdata;
    reg  [3:0]  wstrb;
    reg         wvalid;
    wire        wready;
    wire [1:0]  bresp;
    wire        bvalid;
    reg         bready;
    reg  [5:0]  araddr;
    reg         arvalid;
    wire        arready;
    wire [31:0] rdata;
    wire [1:0]  rresp;
    wire        rvalid;
    reg         rready;

    integer raw_fd;
    integer errors;
    integer i;
    integer polls;
    reg [31:0] rd;
    reg [15:0] expected [0:DEPTH-1];

    sc_fifo_axi_v1_0 uut (
        .s00_axi_aclk   (clk),
        .s00_axi_aresetn(aresetn),
        .s00_axi_awaddr (awaddr),
        .s00_axi_awprot (3'b000),
        .s00_axi_awvalid(awvalid),
        .s00_axi_awready(awready),
        .s00_axi_wdata  (wdata),
        .s00_axi_wstrb  (wstrb),
        .s00_axi_wvalid (wvalid),
        .s00_axi_wready (wready),
        .s00_axi_bresp  (bresp),
        .s00_axi_bvalid (bvalid),
        .s00_axi_bready (bready),
        .s00_axi_araddr (araddr),
        .s00_axi_arprot (3'b000),
        .s00_axi_arvalid(arvalid),
        .s00_axi_arready(arready),
        .s00_axi_rdata  (rdata),
        .s00_axi_rresp  (rresp),
        .s00_axi_rvalid (rvalid),
        .s00_axi_rready (rready)
    );

    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    // ---------------- AXI-Lite master tasks ----------------
    task axi_write(input [5:0] addr, input [31:0] data);
    begin
        awaddr = addr; wdata = data; wstrb = 4'hF;
        awvalid = 1; wvalid = 1;
        @(posedge clk);
        while (!awready) @(posedge clk);
        #1 awvalid = 0; wvalid = 0;
        @(posedge clk);
        while (!bvalid) @(posedge clk);
        #1;
    end
    endtask

    task axi_read(input [5:0] addr, output [31:0] data);
    begin
        araddr = addr;
        arvalid = 1;
        @(posedge clk);
        while (!arready) @(posedge clk);
        #1 arvalid = 0;
        @(posedge clk);
        while (!rvalid) @(posedge clk);
        data = rdata;
        #1;
    end
    endtask

    task check(input [5:0] addr, input [31:0] exp, input [8*32-1:0] name);
    begin
        axi_read(addr, rd);
        $fdisplay(raw_fd | 1, "%0s (0x%02h) = 0x%08h  expected 0x%08h  %s",
                  name, addr, rd, exp, (rd === exp) ? "PASS" : "FAIL");
        if (rd !== exp) errors = errors + 1;
    end
    endtask

    // ------------- Pulse-width monitor (spec item 4) -------------
    // srst / write_enable / read_enable must never be high two clocks in a row
    // (except srst while the AXI reset is held low).
    reg prev_wr, prev_rd, prev_rst;
    integer wr_pulses, rd_pulses;
    always @(posedge clk) begin
        if (prev_wr && uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_wr_pulse) begin
            $fdisplay(raw_fd | 1, "FAIL: write_enable high for more than one clock at %0t", $time);
            errors = errors + 1;
        end
        if (prev_rd && uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_rd_pulse) begin
            $fdisplay(raw_fd | 1, "FAIL: read_enable high for more than one clock at %0t", $time);
            errors = errors + 1;
        end
        if (aresetn && prev_rst && uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_rst_pulse) begin
            $fdisplay(raw_fd | 1, "FAIL: FIFO_RST pulse high for more than one clock at %0t", $time);
            errors = errors + 1;
        end
        prev_wr  = uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_wr_pulse;
        prev_rd  = uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_rd_pulse;
        prev_rst = uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_rst_pulse;
        if (uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_wr_pulse) wr_pulses = wr_pulses + 1;
        if (uut.sc_fifo_axi_v1_0_S00_AXI_inst.fifo_rd_pulse) rd_pulses = rd_pulses + 1;
    end

    initial begin
        raw_fd = $fopen("test_results.txt");
        errors = 0;
        wr_pulses = 0; rd_pulses = 0;
        prev_wr = 0; prev_rd = 0; prev_rst = 0;
        awaddr = 0; awvalid = 0; wdata = 0; wstrb = 0; wvalid = 0; bready = 1;
        araddr = 0; arvalid = 0; rready = 1;

        aresetn = 0;
        #(CLK_PERIOD*5);
        aresetn = 1;
        #(CLK_PERIOD*2);

        // 1. Reset values of every offset
        $fdisplay(raw_fd | 1, "--- Reset values ---");
        check(FPGA_REV_REG,   32'h5200_0004, "FPGA_REV_REG");
        check(FIFO_RST_REG,   32'h0000_0000, "FIFO_RST_REG");
        check(WR_DATA_REG,    32'h0000_0000, "WR_DATA_REG");
        check(RD_REQ_REG,     32'h0000_0000, "RD_REQ_REG");
        check(RD_DATA_REG,    32'h0000_0000, "RD_DATA_REG");
        check(STATUS_REG,     32'h0000_0005, "STATUS_REG");
        check(DATA_COUNT_REG, 32'h0000_0000, "DATA_COUNT_REG");
        check(CONFIG_REG,     32'h0100_2010, "CONFIG_REG");
        check(THRESHOLD_REG,  32'h001F_0001, "THRESHOLD_REG");
        for (i = 9; i < 16; i = i + 1)
            check(i*4, 32'h0, "RESERVED");

        // 2. Writes to read-only / reserved registers are ignored
        $fdisplay(raw_fd | 1, "--- Writes to RO registers ---");
        axi_write(FPGA_REV_REG,  32'hFFFF_FFFF);
        axi_write(CONFIG_REG,    32'hFFFF_FFFF);
        axi_write(THRESHOLD_REG, 32'hFFFF_FFFF);
        axi_write(6'h24,         32'hFFFF_FFFF);
        check(FPGA_REV_REG,  32'h5200_0004, "FPGA_REV_REG");
        check(CONFIG_REG,    32'h0100_2010, "CONFIG_REG");
        check(THRESHOLD_REG, 32'h001F_0001, "THRESHOLD_REG");
        check(6'h24,         32'h0,         "RESERVED");
        check(DATA_COUNT_REG,32'h0,         "DATA_COUNT_REG");

        // 3. Writing 0 to RD_REQ / FIFO_RST does nothing
        axi_write(RD_REQ_REG,   32'h0);
        axi_write(FIFO_RST_REG, 32'h0);
        check(STATUS_REG, 32'h0000_0005, "STATUS_REG");

        // 4. Fill the FIFO (DEPTH pushes)
        $fdisplay(raw_fd | 1, "--- Push %0d words ---", DEPTH);
        for (i = 0; i < DEPTH; i = i + 1) begin
            expected[i] = (i * 16'h0101) ^ 16'hA5A5;
            axi_write(WR_DATA_REG, {16'hDEAD, expected[i]});   // upper bits ignored
        end
        check(DATA_COUNT_REG, DEPTH,         "DATA_COUNT_REG");
        check(STATUS_REG,     32'h0000_000A, "STATUS_REG (full)");
        check(WR_DATA_REG,    32'h0,         "WR_DATA_REG (WO)");

        // 5. Push while full is ignored
        axi_write(WR_DATA_REG, 32'h0000_BEEF);
        check(DATA_COUNT_REG, DEPTH, "DATA_COUNT_REG (full)");

        // 6. Pop everything: request, poll RD_VALID, read RD_DATA
        $fdisplay(raw_fd | 1, "--- Pop %0d words ---", DEPTH);
        for (i = 0; i < DEPTH; i = i + 1) begin
            axi_write(RD_REQ_REG, 32'h1);
            polls = 0;
            axi_read(STATUS_REG, rd);
            while (!rd[4] && polls < 10) begin
                axi_read(STATUS_REG, rd);
                polls = polls + 1;
            end
            axi_read(RD_DATA_REG, rd);
            $fdisplay(raw_fd | 1, "Pop %2d: RD_DATA = 0x%04h  expected 0x%04h  %s",
                      i, rd, expected[i], (rd === {16'h0, expected[i]}) ? "PASS" : "FAIL");
            if (rd !== {16'h0, expected[i]}) errors = errors + 1;
        end
        check(DATA_COUNT_REG, 32'h0,         "DATA_COUNT_REG");
        check(STATUS_REG,     32'h0000_0015, "STATUS_REG (empty, RD_VALID)");

        // 7. Read request while empty: RD_VALID clears and stays 0
        axi_write(RD_REQ_REG, 32'h1);
        #(CLK_PERIOD*5);
        check(STATUS_REG, 32'h0000_0005, "STATUS_REG (pop empty)");

        // 8. Software reset clears the FIFO and RD_VALID
        $fdisplay(raw_fd | 1, "--- FIFO_RST ---");
        for (i = 0; i < 5; i = i + 1)
            axi_write(WR_DATA_REG, i + 1);
        axi_write(RD_REQ_REG, 32'h1);
        #(CLK_PERIOD*5);
        check(STATUS_REG,     32'h0000_0010, "STATUS_REG (RD_VALID)");
        check(DATA_COUNT_REG, 32'd4,         "DATA_COUNT_REG");
        axi_write(FIFO_RST_REG, 32'h1);
        check(DATA_COUNT_REG, 32'h0,         "DATA_COUNT_REG (after rst)");
        check(STATUS_REG,     32'h0000_0005, "STATUS_REG (after rst)");
        check(RD_DATA_REG,    32'h0,         "RD_DATA_REG (after rst)");

        // One write_enable pulse per WR_DATA write (32 + 1 while full + 5),
        // one read_enable pulse per RD_REQ write of 1 (32 + 1 + 1)
        $fdisplay(raw_fd | 1, "write_enable pulses = %0d (expected 38), read_enable pulses = %0d (expected 34)",
                  wr_pulses, rd_pulses);
        if (wr_pulses != 38 || rd_pulses != 34) errors = errors + 1;

        $fdisplay(raw_fd | 1, "Test finished with %0d error(s)", errors);
        $fclose(raw_fd);
        $finish;
    end

endmodule

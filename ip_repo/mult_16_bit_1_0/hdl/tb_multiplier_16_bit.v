`timescale 1ns / 1ps

module tb_multiplier_16_bit;

    parameter CLK_PERIOD = 8;   // 125 MHz

    reg         clk;
    reg         rst_n;
    reg  [15:0] a;
    reg  [15:0] b;
    wire [31:0] prod;

    integer i;

    multiplier_16_bit uut (
        .clk  (clk),
        .rst_n(rst_n),
        .a    (a),
        .b    (b),
        .prod (prod)
    );

    // Clock generation
    initial clk = 1;
    always #(CLK_PERIOD/2) clk = ~clk;

    initial begin


        // Hold reset for two clock cycles
        rst_n = 0;
        a = 0;
        b = 0;
        #(CLK_PERIOD*2);
        rst_n = 1;

        // Apply 32 pairs of inputs, a new pair every clock cycle
        for (i = 1; i <= 32; i = i + 1) begin
            a = i;
            b = i;
            #(CLK_PERIOD);

        end

        a = 0;
        b = 0;
        #(CLK_PERIOD*3);


        $finish;
    end

endmodule

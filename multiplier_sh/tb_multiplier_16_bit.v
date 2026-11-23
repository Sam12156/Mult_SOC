`timescale 1ns / 1ps

module tb_multiplier_16_bit;

    parameter CLK_PERIOD = 8;   // 125 MHz

    reg         clk;
    reg         rst_n;
    reg  [15:0] a;
    reg  [15:0] b;
    wire [31:0] prod;

    integer i;
    integer raw_fd;
    integer errors;

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
        raw_fd = $fopen("test_results.txt");  // no mode -> multichannel descriptor, so raw_fd | 1 also prints to console
        errors = 0;

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
            // prod was registered on the rising edge inside this cycle
            $fdisplay(raw_fd | 1, "a = %5d  b = %5d  prod = %10d  expected = %10d  %s",
                      a, b, prod, a * b, (prod == a * b) ? "PASS" : "FAIL");
            if (prod !== a * b) errors = errors + 1;
        end

        a = 0;
        b = 0;
        #(CLK_PERIOD*3);

        $fdisplay(raw_fd | 1, "Test finished with %0d error(s)", errors);
        $fclose(raw_fd);
        $finish;
    end

endmodule

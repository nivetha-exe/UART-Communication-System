`timescale 1ns / 1ps

module uart_communication_tb;

    reg clk;
    reg rst;
    reg [7:0] data_in;
    reg start;

    wire tx;
    wire [7:0] data_out;
    wire data_valid;
    wire busy;

    uart_communication uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .start(start),
        .tx(tx),
        .data_out(data_out),
        .data_valid(data_valid),
        .busy(busy)
    );

    // 50 MHz clock
    always #10 clk = ~clk;

    initial begin
        clk     = 0;
        rst     = 1;
        data_in = 8'b0;
        start   = 0;

        #100;
        rst = 0;

        // Send data
        data_in = 8'b10110010;

        #20;
        start = 1;

        #20;
        start = 0;

        // Wait for complete UART communication
        #1200000;

        $finish;
    end

endmodule

module uart_communication (
    input  wire       clk,
    input  wire       rst,
    input  wire [7:0] data_in,
    input  wire       start,

    output wire       tx,
    output wire [7:0] data_out,
    output wire       data_valid,
    output wire       busy
);

    // UART Transmitter
    uart_tx transmitter (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .start(start),
        .tx(tx),
        .busy(busy)
    );

    // UART Receiver
    uart_rx receiver (
        .clk(clk),
        .rst(rst),
        .rx(tx),
        .data_out(data_out),
        .data_valid(data_valid),
        .busy()
    );

endmodule
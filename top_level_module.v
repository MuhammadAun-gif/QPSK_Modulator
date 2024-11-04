`include "DRBG.v"
`include "SIPO.v"
`include "Multiplexer.v"
`include "Adder.v"

module top_level_module(input clk,rst,
                        output QPSK_wave);
    
    wire drbg_out;
    wire [1:0] sipo_parallel_out;
    
    DRBG DRBG(
        .clk(clk),
        .rst(rst),
        .drbg_out(drbg_out)
    );

    SIPO SIPO(
        .clk(clk),
        .rst(rst),
        .serial_in(drbg_out),
        .parallel_out(sipo_parallel_out)
    );




endmodule   
`include "DRBG.v"
`include "SIPO.v"
`include "Multiplexer.v"
`include "counter.v"
`include "Adder.v"

module top_level_module(input clk,rst,
                        output QPSK_wave);
    
    wire drbg_out;
    
    DRBG DRBG(
        .clk(clk),
        .rst(rst),
        .drbg_out(drbg_out)
    );

    wire [2:0] sipo_parallel_out;

    SIPO SIPO(
        .clk(clk),
        .rst(rst),
        .serial_in(drbg_out),
        .parallel_out(sipo_parallel_out)
    );

    wire [2:0] mux_out;

    Multiplexer Multiplexer(
        .select(sipo_parallel_out),
        .mux_out(mux_out)
    );

    wire [7:0] counter_out;

    counter counter(
        .clk(clk), 
        .rst(rst),
        .count(counter_out)
    );

    wire [7:0] Adder_out;

    Adder Adder(
        .phase(mux_out),
        .sample(counter_out),
        .sum(Adder_out)
    );

    

   




endmodule   
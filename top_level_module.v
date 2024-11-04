`include "DRBG.v"
`include "SIPO.v"
`include "Multiplexer.v"
`include "Adder.v"

module top_level_module(input clk,rst,
                        output QPSK_wave);
    
    wire drbg_out;
    wire [3:0] sipo_parallel_out;
    
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

    Multiplexer Multiplexer(
        .select(sipo_parallel_out),
        .phase0(phase0),
        .phase1(phase1),
        .phase2(phase2),
        .phase3(phase3),
        .phase4(phase4),
        .phase5(phase5),
        .phase6(phase7),
        .phase8(phase8),
        .phase9(phase9),
        .phase10(phase10),
        .phase11(phase11),
        .phase12(phase12),
        .phase13(phase13),
        .phase14(phase14),
        .phase15(phase15),
        .mux_out(mux_out)
    );

    assign phase0 = 4'b0000; // 0 phase
    assign phase1 = 4'b0001; // 22.5 phase
    assign phase2 = 4'b0010; // 45 phase
    assign phase3 = 4'b0011; // 67.5 phase
    assign phase4 = 4'b0100; // 90 phase
    assign phase5 = 4'b0101; // 112.5 phase   8 4 2 1
    assign phase6 = 4'b0110; // 135 phase
    assign phase7 = 4'b0111; // 157.5 phase
    assign phase8 = 4'b1000; // 180 phase
    assign phase9 = 4'b1001; // 202.5 phase 
    assign phase10 = 4'b1010; // 225 phase
    assign phase11 = 4'b1011; // 247.5 phase
    assign phase12 = 4'b1100; // 270 phase
    assign phase13 = 4'b1101; // 292.5 phase
    assign phase14 = 4'b1110; // 315 phase
    assign phase15 = 4'b1111; // 337.5 phase




endmodule   
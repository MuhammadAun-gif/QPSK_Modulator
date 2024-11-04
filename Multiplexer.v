module Multiplexer(input [3:0] phase0,
                    input [3:0] phase1,
                    input [3:0] phase2,
                    input [3:0] phase3, 
                    input [3:0] phase4,
                    input [3:0] phase5,
                    input [3:0] phase6,
                    input [3:0] phase7,
                    input [3:0] phase8,
                    input [3:0] phase9,
                    input [3:0] phase10,
                    input [3:0] phase11,
                    input [3:0] phase12,
                    input [3:0] phase13,
                    input [3:0] phase14,
                    input [3:0] phase15,
                    input [3:0] select,
                    output reg [3:0] mux_out);

    always@(*)
    begin
    case(select)
        4'b0000: mux_out = phase0;
        4'b0001: mux_out = phase1;
        4'b0010: mux_out = phase2;
        4'b0011: mux_out = phase3;
        4'b0100: mux_out = phase4;
        4'b0101: mux_out = phase5;
        4'b0110: mux_out = phase6;
        4'b0111: mux_out = phase7;
        4'b1000: mux_out = phase8;
        4'b1001: mux_out = phase9;
        4'b1010: mux_out = phase10;
        4'b1011: mux_out = phase11;
        4'b1100: mux_out = phase12;
        4'b1101: mux_out = phase13;
        4'b1110: mux_out = phase14;
        4'b1111: mux_out = phase15;
        default: mux_out = 4'b000;
    endcase
    end

endmodule
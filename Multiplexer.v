module Multiplexer(input [2:0] select,
                    output reg [2:0] mux_out);

    assign phase0 = 3'b000; // 0 phase
    assign phase1 = 3'b001; // 45 phase
    assign phase2 = 3'b010; // 90 phase
    assign phase3 = 3'b011; // 135 phase
    assign phase4 = 3'b100; // 180 phase
    assign phase5 = 3'b101; // 225 phase  
    assign phase6 = 3'b110; // 270 phase
    assign phase7 = 3'b111; // 315 phase

    always@(*)
    begin
    case(select)
        3'b000: mux_out = phase0;
        3'b001: mux_out = phase1;
        3'b010: mux_out = phase2;
        3'b011: mux_out = phase3;
        3'b100: mux_out = phase4;
        3'b101: mux_out = phase5;
        3'b110: mux_out = phase6;
        3'b111: mux_out = phase7;
        default: mux_out = 3'b000;
    endcase
    end

endmodule
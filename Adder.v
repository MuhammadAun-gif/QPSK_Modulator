module Adder(input [2:0] phase,  // Phase from Multiplexer
             input [7:0] sample, // Sample number from Counter
             output [7:0] sum);

    assign sum = phase + sample;

endmodule


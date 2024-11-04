module SIPO(input clk,rst,serial_in,
            output [3:0] parallel_out);

    reg [3:0] shift_reg;

    always@(posedge clk)
    begin
        if(rst)
        begin
            shift_reg <= 4'b0000;
        end
        else
        begin
            shift_reg <= {serial_in,shift_reg[3:1]};
        end
    end

    assign parallel_out = shift_reg;

endmodule
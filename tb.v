module tb();

    reg clk,rst;
    wire[1:0] parallel_out;

    SIPO dut(
        .clk(clk),
        .rst(rst),
        .parallel_out(parallel_out)
    );

    initial begin
        $dumpfile("dumpfile.vcd");
        $dumpvars(0);
    end

    always
    begin
        clk = ~clk;
        #50;
    end

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        #100;

        rst = 1'b0;
        #900;
        $finish;
    end
endmodule
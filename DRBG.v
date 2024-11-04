module DRBG(input clk,rst,
            output drbg_out);

    reg [2:0] lsfr;

    always@(posedge clk)
    begin
        if(rst)
        begin
            lsfr <= 3'b001;
        end
        else
        begin
            lsfr <= {lsfr[0]^lsfr[1], lsfr[2:1]};
            //lsfr[2] <= lsfr[0]^lsfr[1];
            //lsfr[1] <= lsfr[2];
            //lsfr[0] <= lsfr[1];
        end
    end

    assign drbg_out = lsfr[0];

endmodule   
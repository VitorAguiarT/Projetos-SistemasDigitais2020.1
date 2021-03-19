module mux4to1_ifelse(input [3:0] I0, input [3:0] I1, input [3:0] I2, input [3:0] I3, input [1:0] CD, output reg [3:0] F);

    always @(I0 or I1 or I2 or I3 or CD) 
    begin
        if(CD == 2'b00)
        begin
            #10 F = I0;
        end
        else if(CD == 2'b01)
        begin
            #10 F = I1;
        end
        else if(CD == 2'b10)
        begin
            #10 F = I2;
        end
        else
        begin
            #10 F = I3;
        end 
    end

endmodule
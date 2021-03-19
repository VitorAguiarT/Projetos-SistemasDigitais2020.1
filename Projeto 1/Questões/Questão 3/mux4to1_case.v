module mux4to1_case(input [3:0] I0, input [3:0] I1, input [3:0] I2, input [3:0] I3, input [1:0] CD, output reg [3:0] F);

    always @(I0 or I1 or I2 or I3 or CD) 
    begin
        case(CD)
            2'b00 : #10 F <= I0;
            2'b01 : #10 F <= I1;
            2'b10 : #10 F <= I2;
            2'b11 : #10 F <= I3;
        endcase
    end

endmodule
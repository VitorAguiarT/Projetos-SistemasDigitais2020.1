module questao_4_case(input A, B1, B2, B3, output reg [1:0] C);
    
    always @(A, B1, B2, B3, C) 
    begin    
        case(A)
            B1 : C = 2'b01;
            B2 : C = 2'b10;
            B3 : C = 2'b11;
            default : C = 2'b00;
        endcase
    end

endmodule
module questao_4_ifelse(input A, B1, B2, B3, output reg [1:0] C);
    
    always @(A, B1, B2, B3, C) 
    begin    
        if(A == B1)
        begin
            C = 2'b01;
        end
        else if(A == B2)
        begin
            C = 2'b10;
        end
        else if(A == B3)
        begin
            C = 2'b11;
        end
        else 
        begin
            C = 2'b00;
        end 
    end

endmodule
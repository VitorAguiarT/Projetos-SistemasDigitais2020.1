module questao_1(input A, output B, output C);

    assign #3 B = A && C; 
    assign #2 C = !B;

endmodule
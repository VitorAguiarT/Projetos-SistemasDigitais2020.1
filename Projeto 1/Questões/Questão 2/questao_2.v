module questao_2(input A, input B, input C, input D, output SAIDA);

    assign #5 AND = (A && B && C); 
    assign #5 NOR = !(B || C);
    assign #5 OR = (AND || D);
    assign #5 NAND = !(A && NOR);
    assign #2 NOT = !NAND;
    assign #5 SAIDA = (OR ^ NOT);

endmodule
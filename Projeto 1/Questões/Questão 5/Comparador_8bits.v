module Comparador_4bits (output wire G, L, E, input G_IN, input L_IN, input E_IN, input wire [3:0] A, B);

    assign G = (A > B) || ((A == B) && G_IN);
    assign L = (A < B) || ((A == B) && L_IN);
    assign E = ((A == B) && E_IN);

endmodule

module Comparador_8bits (output wire G, L, E, input wire [7:0] A, B);

    wire G_old, L_old, E_old;
    Comparador_4bits c1(G_old, L_old, E_old, 1'b0, 1'b0, 1'b1, A[3:0], B[3:0]);
  	Comparador_4bits c2(G, L, E, G_old, L_old, E_old, A[7:4], B[7:4]);

endmodule
module Comparador_4bits (output wire G, L, E, input G_IN, input L_IN, input E_IN, input wire [3:0] A, B);

    assign G = (A > B) || ((A == B) && G_IN);
    assign L = (A < B) || ((A == B) && L_IN);
    assign E = ((A == B) && E_IN);

endmodule

/*
module comparador_4bits(output wire G, L, E, input wire [3:0] A, B);

    assign G = (A > B);
    assign L = (A < B);
    assign E = (A == B);

endmodule
*/
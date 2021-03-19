module mux4to1_assign(input [3:0] I0, input [3:0] I1, input [3:0] I2, input [3:0] I3, input [1:0] CD, output [3:0] F);

    assign #10 F = CD[1] ? (CD[0] ? I3 : I2) : (CD[0] ? I1 : I0);

endmodule
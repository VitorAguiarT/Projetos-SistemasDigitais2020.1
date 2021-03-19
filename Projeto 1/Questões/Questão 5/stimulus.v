module stimulus;
	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire G;
	wire L; 
	wire E;

	// Instantiate the Unit Under Test (UUT)
	Comparador_8bits uut (
		.A(A),
		.B(B),
		.G(G),
		.L(L),
		.E(E)
	);

	initial begin
		$dumpfile ("waves.vcd");
		$dumpvars (0, stimulus);
		// Initialize Inputs
		A = 8'b10000000;
		B = 8'b10000000;
	
		#20 A = 8'b11111111; 
		#20 B = 8'b11111111;
		#20 A = 8'b10000000;	
		#20 B = 8'b10000000;
		#20 A = 8'b11111111; 
		#20 B = 8'b11111111;
		#20 A = 8'b10000000;	
		#20 B = 8'b10000000;
		#20 A = 8'b11111111; 
		#20 B = 8'b11111111;
		#20 A = 8'b10000000;	
		#20 B = 8'b10000000;
		#20 A = 8'b11111111; 
		#20 B = 8'b11111111;
		#20 A = 8'b10000000;	
		#20 B = 8'b10000000;
		
		$finish;	
	end  
 
	initial begin
		$monitor ("T=%3d A=%d,B=%d,G=%d L=%d E=%d \n", $time, A, B, G, L, E);
	end
 
endmodule
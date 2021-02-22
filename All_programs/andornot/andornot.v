module andornot(a,b,y);
	input a,b;
	output [2:0]y;
	and an(y[2],a,b);
	or o(y[1],a,b);
	not nt(y[0],a);
endmodule

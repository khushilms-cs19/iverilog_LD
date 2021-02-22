module nandnor(a,b,y);
	input a,b;
	output [1:0]y;
	nand na(y[1],a,b);
	nor no(y[0],a,b);
endmodule

`include "fulladder.v"
module tb_fulladder;
reg a,b,cin;
wire s,cout;
fulladder f1(a,b,cin,s,cout);
initial
begin
$dumpfile("fa.vcd");
$dumpvars(0,tb_fulladder);  
	a=1;b=1;cin=0;
	#5
	a=1;b=1;cin=1;
	#5
	a=0;b=1;cin=0;
	#100 $finish;
	end
endmodule

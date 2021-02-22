`include "andor.v"
module tb_andor;
reg a,b,c,d;
wire y;
andor ao(a,b,c,d,y);
initial 
begin
$dumpfile("andor.vcd");
$dumpvars(0,tb_andor);	
a=0; b=1; c=1; d=1; #10
a=0; b=0; c=1; d=0; #10
$finish;
end
endmodule

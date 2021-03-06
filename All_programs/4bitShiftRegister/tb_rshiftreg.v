`include "rshiftreg.v"
module tb_rshiftreg;
reg clk,clrb,sdr;
wire [3:0]q;
rshiftreg rs(clk,clrb,sdr,q);
initial
begin
$dumpfile("shift.vcd");
$dumpvars(0,tb_rshiftreg);  
clk=1;
clrb=0;
sdr=1;
#100
clrb=1;
sdr=1;
#150
sdr=0;
#200
$finish;
end 
always #5 clk=~clk;
endmodule

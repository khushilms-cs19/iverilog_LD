`include "JK_FF.v"
module tb_JK_FF;
reg clk;
reg reset;
reg j,k;
wire q;
wire qb;
JK_FF flipflop(.clk(clk),.reset(reset),.j(j),.k(k),.q(q),.q_bar(qb));
initial begin
$dumpfile("jkff.vcd");
$dumpvars(0,tb_JK_FF);  
$monitor(clk,j,k,q,qb,reset);
j=1'b0;
k=1'b0;
reset=1;
clk=1;
#100
reset=0;
j=1'b1;
k=1'b0;
#100
reset=0;
j=1'b0;
k=1'b1;
#100
reset=0;
j=1'b1;
k=1'b1;
#100
reset=0;
j=1'b0;
k=1'b0;
#100
reset=1;$finish;
 end
 endmodule  


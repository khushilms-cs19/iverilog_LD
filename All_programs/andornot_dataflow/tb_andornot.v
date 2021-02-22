`include "andornot.v"
module tb_andornot;
wire [2:0]y;
reg a,b;
andornot dut(.y(y),.a(a),.b(b));
initial
begin
$dumpfile("andornot.vcd");
$dumpvars(0,tb_andornot);
a=1'b0;
b=1'b0;
#50;
a=1'b0;
b=1'b1;
#50;
a=1'b1;
b=1'b0;
#50;
a=1'b1;
b=1'b1;
#50;
end
endmodule

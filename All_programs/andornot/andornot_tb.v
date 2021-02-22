`include "andornot.v"
module andornot_tb;
reg A,B;
wire [2:0]y;
andornot ob(A,B,y);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,andornot_tb);
	A=1'b0;
    B=1'b0;
    #20
    A=1'b0;
    B=1'b1;
    #20
    A=1'b1;
    B=1'b0;
    #20
    A=1'b1;
    B=1'b1;
    #20
    $finish;
end
endmodule

`include "SR_FF.v"
module tb_SR_FF;
   reg [1:0] A;
   reg c;
   wire x, xb;
  SR_FF srff(A,c,x,xb);
  initial c=1'b0;
  always #5 c=~c;
  initial 
    begin 
    $dumpfile("srff.vcd");
    $dumpvars(0,tb_SR_FF);  

    A=2'b00; #10
    A=2'b01;#10
    A=2'b10;#10
    A=2'b11;
    #20 $finish;
    end
endmodule


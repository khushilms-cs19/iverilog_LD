`include "upcounter.v"
module tb_upcounter;
reg r,c;
wire  [2:0] ct;

upcounter countbeh (ct,r,c);
initial
begin
   $dumpfile("count.vcd");
$dumpvars(0,tb_upcounter);    
   r =1;
 c=0;
    #100 r=0;
    #200 $finish;
end
always #5 c=~c;
endmodule

`include "decoder.v"
module tb_decoder;
 reg [1:0]Din;
 reg En;
wire [3:0]Do;
decoder  udue(.Do(Do),.Din(Din),.En(En));
initial begin
 $dumpfile("decoder.vcd");
$dumpvars(0,tb_decoder);  
En=1;
Din=2'b00;#100;
Din=2'b01;#100;
Din=2'b10;#100;
Din=2'b11;#100;
end
endmodule

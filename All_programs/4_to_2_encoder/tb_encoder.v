`include "encoder.v"
module tb_encoder;
 reg [3:0]Din;
 reg En;
wire [1:0]Do;
encoder  mux1(.Do(Do),.Din(Din),.En(En));
initial begin
 $dumpfile("encoder.vcd");
$dumpvars(0,tb_encoder);  
En=1;
Din=4'b0001;#100;
Din=4'b0010;#100;
Din=4'b0100;#100;
Din=4'b1000;#100;
end
endmodule

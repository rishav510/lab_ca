module mul4_tb;
wire out;
reg [3:0] in;
reg [1:0] sel;
mul4 mul_1(out, in, sel);
initial
begin
	$monitor($time," in = %b, sel = %b, out = %b", in, sel, out);
	$dumpfile("mul4.vcd");
	$dumpvars;
	#10 in = 4'b0011; sel = 2'b01;
	#10 in = 4'b0101; sel = 2'b01;
	#10 in = 4'b0110; sel = 2'b00;
	#10 in = 4'b0010; sel = 2'b10;
	#10 in = 4'b1001; sel = 2'b11;
	#10
	$finish();

end
endmodule
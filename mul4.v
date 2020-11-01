module mul4(out, in, sel);
output out;
input [3:0] in;
input [1:0] sel;
assign out = in[3] & sel[1] & sel [0] | in[2] & sel[1] & ~sel[0] | in[1] & ~sel[1] & sel[0] | in[0] & ~sel[1] & ~sel[0];
endmodule
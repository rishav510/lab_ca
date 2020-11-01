module fadder_1bit(sum,carry_out,a,b,cin);
input a;
input b;
input cin;
wire [2:0] decoder_in;
reg cout,s;
output sum, carry_out;
wire [7:0] decoder_out;
decoder d1(decoder_out,decoder_in);


assign decoder_in = {a,b,cin};


assign sum = decoder_out[1] | decoder_out [2] | decoder_out[4] | decoder_out[7];
assign carry_out = decoder_out[3] | decoder_out[5] | decoder_out [6] | decoder_out[7];



endmodule
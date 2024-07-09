module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
	wire one;
    wire [31:0] bxor;
    
    assign bxor = b^{32{sub}}; 
    add16 inst1(a[15:0], bxor[15:0], sub, sum[15:0], one);
    add16 inst2(a[31:16], bxor[31:16], one, sum[31:16]);
    
endmodule

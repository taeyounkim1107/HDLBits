module top_module (input a, input b, input c, output out);//
    
	  wire out_reg;
    andgate inst1 ( out_reg, a, b, c, 1'b1, 1'b1);
	  assign out = ~out_reg;
    
endmodule

module top_module ( input clk, input d, output q );
	wire one,two;
    
    my_dff inst1(.clk(clk),.d(d),.q(one));
    my_dff inst2(.clk(clk),.d(one),.q(two));
    my_dff inst3(.clk(clk),.d(two),.q(q));
    
endmodule

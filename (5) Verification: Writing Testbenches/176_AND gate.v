module top_module();
    reg [1:0] in;
    wire out;
    
    andgate inst(in, out);
    
    initial begin
    	in = 2'b00;
        #10
        in[0] = 1;
        #10
        in[0] = 0;
        in[1] = 1;
        #10
        in[0] = 1;
    end
    
endmodule

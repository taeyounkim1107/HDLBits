module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] one, two, three;
    
    my_dff8 inst1(.clk(clk), .d(d), .q(one));
    my_dff8 inst2(.clk(clk), .d(one), .q(two) );
    my_dff8 inst3(.clk(clk), .d(two), .q(three));
    
    always @ (*) begin
        case(sel)
            0 : q = d;
            1 : q = con1;
            2 : q = con2;
            3 : q = con3;
        endcase
 	end
endmodule

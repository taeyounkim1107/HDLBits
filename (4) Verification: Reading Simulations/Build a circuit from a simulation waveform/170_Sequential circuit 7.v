module top_module (
    input clk,
    input a,
    output q );
	
    reg a_delay;
    
    always @ (posedge clk) begin
        a_delay = a;
        q = ~a_delay;
        
    end
    
endmodule

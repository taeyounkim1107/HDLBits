module top_module (
    input clk,
    input a,
    output [3:0] q );
	
    always @ (posedge clk) begin
        if (a == 1) begin
        	q = 4'd4;
        end
        else begin
            if (q <=5) begin
            	q += 4'd1;
            end
            else begin
            	q = 4'd0;
            end
        end
        
    end
    
endmodule

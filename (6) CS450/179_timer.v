module top_module(
	input clk, 
	input load, 
	input [9:0] data, 
	output tc
);

    reg [9:0] counter;
    
    always @ (posedge clk) begin
		if (load) begin
        	counter = data;            
            if (counter == 0) begin tc = 1; end
            else begin tc = 0; end
        end
        
        else begin
            if (counter > 1) begin
            	counter = counter - 1;
            end
            else if (counter == 1) begin
            	counter = counter - 1;
                tc = 1;
            end
            else begin
            	counter = counter;
            end
        end
    end

endmodule

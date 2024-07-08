module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output start_shifting);
    
    reg [4:0] state/*, next_state*/;
    
    parameter rst = 5'b00001;	//	reset
    parameter s1 = 5'b00010;	//	1 found
    parameter s2 = 5'b00100;	//	11 found
    parameter s3 = 5'b01000;	//	110 found
    parameter s4 = 5'b10000;	//	1101 found (complete)

    
    always @ (posedge clk) begin    
        	if (reset) begin
        		start_shifting <= 0;
                state <= rst;
        	end
        	else begin
            	case (state) 
            		rst: begin
                    	if (data == 1) begin state <= s1; end
                		else begin state <= rst; end
                	end
                
                	s1: begin
                    	if (data == 1) begin state <= s2; end
                		else begin state <= rst; end
                	end
                
                	s2: begin
                    	if (data == 1) begin state <= s2; end
                		else begin state <= s3; end
                	end
                    
                	s3: begin
                    	if (data == 1) begin state <= s4; start_shifting <= 1;end
                		else begin state <= rst; end
                	end
                    
                	s4: begin
                    	//start_shifting <= 1;
                    	if (data == 1) begin state <= s2; end
                		else begin state <= rst; end
                	end
            	endcase
        	end
    end
    
endmodule

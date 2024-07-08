module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output shift_ena,
    output counting,
    input done_counting,
    output done,
    input ack );
    //////////////////////////////////////////////////////////
    reg [6:0] state;
    
    parameter rst = 7'b0000001;	//	reset
    parameter s1 = 7'b0000010;	//	1 found
    parameter s2 = 7'b0000100;	//	11 found
    parameter s3 = 7'b0001000;	//	110 found
    parameter s4 = 7'b0010000;	//	1101 found (complete)
    parameter s5 = 7'b0100000;
    parameter s6 = 7'b1000000;
    //////////////////////////////////////////////////////////
    
    reg [2:0] count;
    reg [1:0] done_counting_1d;
    reg [1:0] ack_1d;

    always @ (posedge clk) begin    
        	if (reset) begin
        		shift_ena <= 0;
                state <= rst;
                count <= 0;
                counting <= 0;
                done <= 0;
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
                        if (data == 1) begin 
                            state <= s4; 
                            shift_ena <= 1; 
                            count <= count + 1;
                        end
                		else begin state <= rst; end
                	end
                    
                	s4: begin
                        if (count < 4) begin
                        	shift_ena <= 1;
                            count <= count + 1;
                        end
                        
                        else begin
                            shift_ena <= 0;
                            counting <= 1;
                            state <= s5;
                            count <= 0;
                        end
                	end
                    
                    s5: begin
                        if (!done_counting_1d && done_counting) begin
                        	counting <= 0;
                            done <= 1;
                            state <= s6;
                        end
                        else begin
                        	counting <= 1;
                        end
                    end
                    
                    s6: begin
                        if (!ack_1d && ack) begin
                        	done <= 0;
                            state <= rst;
                        end
                        else begin
                        	done <= 1;
                        end
                    end
            	endcase
                
                done_counting_1d = done_counting;  
                ack_1d = ack;
                
        	end
    end

endmodule

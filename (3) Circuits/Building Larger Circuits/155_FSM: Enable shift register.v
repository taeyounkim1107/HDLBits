module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena);
    
    reg [5:0] state;
    
    parameter rst = 6'b000001;		//	reset
    parameter s1 = 6'b000010;		//	1st shift
    parameter s2 = 6'b000100;		//	2nd shift
    parameter s3 = 6'b001000;		//	3rd shift
    parameter s4 = 6'b010000;		//	4th shift
    parameter rst_0 = 6'b100000;	//	reset
    
    always @ (posedge clk) begin
        if (reset) begin
        	state <= rst;
            shift_ena <= 1;
        end
        else begin
        	case (state)
            	rst: begin
                	state <= s1;
                    shift_ena <= 1;
                end
                s1: begin
                	state <= s2;
                end
                s2: begin
                	state <= s3;
                end
                s3: begin
                	state <= s4;
                    shift_ena <= 0;
                end
                s4: begin
                	state <=rst_0;
                    //shift_ena <= 0;
                end
                rst_0: begin
                	state <= rst_0;
                    shift_ena <= 0;
                end
        	endcase
        end
    end
endmodule

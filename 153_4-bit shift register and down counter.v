module top_module (
    input clk,
    input shift_ena,
    input count_ena,
    input data,
    output [3:0] q);
	
    reg [3:0] r_q;
    
    always @ (posedge clk) begin
        if (shift_ena) begin
            r_q[0] <= data;
            r_q[3:1] <= r_q[2:0];
        end
        
        if (count_ena) begin
            r_q <= r_q - 1;
        end
        
    end
    
    assign q = r_q;
    
endmodule

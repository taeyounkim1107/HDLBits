module top_module (
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [3:0] e,
    output [3:0] q );

    always @ (*) begin
        if (c == 0) begin
        	q = b;
        end
        
        else if (c == 1) begin
        	q = e;
        end
        
        else if (c == 2) begin
        	q = a;
        end
        
        else if (c == 3) begin
        	q = d;
        end
        
        else if (c >= 4) begin
        	q = 4'hf;
        end
    end
    
endmodule

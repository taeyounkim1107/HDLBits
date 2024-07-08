module top_module (
    input clock,
    input a,
    output p,
    output q );

    always @ (clock) begin
        if (clock == 1) begin
            p = a;
        end
    end
    
    always @ (negedge clock) begin
        q <= a;
    end
        
endmodule

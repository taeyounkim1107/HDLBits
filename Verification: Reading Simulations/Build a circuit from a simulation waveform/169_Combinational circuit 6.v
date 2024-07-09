module top_module (
    input [2:0] a,
    output [15:0] q ); 

    always @(*) begin
        if(a==0) begin
        	q=16'h1232;
        end
        if(a==1) begin
        	q=16'haee0;
        end
        if(a==2) begin
        	q=16'h27d4;
        end
        if(a==3) begin
        	q=16'h5a0e;
        end
        if(a==4) begin
        	q=16'h2066;
        end
        if(a==5) begin
        	q=16'h64ce;
        end
        if(a==6) begin
        	q=16'hc526;
        end
        if(a==7) begin
        	q=16'h2f19;
        end
    end
    
endmodule

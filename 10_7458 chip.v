module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
	wire and3_wire_1, and3_wire_2, and2_wire_3, and2_wire_4;
    
    assign and3_wire_1 = p1a & p1b & p1c;
    assign and3_wire_2 = p1d & p1e & p1f;
    assign and2_wire_3 = p2a & p2b;
    assign and2_wire_4 = p2c & p2d;
    
    assign p1y = and3_wire_1 | and3_wire_2;
    assign p2y = and2_wire_3 | and2_wire_4;

endmodule

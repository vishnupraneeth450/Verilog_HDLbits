module top_module ( input clk, input d, output q );
    wire [1:0] w;
    my_dff d_ff1(.d(d),.clk(clk),.q(w[0]));
    my_dff d_ff2(.d(w[0]),.clk(clk),.q(w[1]));
    my_dff d_ff3(.d(w[1]),.clk(clk),.q(q));

endmodule

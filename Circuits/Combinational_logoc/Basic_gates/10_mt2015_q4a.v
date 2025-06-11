module top_module (input x, input y, output z);
    fun A(.z(z),.y(y),.x(x));

endmodule
module fun(output z,input x,input y);
    assign z=(x^y)&x;
endmodule
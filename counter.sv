module counter #(
    parameter WIDTH = 8
)(

    //interface signals
    input logic         clk,        //clock
    input logic         rst,        //resverilator -Wall --cc --trace counter.sv --exe counter_tb.cppet
    input logic         en,         //counter enable
    input logic [WIDTH-1:0] incr, 
    output logic [WIDTH-1:0] count   //
);

always_ff @ (posedge clk)
    if (rst) count <= {WIDTH{1'b0}};
    else    count <= count + {{WIDTH-1{1'b0}}, en};

endmodule

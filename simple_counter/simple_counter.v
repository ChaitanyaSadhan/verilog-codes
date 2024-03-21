module simple_counter(clk, rst, count);

    input clk, rst;
    output count;
    reg [31:0] count;

    //with synchronous reset.
    always @(posedge clk)
    begin
        if (rst)
            count = 32'b 0;
        else
            count = count + 1;
    end

    //with asynchronous reset.

    /*always @(posedge clk or posedge rst)
    begin
        if(rst)
            count = 32'b0;
        else    
            count = count + 1; 
    end*/

endmodule
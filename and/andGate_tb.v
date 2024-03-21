module and_tb; 
    reg a, b;
    wire t_z;
    andGate G1 (y, a, b);
    initial begin
        $dumpfile ("andGate.vcd");
        $dumpvars (0, and_tb);
        $monitor(y, a, b);
        a = 1'b0; b = 1'b0;
        #5 a = 1'b0; b = 1'b1;
        #5 a = 1'b1; b = 1'b0;
        #5 a = 1'b1; b = 1'b1;
        #5 $finish;
    end 
endmodule
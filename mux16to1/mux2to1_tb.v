module mux2to1_tb;

    reg in1, in2, sel;
    wire out;

    mux2to1 DUT (out, {in2, in1}, sel);

    initial
        begin
            $dumpfile("mux2to1.vcd");
            $dumpvars(0, mux2to1_tb);

            $monitor($time, "in2 = %b in1 = %b sel = %b out = %b", in2, in1, sel, out);

            #5 {in2, in1, sel} = 3'o0;
            #5 {in2, in1, sel} = 3'o1;
            #5 {in2, in1, sel} = 3'o2;
            #5 {in2, in1, sel} = 3'o3;
            #5 {in2, in1, sel} = 3'o4;
            #5 {in2, in1, sel} = 3'o5;
            #5 {in2, in1, sel} = 3'o6;
            #5 {in2, in1, sel} = 3'o7;

            #5 $finish;

        end

endmodule
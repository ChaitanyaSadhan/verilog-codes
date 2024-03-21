module supply_wire_tb;

    reg [2:0] A;
    wire f;

    supply_wire uut (A[2], A[1], A[0], f);

    initial begin

        $dumpfile("supply_wire.vcd");
        $dumpvars(0, supply_wire_tb);
        $monitor(f, A);

        A = 3'o0;
        #5 A = 3'o1;
        #5 A = 3'o2;
        #5 A = 3'o3;
        #5 A = 3'o4;
        #5 A = 3'o5;
        #5 A = 3'o6;
        #5 A = 3'o7;
        #5 $finish;


    end

endmodule
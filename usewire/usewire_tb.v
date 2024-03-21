module usewire_tb;

reg A,B,C,D;
wire f;

usewire uut(A, B, C, D, f);

initial begin
    $dumpfile("usewire.vcd");
    $dumpvars(0, usewire_tb);
    $monitor(f, A, B, C, D);

    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; 
    #5 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; 
    #5 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; 
    #5 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;

    #5 $finish; 

end
endmodule
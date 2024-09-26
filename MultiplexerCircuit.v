module Multiplexer (
    S, A, B, Y
);
input S, A, B;
output Y;
wire s1, y1, y2;
not(s1, S);
and(y1, s1, A);
and(y2, S, B);
or(Y, y1, y2);
    
endmodule
module tb_Multiplexer();
wire Y;
reg S, A, B;
Multiplexer F(S, A, B, Y);
initial begin
    #2 S=0; A=0; B=0;
    #2 B=1;
    #2 A=1; B=0;
    #2 B=1;
    #2 S=1; A=0; B=0;
    #2 B=1;
    #2 A=1; B=0;
    #2 B=1;
    #2 $finish;

end
endmodule

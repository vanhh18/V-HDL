module Majority (
    a, b, c, F 
);
input a, b, c;
output F;
wire f1, f2, f3;
and (f1, a, b);
and (f2, b, c);
and (f3, a, c);
or (F, f1, f1, f3);
    
endmodule
module tb_Majority();
wire F;
reg a, b, c;
Majority F(a, b, c, F);
initial begin
    #2 a=0; b=0; c=0;
    #2 c=1;
    #2 b=1; c=0;
    #2 c=1;
    #2 a=1; b=0; c=0;
    #2 c=1;
    #2 b=1; c=0;
    #2 c=1;
    #2 $finish;

end
endmodule

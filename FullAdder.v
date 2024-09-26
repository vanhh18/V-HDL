module FullAdder (
    A, B, C, Sum, Carry;
);
input A, B, C;
output Sum, Carry;
wire s1, c1, c2;
xor (s1, A, B);
xor (Sum, s1, C);
and (c2, A, B);
and (c1, s1, C);
or (Carry, c1, c2);
    
endmodule
module tb_fullAdder();
wire Sum, Carry;
reg A, B, C;
FullAdder F(A, B, C, Sum, Carry);
initial begin
   /* #2 A=0; B=0; C=0;
    #2 A=0; B=1;
    #2 A=1; B=0;
    #2 A=1; B=1;
    #2 A=0; B=0; C=1;
    #2 A=0; B=1;
    #2 A=1; B=0;
    #2 A=1; B=1;
    #2 $finish; */

    for (i=1, i<8, i++)
        begin
            {A, B, C} = i;
            #10;
        end

end
endmodule
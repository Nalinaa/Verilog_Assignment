//8X1 mux using if else statement
module mux8to1(i,s,o);
  input [7:0]i;
  input [2:0]s;
  output reg o;
always@(*)
  begin
    if(3'b000) o=i[0];
    else if(s==3'b001) o=i[1];
    else if(s==3'b010) o=i[2];
    else if(s==3'b011) o=i[3];
    else if(s==3'b100) o=i[4];
    else if(s==3'b101) o=i[5];
    else if(s==3'b110) o=i[6];
    else if(s==3'b111) o=i[7];
    else o=0;
end
endmodule 

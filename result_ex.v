///////////////////////////////////////////////////////////////////////////////////////////

module resultS_ex(S,A,ansS,sel);
output	[31:0]S;
input   [31:0]A,ansS;
input   [4:0] sel;
reg		[31:0]S;

wire	flagNaNA,flagInfA,flag0A,sign;
assign sign = A[31];

checkspecial	checkA(.flagInf(flagInfA),.flagNaN(flagNaNA),.flagZero(flag0A),.in(A));


	
always@(A or ansS)
begin
	case ({flagInfA,flagNaNA,flag0A})
	3'b100:	
		if(sel[0]) S={sign,31'h7f800000};	
		else  S={1'b0,31'h7f800000};
	3'b010:	S=32'h7FFFFFFF;
	3'b001:
		if ((~sel[4])&(~sel[3])&(~sel[2])&(~sel[1])&(~sel[0])) S=32'h7FFFFFFF;
		else  S=32'h00000000;						
	default: 
		if ((~sel[4])&(~sel[3])&(~sel[2])&(~sel[1])&(~sel[0])) S=32'h3F800000;
		else S=ansS;
	endcase
end

endmodule
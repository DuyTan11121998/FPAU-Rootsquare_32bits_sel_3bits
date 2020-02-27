////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Filename     : rs_tb.v		                                              //
// Description  : Test Root Square of 2 floating point 32bits                 //
//                                                                            //
// Author       : tan.nguyen_suunhj98@hcmut.edu.cn                            //
// Created On   : Tuesday December 10,2019                                    //
//                                                                            //  
////////////////////////////////////////////////////////////////////////////////
module rs_tb;
reg [31:0] in;
reg [2:0]sel;

wire [31:0]S;

rs rs_tb(S,in,sel);

initial begin
     in=32'h3DCCCCCD;
     sel=3'b000;
#100
	 in=32'h44B1ED7C;
     sel=3'b001;
#100
     in=32'h446B87F3;
     sel=3'b010;
#100
     in=32'hC2F86B85;
     sel=3'b011;
#100
     in=32'hC2C16148;
     sel=3'b100;
#100
     in=32'h41A27AE1;
     sel=3'b101;
#100
     in=32'h41CDD70A;
     sel=3'b111;
#100
     in=32'h3EDC28F6;
     sel=3'b111;
#100
     in=32'h40000000;//next
     sel=3'b111;
end

endmodule

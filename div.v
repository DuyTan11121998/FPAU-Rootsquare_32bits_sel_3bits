////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Filename     : division.v                                                  //
// Description  : Element of Division floating point 32bits			          //
//                                                                            //
// Author       : tan.nguyen_suunhj98@hcmut.edu.cn                            //
// Created On   : Friday November 22,2019                                     //
//                                                                            //  
////////////////////////////////////////////////////////////////////////////////
module div(S,A,B);
output	[24:0]S;
input	[24:0]A,B;

wire 	[24:0]tcB;
wire	[24:0]A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25;
wire	[24:0]B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25;
wire	[24:0]ans0,ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15,ans16,
              ans17,ans18,ans19,ans20,ans21,ans22,ans23,ans24,ans25;

//Compliment of B 
tc25	complimentB(.out(tcB),.in({1'b0,B}));
	
//Stage 25
assign ans25 ={A[0],{24{1'b0}}};
assign A25 = {1'b0,A[24:1]};
assign B25 = A[24]?B:tcB;
adder25 block25( .S ( A24 ) ,.A( {A25[23:0],ans25[24]} ),.B( B25 ) );

//Stage24
assign ans24[24:1] = ans25[23:0];
assign ans24[0] = A24[24]?0:1;
assign B24 = A24[24]?B:tcB;
adder25 block24( .S ( A23 ) ,.A( {A24[23:0],ans24[24]} ),.B( B24 ) );

//Stage23
assign ans23[24:1] = ans24[23:0];
assign ans23[0] = A23[24]?0:1;
assign B23 = A23[24]?B:tcB;
adder25 block23( .S ( A22 ) ,.A( {A23[23:0],ans23[24]} ),.B( B23 ) );

//Stage22
assign ans22[24:1] = ans23[23:0];
assign ans22[0] = A22[24]?0:1;
assign B22 = A22[24]?B:tcB;
adder25 block22( .S ( A21 ) ,.A( {A22[23:0],ans22[24]} ),.B( B22 ) );

//Stage21
assign ans21[24:1] = ans22[23:0];
assign ans21[0] = A21[24]?0:1;
assign B21 = A21[24]?B:tcB;
adder25 block21( .S ( A20 ) ,.A( {A21[23:0],ans21[24]} ),.B( B21 ) );

//Stage20
assign ans20[24:1] = ans21[23:0];
assign ans20[0] = A20[24]?0:1;
assign B20 = A20[24]?B:tcB;
adder25 block20( .S ( A19 ) ,.A( {A20[23:0],ans20[24]} ),.B( B20 ) );

//Stage19
assign ans19[24:1] = ans20[23:0];
assign ans19[0] = A19[24]?0:1;
assign B19 = A19[24]?B:tcB;
adder25 block19( .S ( A18 ) ,.A( {A19[23:0],ans19[24]} ),.B( B19 ) );

//Stage18
assign ans18[24:1] = ans19[23:0];
assign ans18[0] = A18[24]?0:1;
assign B18 = A18[24]?B:tcB;
adder25 block18( .S ( A17 ) ,.A( {A18[23:0],ans18[24]} ),.B( B18 ) );

//Stage17
assign ans17[24:1] = ans18[23:0];
assign ans17[0] = A17[24]?0:1;
assign B17 = A17[24]?B:tcB;
adder25 block17( .S ( A16 ) ,.A( {A17[23:0],ans17[24]} ),.B( B17 ) );

//Stage16
assign ans16[24:1] = ans17[23:0];
assign ans16[0] = A16[24]?0:1;
assign B16 = A16[24]?B:tcB;
adder25 block16( .S ( A15 ) ,.A( {A16[23:0],ans16[24]} ),.B( B16 ) );

//Stage15
assign ans15[24:1] = ans16[23:0];
assign ans15[0] = A15[24]?0:1;
assign B15 = A15[24]?B:tcB;
adder25 block15( .S ( A14 ) ,.A( {A15[23:0],ans15[24]} ),.B( B15 ) );

//Stage14
assign ans14[24:1] = ans15[23:0];
assign ans14[0] = A14[24]?0:1;
assign B14 = A14[24]?B:tcB;
adder25 block14( .S ( A13 ) ,.A( {A14[23:0],ans14[24]} ),.B( B14 ) );

//Stage13
assign ans13[24:1] = ans14[23:0];
assign ans13[0] = A13[24]?0:1;
assign B13 = A13[24]?B:tcB;
adder25 block13( .S ( A12 ) ,.A( {A13[23:0],ans13[24]} ),.B( B13 ) );

//Stage12
assign ans12[24:1] = ans13[23:0];
assign ans12[0] = A12[24]?0:1;
assign B12 = A12[24]?B:tcB;
adder25 block12( .S ( A11 ) ,.A( {A12[23:0],ans12[24]} ),.B( B12 ) );

//Stage11
assign ans11[24:1] = ans12[23:0];
assign ans11[0] = A11[24]?0:1;
assign B11 = A11[24]?B:tcB;
adder25 block11( .S ( A10 ) ,.A( {A11[23:0],ans11[24]} ),.B( B11 ) );

//Stage10
assign ans10[24:1] = ans11[23:0];
assign ans10[0] = A10[24]?0:1;
assign B10 = A10[24]?B:tcB;
adder25 block10( .S ( A9 ) ,.A( {A10[23:0],ans10[24]} ),.B( B10 ) );

//Stage9
assign ans9[24:1] = ans10[23:0];
assign ans9[0] = A9[24]?0:1;
assign B9 = A9[24]?B:tcB;
adder25 block9( .S ( A8 ) ,.A( {A9[23:0],ans9[24]} ),.B( B9 ) );

//Stage8
assign ans8[24:1] = ans9[23:0];
assign ans8[0] = A8[24]?0:1;
assign B8 = A8[24]?B:tcB;
adder25 block8( .S ( A7 ) ,.A( {A8[23:0],ans8[24]} ),.B( B8 ) );

//Stage7
assign ans7[24:1] = ans8[23:0];
assign ans7[0] = A7[24]?0:1;
assign B7 = A7[24]?B:tcB;
adder25 block7( .S ( A6 ) ,.A( {A7[23:0],ans7[24]} ),.B( B7 ) );

//Stage6
assign ans6[24:1] = ans7[23:0];
assign ans6[0] = A6[24]?0:1;
assign B6 = A6[24]?B:tcB;
adder25 block6( .S ( A5 ) ,.A( {A6[23:0],ans6[24]} ),.B( B6 ) );

//Stage5
assign ans5[24:1] = ans6[23:0];
assign ans5[0] = A5[24]?0:1;
assign B5 = A5[24]?B:tcB;
adder25 block5( .S ( A4 ) ,.A( {A5[23:0],ans5[24]} ),.B( B5 ) );

//Stage4
assign ans4[24:1] = ans5[23:0];
assign ans4[0] = A4[24]?0:1;
assign B4 = A4[24]?B:tcB;
adder25 block4( .S ( A3 ) ,.A( {A4[23:0],ans4[24]} ),.B( B4 ) );

//Stage3
assign ans3[24:1] = ans4[23:0];
assign ans3[0] = A3[24]?0:1;
assign B3 = A3[24]?B:tcB;
adder25 block3( .S ( A2 ) ,.A( {A3[23:0],ans3[24]} ),.B( B3 ) );

//Stage2
assign ans2[24:1] = ans3[23:0];
assign ans2[0] = A2[24]?0:1;
assign B2 = A2[24]?B:tcB;
adder25 block2( .S ( A1 ) ,.A( {A2[23:0],ans2[24]} ),.B( B2 ) );

//Stage1
assign ans1[24:1] = ans2[23:0];
assign ans1[0] = A1[24]?0:1;
assign B1 = A1[24]?B:tcB;
adder25 block1( .S ( A0 ) ,.A( {A1[23:0],ans1[24]} ),.B( B1 ) );

//Stage0
assign ans0[24:1] = ans1[23:0];
assign ans0[0] = A0[24]?0:1;

assign S = {1'b0,ans0[24:1]};

endmodule

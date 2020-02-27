////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Filename     : rs_element.v		                                          //
// Description  : Element Root Square of 2 floating point 32bits              //
//                                                                            //
// Author       : tan.nguyen_suunhj98@hcmut.edu.cn                            //
// Created On   : Tuesday December 10,2019                                    //
//                                                                            //  
////////////////////////////////////////////////////////////////////////////////

module rs_element(out,in,sel);
    input   [31:0]in;       
    input   [2:0]sel;
    output  [31:0]out;

    wire [31:0]s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18;
    unit count1(s0,in,32'h3F800000,sel);
    unit count2(s1,in,s0,sel);
    unit count3(s2,in,s1,sel);
    unit count4(s3,in,s2,sel);
    unit count5(s4,in,s3,sel);
    unit count6(s5,in,s4,sel);
    unit count7(s6,in,s5,sel);
    unit count8(s7,in,s6,sel);
    unit count9(s8,in,s7,sel);
    unit count10(s9,in,s8,sel);
    unit count11(out,in,s9,sel);
    /*unit count12(s11,in,s10,sel);
    unit count13(s12,in,s11,sel);
    unit count14(s13,in,s12,sel);
    unit count15(s14,in,s13,sel);
    unit count16(s15,in,s14,sel);
    unit count17(s16,in,s15,sel);
    unit count18(s17,in,s16,sel);
    unit count19(s18,in,s17,sel);
    unit count20(out,in,s18,sel);*/
endmodule

module unit(out,in,pre_out,sel);
    input   [31:0]in,pre_out;
    input   [2:0]sel;
    output  [31:0]out;

    wire [31:0]s1,s2,s3,s4,s5,s6;
    wire [2:0]sel_1;
    wire [31:0]convert;

    adder5 sub_1(sel_1,sel,-5'd1);

    ufc convert_float(convert,sel);

    division div(s1,pre_out,convert);
    add_sub sub(s2,pre_out,s1,1'b1);
    
    ex ex(s3,pre_out,{2'b00,sel_1});
    multiplier mult(s4,s3,convert);
    division div1(s5,in,s4);
    add_sub  add(out,s2,s5,1'b0);
endmodule
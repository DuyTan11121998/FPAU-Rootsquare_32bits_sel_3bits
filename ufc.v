   module ufc(float,unsign);
    output [31:0]float;
    input [2:0]unsign;
    
    wire check_1,check_2,check_3,check_4,check_5,check_6,check_0;


    assign check_0=(~unsign[2])&(~unsign[1])&(~unsign[0]);
    assign check_1=(~unsign[2])&(~unsign[1])&(unsign[0]);
    assign check_2=(~unsign[2])&(unsign[1])&(~unsign[0]);
    assign check_3=(~unsign[2])&(unsign[1])&(unsign[0]);
    assign check_4=(unsign[2])&(~unsign[1])&(~unsign[0]);
    assign check_5=(unsign[2])&(~unsign[1])&(unsign[0]);
    assign check_6=(unsign[2])&(unsign[1])&(~unsign[0]);

    
    assign float = check_0?32'h00000000:(
        check_1?32'h3F800000:(
            check_2?32'h40000000:(
                check_3?32'h40400000:(
                    check_4?32'h40800000:(
                        check_5?32'h40A00000:(
                            check_6?32'h40C00000:32'h40E00000
                        )
                    )
                )
            )
        )
    );
    


endmodule
module clk_cct(
    input clk_27,
    input debug, // Connect to switch 9
	 input reset_bar,
    output clk
);


reg [23:0] clock_divider_counter, clock_divider_constant;
always @ *
    if (debug == 1'd1)
        clock_divider_constant <= 24'd1350000; // 10 Hz
        // clock divider constant <= 24’d1; // uncomment to make 13.5 MHz clk
    else
        clock_divider_constant <= 24'd13500000; // 1 Hz
always @ (posedge clk_27)
    if (reset_bar == 1'd0)
        clock_divider_counter <= 24'd1;
    else if (clock_divider_counter == 24'd1)
        clock_divider_counter <= clock_divider_constant;
    else
        clock_divider_counter <= clock_divider_counter - 24'd1;
always @ (posedge clk_27)
    if (clock_divider_counter == 24'd1)
        clk <= ~clk;
    else
        clk <= clk;
		  
endmodule
module fpga_audio_visualizer_test (
    input  logic 			clk_27,
	 input  logic 			reset_bar,
	 input  logic 			debug,
    output logic [17:0] LED_RED
);

	reg clk;
	logic [17:0] led_out;
	
	clk_cct clk_cct_inst(.clk_27(clk_27),
								.debug(debug),
								.reset_bar(reset_bar),
								.clk(clk));
	

	always @(posedge clk or negedge reset_bar) begin
		if (!reset_bar)
			led_out <= 18'b1;
		else
			led_out <= (led_out << 1) | 1;
	end
	 
   always @(posedge clk) begin
      LED_RED <= led_out;  // slow blink visible on LEDs
   end
endmodule
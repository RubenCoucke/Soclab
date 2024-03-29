module display_input(
  input 		          		TD_CLK27,
	input 		     [7:0]		TD_DATA,
	input 		          		TD_HS,
	output		          		TD_RESET_N,
	input 		          		TD_VS
  );

  parameter HOR_FIELD = 1279;
  parameter HOR_STR_SYNC = 1311;
  parameter HOR_STP_SYNC = 1503;
  parameter HOR_TOTAL = 1599;
  parameter VER_FIELD = 479;
  parameter VER_STR_SYNC = 489;
  parameter VER_STP_SYNC = 491;
  parameter VER_TOTAL= 520;

  reg line_start_pulse;

  endmodule 
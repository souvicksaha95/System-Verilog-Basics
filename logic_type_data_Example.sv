module new_logic_data_type;
  logic [3:0]  new_data;     // Declare a 4-bit logic type variable
  logic        en;       // Declare a 1-bit logic type variable
 
  initial 
	begin
      		$display ("my_data=0x%0b en=%0b", new_data, en);      // Default value of logic type is X
      		new_data = 4'hB;                   		      // logic datatype can be driven in initial/always blocks
      		$display ("my_data=0x%0b en=%0b", new_data, en);    
      		#1;
      		$display ("my_data=0x%0b en=%0b", new_data, en);
  	end
 
  assign en = new_data[0];                 // logic datatype can also be driven via assign statements
endmodule
// Logic data can be manipulated inside procesural block like initial, always and also in assign statement.
// The same can't be said about verilog code.
// There 'reg' can be used in procedural block and 'wire' can be used in assign statement.
// Logic data can be of 1-bit or upwards.

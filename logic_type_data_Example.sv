module new_logic_data_type;
  logic [3:0]  new_data;     // Declare a 4-bit logic type variable
  logic        en;       // Declare a 1-bit logic type variable
 
  initial 
	begin
		$display ("new_data=0x%0b en=%0b", new_data, en);      // Default value of logic type is X
      		new_data = 4'hB;                   		      // logic datatype can be driven in initial/always blocks
		$display ("new_data=0x%0b en=%0b", new_data, en);    
      		#1;
		$display ("new_data=0x%0b en=%0b", new_data, en);
  	end
 
  assign en = new_data[0];                 // logic datatype can also be driven via assign statements
endmodule
// Logic data can be manipulated inside procesural block like initial, always and also in assign statement.
// The same can't be said about verilog code.
// There 'reg' can be used in procedural block and 'wire' can be used in assign statement.
// Logic data can be of 1-bit or upwards.
/* OUTPUT */
// # new_data=0xx en=x
// # new_data=0x1011 en=x
// # new_data=0x1011 en=1 // The delay of 1 clock cycle results the en variable to be 1. otherwise it would have been 'x'. Because
// all the commands in the initial block executes at once.

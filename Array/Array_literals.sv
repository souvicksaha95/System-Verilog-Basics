// Will look into different scenarios about declaring array  
module array_literals ();
  int a [4] = '{0 ,1, 2, 3}; // Declaring values by literals

  initial begin
   $display ("a [0] = %d", a[0]);
   $display ("a [1] = %d", a[1]);
   $display ("a [2] = %d", a[2]);
   $display ("a [3] = %d", a[3]);
   $display ("a [4] = %d", a[4]); // default value 0 if not declared
   $display ("a [5] = %d", a[5]); // default value 0 if not declared
 	  end
endmodule
/* OUTPUT  
# a [0] =  0
# a [1] =  1
# a [2] =  2
# a [3] =  3
# a [4] =  0
# a [5] =  0 */  
  
  
module array_literals ();
  int a [6] = '{0 ,1, 2, 3}; // Declaring values by literals. Didn't declare all values. only the first four.

  initial begin
   $display ("a [0] = %d", a[0]);
   $display ("a [1] = %d", a[1]);
   $display ("a [2] = %d", a[2]);
   $display ("a [3] = %d", a[3]);
   $display ("a [4] = %d", a[4]); // default value 0 if not declared
   $display ("a [5] = %d", a[5]); // default value 0 if not declared
 	  end
endmodule  
/* OUTPUT  
Same Output */  
  
  
// Declare the array like this  
int a []= '{6{4}}; // Declaring values by literals  
/* OUTPUT
# a [0] =   4
# a [1] =   4
# a [2] =   4
# a [3] =   4
# a [4] =   4
# a [5] =   4*/  
  
  

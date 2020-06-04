Declaring fixed size array in SV is quite simple and less verbose than verilog.  
**int lo_hi[0:15]; // 16 ints [0]..[15]  
int c_style[16]; // 16 ints [0]..[15]**  
The later declaration is not allowed in Verilog, but allowed in SV. Let's look at multidimentional array diclaration.  
**int array2 [0:7][0:3]; // Verbose declaration  
int array3 [8][4]; // Compact declaration  
array2[7][3] = 1; // Set last array element**   // This type of data assignment is not allowed in Verilog.

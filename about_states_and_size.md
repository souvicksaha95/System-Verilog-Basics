Unlike verilog, most of the SV data types doesn't have 4 states (1, 0, X, Z). Rather they have only two states, i.e. 1 and 0.  
Only the 'logic' data type in SV has four possible states like verilog.  
Also let's look at the storage sizes of different data types in system verilog. 

**bit b; // 2-state, single-bit     
bit [31:0] b32; // 2-state, 32-bit unsigned integer  
int i; // 2-state, 32-bit signed integer  
byte b8; // 2-state, 8-bit signed integer  
shortint s; // 2-state, 16-bit signed integer  
longint l; // 2-state, 64-bit signed integer**

It's not the best idea to use a variable of type **Byte** than using a **8 bit logic, logic [7:0]**  
Keep in mind that Byte, Int, etc, all are signed data types. That means a byte can count from -127 to 127. But a 8 but logic can count up
255.

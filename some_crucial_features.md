> At times there can be cases where the hardware converts the logic type variable, which is 4 state variable to a 2 state variable. There maybe erros.
Use the SV operator **'$isunknown'** that returns 1 if any bit of the expression is X or Z.  

// Example //  
**if ($isunknown(iport)  
  $display("@%0d: 4-state value detected on input port", $time, iport);**  

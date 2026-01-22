@0
D=M                       // Initialize value at RAM location 0 - determines how many screen rows will be filled
@INFINITE
D;JLE                    // Check value; if less than or equal to 0 just go to infinite loop - prevents drawing if value is invalid or zero
@counter                 // stores the value into variable counter - this will control how many iterations will occur
M=D                     
@SCREEN                 //loads address of screen i.e 16384 into D
D=A                     // Store Address of Screen in D
@address                // Stores the Screens address in variable address - This is the pointer to the current screen word
M=D                     
(LOOP)                  
@address
A=M                     // sets A to value stored in address - now A points to current screen word
M=-1                    // writes -1 (111111111111111) - turns 16 pixels on in that screen word
@address
D=M                     // load current screen address into D
@32                     // adds 32 to the address - each row of the screen uses 32 words - this moves pointer down 1 row
D=D+A                   
@address               // Stores updated address back into address
M=D
@counter                // decreases the counter and stores the counter in both M and D
MD=M-1
@LOOP 
D;JGT                       // Call loop again if D value is greater than 0
(INFINITE)                  //infinite loop
@INFINITE
0;JMP
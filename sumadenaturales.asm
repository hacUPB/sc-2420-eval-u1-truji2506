
@0
D=M         
@R1
M=D         
@0
M=0          

(LOOP)
@R1
D=M       
@END
D;JEQ       
@R1
D=M         
@SUM
0;JMP        

(SUM)
@0
M=D+M        
@R1
M=M-1        
@LOOP
0;JMP        

(END)
@END
0;JMP      

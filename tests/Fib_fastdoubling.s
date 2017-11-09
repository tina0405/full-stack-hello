or $0 $0 #1  ;R_1 : initial the first number
or $0 $1 #2  ;R_2 : initial the second number
or $0 $0 #3  ;R_3 for temp 
or $0 $0 #4  ;R_4 for n
or $0 $0 #6  ;F(n)
or $0 $0 #7  ;F(n+1)
or $0 $0 #8  ;R_8 for temp
mod #0 $2 #8
jnz #8 #13    ;if even
div #0 $2 #4 ;register_4 = n 
jmp #24
sub #0 $1 #4 ;if odd
div #4 $2 #4 ;register_4 = n 
jmp #24
jnz #4 #18   ;if 0,print 0
ret
or $0 #2 #3  ;temp = R_2
add #1 #2 #2 ;R_2 = R_1 + R_2
or $0 #3 #1  ;R_1 = temp
sub #4 $1 #4 ;input-1
jnz #4 #18   ;jump back until it become 0   
ret
call #16     
or #1 $0 #6  ;register_6 = F(n)
add #4 $1 #4 ;n-1
call #16
or #1 $0 #7  ;register_7 = F(n-1)
jnz #8 #36   
mul $2 #6 #3 ;even
mul #3 #7 #3 ;2*F(n)*F(n+1)-F(n)*F(n)
mul #6 #6 #1
sub #3 #1 #3 
print #3
halt
mul #6 #6 #3 ;odd
mul #7 #7 #1 ;F(n+1)*F(n+1)+F(n)*F(n)
add #3 #1 #3
print #3
halt














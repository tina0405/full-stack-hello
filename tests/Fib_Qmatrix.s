or $0 $0 #1  ;F0 = 0
or $1 $0 #2  ;F1 = 1
or $1 $0 #3  ;F2 = 1
or $0 $0 #4  ;tmp
or $0 $0 #6  ;tmp
or $0 $0 #7  ;tmp
or $0 $0 #8  ;tmp

xor #0 $0 #4 
jnz #4 #13   
print #1     ;input == 0 ,print result
halt

or  #3 $0 #7 ;record F2
mul $1 #3 #4 ;1*F2
mul $1 #2 #6 ;1*F1
add #4 #6 #3 ;1*F2+1*F1=F2

or  #2 $0 #8 ;record F1
mul $1 #2 #4 ;1*F1
mul $1 #1 #6 ;1*F0
add #4 #6 #2 ;1*F1+1*F0=F1

mul $1 #7 #4 ;1*F2
mul $0 #8 #6 ;0*F1
add #4 #6 #3 ;1*F2+0*F1=F1

mul $1 #8 #4 ;1*F1
mul $0 #1 #6 ;0*F0
add #4 #6 #1 ;1*F1+0*F0=F0

sub #0 $1 #0 ;input sub 1
jmp #9




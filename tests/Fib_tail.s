or $0 $0 #1 ;a = 0
or $1 $0 #2 ;b = 1
or $0 $0 #3 ;tmp = 0

call #8 
print #3 
halt

xor #0 $0 #3
jnz #3 #12
or #1 $0 #3
ret

xor #0 $1 #3 
jnz #3 #16
or #2 $0 #3
ret

sub #0 $1 #0
or #1 $0 #3
or #2 $0 #1
add #2 #3 #2
call #8
ret


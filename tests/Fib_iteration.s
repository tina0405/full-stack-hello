or $0 $0 #1 
or $0 $1 #2 
or $0 $0 #3 ;r_3 for temp 
or $0 $0 #0 ;r_0 for input 

jz #0 #12

or $0 #2 #3
add #1 #2 #2
or $0 #3 #1

sub #0 $1 #0
jnz #0 #5
print #2
halt

print $0
halt

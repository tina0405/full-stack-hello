or $0 $0 #1 ;r_1=output
or $2 $0 #0 ;r_0=input
call #5
print #1
halt
xor #0 $1 #2 ;r_2=compare register
jnz #2 #9 ;jump,if!=1
add #1 $1 #1 ;if==1,output add
ret
xor #0 $0 #2
jnz #2 #12 ;jump,if!=1
ret ;if==0,return
sub #0 $1 #0
call #5
sub #0 $1 #0
call #5
add #0 $2 #0
ret

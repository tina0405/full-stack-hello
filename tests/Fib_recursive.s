or $0 $0 #1  ;r_1=output

xor #5 $0 #5 ;error input type signal
jz #5 #7
print "your parameter should be integer"
halt
call #10

print #1
halt

xor #0 $1 #2 ;r_2 = compare register
jnz #2 #14   ;jump,if!=1
add #1 $1 #1 ;if == 1,output add
ret
xor #0 $0 #2
jnz #2 #17   ;jump,if != 1
ret          ;if == 0,return
sub #0 $1 #0
call #10
sub #0 $1 #0
call #10
add #0 $2 #0
ret

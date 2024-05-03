delay proc 
mov di, FFFFh
pass1: mov cx, 2000
pass2: loop pass2
jnz pass1
ret
delay endp

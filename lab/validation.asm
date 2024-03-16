include emu8086.inc
org 100h

.code
mov ax,89


cmp ax,0
jl invalid
jge l1

l1:
cmp ax,100
jg invalid
jle pass_fail

pass_fail:
cmp ax,40
jl fail
jge pass

fail:
printn "You Fail in the exam "
jmp exit

pass:
printn "You pass in the exam "
jmp exit

invalid:
printn "The number is invalid "
  
exit:
ret





include emu8086.inc
org 100h

.code
printn "Enter a number "
mov ah,1
int 21h
mov bl,al 
printn

cmp bl,'0'
je zero
jl negative
jg pos

zero:
print "It's a zero "
jmp exit  
negative:
print "It's a negative number "
jmp exit
pos:
print "It's a positive number "

exit:
ret
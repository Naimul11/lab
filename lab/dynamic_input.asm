include emu8086.inc
org 100h

.code
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al     
printn

mov ah,2
mov dl,bl
int 21h
printn   

mov ah,2
mov dl,'1'

l1:

int 21h
inc dl

cmp dl,bl
jle l1




ret





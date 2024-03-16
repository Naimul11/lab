include emu8086.inc
org 100h

.data 
str db "* $"

.code
mov ax,@data
mov ds,ax

mov cx,1 

loop1:
mov bx,1

loop2:
lea dx,str
mov ah,09h
int 21h

inc bx
cmp bx,cx  
jle loop2:

printn

inc cx
cmp cx,5
jle loop1:


ret





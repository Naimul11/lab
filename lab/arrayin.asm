include emu8086.inc
org 100h

.data
arr db 5 dup(?)

.code 
mov ax,@data
mov ds,ax

mov cx,5
mov si,offset arr 

printn "Enter array value "

loop1:
mov ah,1
int 21h
mov [si],al
inc si
loop loop1
printn

mov si,offset arr
mov cx,5

printn "Array value "

loop2:
mov dl,[si]
mov ah,2
int 21h
printn
inc si
loop loop2


ret





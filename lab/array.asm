include emu8086.inc
org 100h 

.data
arr db 1,2,3,4,5

.code 
mov ax,@data
mov ds,ax

mov si,offset arr
mov cx,5

printn " array value "

loop1:
mov dl,[si]
add dl,48
mov ah,2
int 21h
printn
inc si
loop loop1


ret
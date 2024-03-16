include emu8086.inc
org 100h

.data

var1 db "Enter an alphabet: $"
var2 db "Converted alphabet: $ " 

input db ? 

.code
mov ax,@data
mov ds,ax

lea dx,var1
mov ah,09h
int 21h

mov ah,01h
int 21h
mov input,al
printn

lea dx,var2
mov ah,09h
int 21h

mov dl,input
add dl,32
mov ah,02h
int 21h

 



ret





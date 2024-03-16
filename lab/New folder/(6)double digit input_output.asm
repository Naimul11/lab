include emu8086.inc
org 100h

.data
remainder db ?

.code
mov ax,@data
mov ds,ax

mov ah,0
mov al,23
mov bl,10
div bl  ; al = al / bl


mov remainder,ah

mov ah,00

lea dl,al
add dl,48
mov ah,02h
int 21h

mov al,remainder
lea dl,al 
add dl,48
mov ah,02h
int 21h 

ret
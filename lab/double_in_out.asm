include emu8086.inc
org 100h
.data 
str db "double digit output$"
input db ?
res db ?
rem db ?
.code
mov ax,@data
mov ds,ax
print "Double digit input "
mov bl,10

mov ah,01h
int 21h

sub al,48

mul bl
mov cl,al

mov ah,01h
int 21h

sub al,48

add al,cl
mov input,al
printn

mov ah,00
mov al,input
div bl
mov res,al
mov rem,ah

lea dx,str
mov ah,09
int 21h

mov dl,res
add dl,48
mov ah,02h
int 21h

mov dl,rem
add dl,48
mov ah,02h
int 21h
ret

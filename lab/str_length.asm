include emu8086.inc     
org 100h


.data

str db "Once upon a time$"
str1 db "Length of the string $"

res db ?
rem db ?


.code
mov ax,@data
mov ds,ax

mov bl,0
lea si,str

loop1:

inc bl
inc si

mov al,[si]

cmp al,"$"
je loop_break

jne loop1


loop_break:

lea dx,str
mov ah,9
int 21h
printn 

lea dx,str1
mov ah,9
int 21h
print
         
mov ah,00
mov cl,10
mov al,bl

div cl

mov bl,ah
 
mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,bl
add dl,48
mov ah,02h
int 21h


ret





include emu8086.inc     
org 100h


.data

my_name db "NishadHossainEmon$" 

res db ?
rem db ?


.code
mov ax,@data
mov ds,ax

mov bl,0
lea si,my_name
loop1:

inc bl
inc si

mov al,[si]

cmp al,"$"

je loop_break
jne loop1


loop_break:
         
mov ah,00
mov cl,10
mov al,bl

div cl

mov res,al
mov rem,ah
 
lea dl,al
add dl,48
mov ah,02h
int 21h

mov ah,rem 

lea dl,ah
add dl,48
mov ah,02h
int 21h


ret





; ********************** In the Name of ALLAH ***********************

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include emu8086.inc
org 100h

.data

str1 db "Enter the string : $"


.code
mov ax,@data
mov ds,ax 

lea dx,str1
mov ah,09h
int 21h

mov cx,6

input:

mov ah,01h
int 21h
mov bl,al
push bx

loop input

printn 
print "The reverse string is : "

mov cx,6
output:
     
pop bx
mov dl,bl
mov ah,02h
int 21h

loop output


ret





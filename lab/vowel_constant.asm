include emu8086.inc
org 100h 
.data
vowels1 db "aeiou$" 
vowels2 db "AEIOU$"

.code
mov ax,@data
mov ds,ax

printn "Enter a character"
mov ah,1
int 21h
mov bl,al 
printn


mov si,offset vowels1
mov cx,5

comp:
mov al,[si]
cmp al,bl
je vowels
inc si
loop comp 


mov si,offset vowels2
mov cx,5

comp1:
mov al,[si]
cmp al,bl
je vowels
inc si
loop comp1


constant:
print "It's a constant"
jmp exit

vowels:
print "It's a vowel"



exit:
ret

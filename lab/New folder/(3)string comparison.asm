; ******************* In the Name of ALLAH *****************


include emu8086.inc
org 100h

.data

user1 db "nishad@gmail.com$"
pass1 db "123456$"

user2 db 16 dup(?) 

pass2 db 6 dup(?)


.code
mov ax,@data
mov ds,ax

lea si,user2

mov cl,16

loop1:
mov ah,01h
int 21h

mov [si],al
inc si
dec cl

cmp cl,0
jg loop1



printn

lea si,pass2
mov cl,6

loop2:
mov ah,01h
int 21h

mov [si],al
inc si
dec cl

cmp cl,0
jg loop2


printn

lea si,user1
lea di,user2

mov cl,16

loop3:

mov al,[si]
mov bl,[di]

cmp al,bl

jne not_match
je temp

not_match:
printn "Not match."

jmp stp


temp:
inc si
inc di
dec cl

cmp cl,0
jg loop3


lea si,pass1
lea di,pass2

mov cl,6

loop4:
mov al,[si]
mov bl,[di]

cmp al,bl
jne not_match2
je temp2


not_match2:
printn "Not match."

jmp stp



temp2:
inc si
inc di
dec cl

cmp cl,0
jg loop4



match:

printn "Match."

stp:
ret

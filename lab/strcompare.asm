include emu8086.inc
org 100h

.data
str db "this is a string$"
str1 db "this is another string$"  

.code

mov ax,@data
mov ds,ax

lea si, str
lea di, str1

comp:
mov al,[si]
mov bl,[di]

cmp al,bl
jne not_equal

cmp al,'$'
je equal

inc si
inc di
jmp comp


not_equal:
printn "Strings are not equal "
jmp exit

equal:
printn "Strings are equal "


exit:
ret





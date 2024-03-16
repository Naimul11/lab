include emu8086.inc
org 100h
  
.code 

printn "Enter a number "
mov ah,1
int 21h 
printn

mov ah,2
mov dl,al
int 21h
print


and al,1
jz even
jmp odd

even:
printn " is a even number "
jmp exit

odd:
printn " is a odd number "


exit:
ret
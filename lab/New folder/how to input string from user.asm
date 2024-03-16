; ********************* In the Name of ALLAH **********************


include emu8086.inc
org 100h


.data

arr db 6 dup("$")

.code
mov ax,@data
mov ds,ax


lea si,arr
mov cl,6

loop1:

mov ah,01h
int 21h

mov [si],al

inc si

loop loop1

printn
          
          
lea si,arr
mov cl,6

loop2:

mov al,[si]
lea dl,al
mov ah,02h
int 21h

inc si

loop loop2          
    

ret






; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr
mov cx,5
mov al,0

label:

add al,[si]
inc si

loop label

mov bl,5
div bl 

add al,'0'
mov dl,al
mov ah,2
int 21h

ret

arr db 1,2,3,4,5



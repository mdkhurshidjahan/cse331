
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr


mov cx,10

label:
lea di,arrn

mov al,[si]
add di,ax

mov bl,[di]
inc bl
mov [di],bl
inc si

Loop label

ret

arr db 7,6,5,4,7,6,6,8,3,10
arrn db 11 dup(0)




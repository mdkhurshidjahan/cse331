
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr
lea di,arr2
lea bp,sarr

mov cx,5

label:

mov al,[si]
mov bl,[di]
add al,bl
mov [bp],al
inc si
inc di
inc bp

Loop label

ret

arr db 1,2,3,4,5
arr2 db 5,4,3,2,1
sarr db 5 dup(?)



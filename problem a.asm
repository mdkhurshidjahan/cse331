
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

lea si,arr


mov [si],1
inc si
mov [si],1

mov cx, 10

label:
mov al,[si]
mov bl,[si-1]

add al,bl

mov [si+1],al
inc si
Loop label


ret

arr db 10 dup(?)



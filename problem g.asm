
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr
mov cx,5

input_loop:

mov ah,1
int 21h
mov [si],al
inc si
LOOP input_loop
  

lea si,arr
lea di,arr2
mov cx,5
add di,4

reverse:

mov al,[si]
mov [di],al
inc si
dec di

loop reverse

   
ret


arr db 5 dup(?)
arr2 db 5 dup(?)





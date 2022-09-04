
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si,arr
mov ax,0

mov cx,16

label:

mov bx,[si]
sub bx,30h
add ax,bx
inc si
inc si

Loop label

exit:

mov bx,16
div bx
add ax,30h
mov dx,ax
mov ah,2
int 21h 

ret
arr db 's d f w u q e u e t d v b m d y'


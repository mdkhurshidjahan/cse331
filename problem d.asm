
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc'

org 100h 

lea si,arr

print 'Enter a word: '
mov cx,5

input_loop:
mov ah,1
int 21h
mov [si], al
inc si
loop input_loop

printn ' Enter a char to search: ' 

mov ah,1
int 21h
 
lea si,arr
mov bl,0
search:

cmp [si],al
jz found
inc si
inc bl

found:

print  ' index: '

add bl, '0'
mov dl,bl
mov ah,2
int 21h

ret

arr db 5 dup(?)



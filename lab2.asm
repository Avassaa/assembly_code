
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here


mov cx,number
sub cx,2
mov bh,2   




loop1:
mov ax,number
div bh
cmp ah,0
je end
inc bh
loop loop1
mov isprime,1

is_square:
cmp al,bh
jne loop1



end: 
ret
 

number dw 5
isprime db 0 


























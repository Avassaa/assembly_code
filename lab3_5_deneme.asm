
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov dl,num1
mov bl,num2
cmp dl,bl
je equal
jg euclidean_loop



;int a =6;
;int b =8;

;int temp =a;
; a =b;
;b = temp;
great_num1: 
mov cl,bl
mov bl,dl
mov dl,cl 
xor cx,cx

euclidean_loop:  
xor ax,ax
mov al,dl
div bl
cmp ah,0
je end 
mov dl,bl
mov bl,ah
loop euclidean_loop



equal:
lea bx,gcd 
mov [bx],dl

end:

lea bp,gcd
mov [bp],bl
ret

num1 db 33
num2 db 9
gcd  db 1


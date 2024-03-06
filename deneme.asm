
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

;gcd   

mov bx,a
mov dx,b      
cmp bx,dx
jge inner_loop
mov cx,dx
mov dx,bx
mov bx,cx
jmp inner_loop
inner_loop:
  mov ax,bx 
  div dx     
  cmp ah,0
  je end 
  mov bl,ah
  loop inner_loop
  
  
    




end:
ret

a dw 210
b dw 45
loop_count dw 0



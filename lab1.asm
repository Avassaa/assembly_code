
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
 
         
mov dl,5h   
mov bl,dl
mov ch,0
mov di,2000h
mov ds,di
  
inc_loop:
    mov [ds+si],di
    add ax,di
    inc di
   
loop inc_loop




mov cx,8
print: mov ah,2
       mov dl,'0'
       test bl,10000000b 
       jz zero
       mov dl,'1'
zero:int 21h
     shl bl,1
     loop print      
ret   


N DB 255





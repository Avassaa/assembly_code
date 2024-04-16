
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


XOR AX,AX
XOR CX,CX
lea di,arr

set_di:   
cmp byte ptr[di],024h
je prep
inc di   
inc cx
jmp set_di



prep:
lea dx,arr
mov ah,09h
int 21h  
xor dx,dx  
lea di,len  



set_len_di:

cmp [di],03Ah  
je convert_val:
inc di
jmp set_len_di:


convert_val:
inc di          
mov ax,cx
mov cl,10
div cl
add ah,030h
add al,030h
   



halt:
  inc di
  cmp al,30h
  je is_zero
  mov [di],al
  inc di     
  is_zero:
  mov [di],ah 
  inc di
  mov [di],024h
  xor ax,ax
  mov ah,09h        
  lea dx,len
  int 21h
  
ret



arr db "This is a test string$"
len db 10,13,"Total length of given string is: "
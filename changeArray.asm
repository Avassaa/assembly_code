  
;code to change the elements of array   
  
  
  
org 100h 

mov cx,10 
lea bx,arr    
mov ax,5
dup:
mov [bx],ax
add ax,5   
inc bx     

loop dup

; add your code here

ret   

arr db 10 dup(5)






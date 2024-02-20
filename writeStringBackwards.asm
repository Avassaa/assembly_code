;code to write the string backwards
org 100h
lea si,arr 
xor dx,dx

arr_length:  
cmp [si],024h  
je prep: 
inc si
inc dx   
jmp arr_length




prep:   
mov ah,0eh 
mov cx,dx
dec si
std  




str_arr:
    
    lodsb
    int 10h 
      
loop str_arr  






ret
arr db "writing string backwards$"

; You may customize this and other start-up templates; 
org 100h
mov cx, 10000 ; Number of elements in the blocks

k1:
push cx
mov cx,10000
    k2:
    push cx
    mov cx,10000
        k3:      
            push cx 
            mov cx,10000  
            
         k4:   
            lea ax,arr
            mov si,ax
            push cx
            mov cx,26 
                k5:
                lodsb 
                mov ah,0Eh 
                int 10h 
                loop k5
                pop cx
          loop k4
            pop cx
        loop k3
    loop k2              
loop k1          
               
        
    








ret

arr db 13,10,'iremi cok seviyorum',' ', 3,3,3,3,3
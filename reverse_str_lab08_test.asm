
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

lea bx,str
lea si,str

set_si:
    cmp [si],24h
    je prep:
    inc si
    jmp set_si  
  
      
prep:
    dec si
    std      
write_str:
    cmp si,bx
    jl end:      
    mov ah,0Eh
    lodsb
    int 10h
    jmp write_str:
           

end:
    ret


str db "string bu$"

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
#start=Emulation_Kit.exe#

mainloop:
    mov dx,2000h
        add dx,di
        mov bx,0
        
print:
    mov si,0
    mov cx,5
    
    cmp dx,2027h
    jle next
    mov dx,2000h
    
next:
    mov al,Dots[BX][SI] ;dotsda 0,0 ile baslamak icin
    out dx,al
    inc si
    inc dx
    
    
    cmp si,5 
    loopne next;0 flag set olup olmadigina bakar loopne
    add bx,5 ;8 display var printle ve beklemek icin
    cmp bx,40
    jl print
    
    
   mov cx,0FFFh
   WAIT:
    LOOP WAIT 
 
 
add di,5
cmp di,35
jle end
mov di,0
end:
jmp mainloop             
                
                
    Dots:
    DB 001111111b,010010010b,010010010b,010010010b,001101100b;B
    DB 011111100b,000010010b,000010010b,000010010b,011111100b ;A
        
ret





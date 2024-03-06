
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;1.kural segment registerlerinin içinei mmediate deger atamazsin

;mov SS,1234h
;2.kural CS ve IP degeri degistirilemez
;mov AX,0FA12h
;mov CS,AX


;SI ve DI ayni anda kullanilamaz

;mov AX,[SI+DI]   



;offset registeri olarak kullanilmayan registerleri [ ] icine alamazsin
                                                                       
;mov ax,[bx] ;
;mov ax,[cx] ;sadece bu yanlis
;mov ax,[bp]
mov ax,[SI+13h]                                                                       



ret






org 100h
mov cl,var
cmp cl,2 
je set_prime
cmp cl,1
jle end
sub cl,2
mov dl,2


prime_loop:
xor ax,ax
mov al,var
div dl
inc dl  
cmp ah,0
je end
loop prime_loop




set_prime:
lea bx,isPrime
mov [bx],'1'




end:
mov ah,0Eh
mov al,isPrime
int 10h

ret    
var db -1
isPrime db '0'
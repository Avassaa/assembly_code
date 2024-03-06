
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  
;N must be between 14-26
CMP N,15
JB MES
CMP N,25
JA MES

MOV SI,1

;FOR N=1 AND 2
MOV ARRAY[0],0
INC SI
MOV ARRAY[1],1

SUB N,2
MOV CH,0
MOV CL,N

LOOP1:
INC SI
MOV BL,2
MOV AX,SI   
                
MOV DL,ARRAY[SI-3]
MOV DH,ARRAY[SI-2]

DIV BL
CMP AH,0
JE  EVEN

ODD:
SUB DH,DL
MOV ARRAY[SI-1],DH
JMP LOOPEND

EVEN: 
ADD DH,DL
MOV ARRAY[SI-1],DH  

LOOPEND:
LOOP LOOP1



ret      

  MES:
LEA SI,MESSAGE
MOV CX,38
MOV AH,0Eh
GO: LODSB
INT 10H
LOOP GO               

N db 18
ARRAY DB N DUP(0)


MESSAGE DB 'Please enter a value between 14-26','0'

    





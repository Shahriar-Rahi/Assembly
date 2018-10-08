.MODEL SMALL
.STACK 100H
.DATA  

MSG1 DB 'ENTER VALUE1: $'
;MSG2 DB 'ENTER VALUE2: $' 
MSG3 DB 'SUM: $'
    
.CODE
MAIN PROC 
    
   
    
    MOV AX,@DATA
    MOV DS, AX
        
    ;LEA DX, MSG1
    ;MOV AH,9
    ;INT 21H
    
    ;loop handling 
    
    ;MOV AH,1
    ;INT 21H 
    ;MOV DL,AL
    ;SUB BH,48  
    
    
    MOV BL,0
    SUB BL,48 
    
    
  LOOP:
    MOV CX,2
    ;MOV CH,BH
    
    MOV AH,1
    MOV DL,AL
    SUB DL,48  
    
    ;MOV AH,2
    ;MOV DL, 0DH
    ;INT 21H
    ;MOV DL,0AH
    ;INT 21H
    
    ADD BL,DL
  
  TOP:
    INT 21H
    LOOP TOP
    
    ;loop handling
     
     
      
      
    
    ;LEA DX, MSG2
    ;MOV AH,9
    ;INT 21H
    
    
        
     ;MOV AH,1
    ;INT 21H
    ;MOV CL,AL
    
       
    
    
     MOV AH,2
     MOV DL, 0DH
     INT 21H
     MOV DL,0AH
     INT 21H 
      
    
     LEA DX, MSG3
     MOV AH,9
     INT 21H
    
    
         
     
     MOV AH,2
     SUB BL,48

     
     MOV DL,BL
     ;SUB DL,48
     INT 21H
     
     
   
     MOV AH, 4CH
     INT 21H
     MAIN ENDP
END MAIN

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; sub by user

org 100h

; add your code here  
.model small
.stack
.data
.code
 main proc
    mov ah ,1
    int 21h 
    
    mov dl ,al
    
   
           mov ah ,1
           int 21h
            
           
          
              
               mul dl, al 
              sub dl,48
               mov ah ,2
               int 21h
   
          
           
            
       
    
    
    
    
    
    
   
    
    
    main endp
 end

ret






; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; print one chart
; input by user

org 100h

; add your code here 
.model small
.stack 100h
.data
      
      

.code 



main proc 
     mov ah ,1
     int 21h
     
     
    
     
     
     mov dl,al
     int 21h
     mov ah, 4ch
     int 21h
     
    
    
    
    
    
    
    
    
    
    main endp
    end
    


ret





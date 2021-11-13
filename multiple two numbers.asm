;function  
;x---------------------------------------------x 
 print macro p1
mov dl,p1   
mov ah,02
int 21h  
endm 
Output macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm


;program to find Multiplication of Two Numbers
;x---------------------------------------------x 
.model small
.stack 100h
.data 

 msg db " ENTER FIRST VALUE---->$"    
 var db 0ah, " ENTER SECOND VALUE---->$"
 var1 db 0ah,"  RESULT----->$" 
 var2 db 0ah,0ah,"x-----------------END-------------------x $" 

.code 
main proc 
    
                 ;first  step
       
   ;take first value from the user and print 
   ;first value
;x----------------------------------------------x        
    mov ax,@data
mov ds,ax
mov dx,offset msg
mov ah,09h 
 int 21h  
       
       mov ah,01h
       int 21h
          
       mov bl,al
      sub bl,48
       
              ;new line logic
             ;x--------------x    
             
       mov dl,10
       mov ah,02h
       int 21h
       
       mov dl,13
       mov ah,02h
       int 21h 
       
       
             ;second  step 
  
;take second value from the user and print
;second value  

;x------------------------------------------x
                
                
       mov dx,offset var
mov ah,09h
int 21h
       
       mov ah,01h
       int 21h
       sub al,48 
        
           ;multiplication logic
         ;x----------------------x
          
       mul bl        
       aam
        
       mov bl,al       
     add bl,48
             
                ;new line logic
               ;x--------------x
               
     mov dl,10
     mov ah,02h
     int 21h
     
     mov dl,13
     mov ah,02h
     int 21h
     
     
                 ;final  step 
   
                 ;result print
   ;x---------------------------------------x
                    
    mov dx,offset var1
mov ah,09h 
 int 21h
     
     
     mov dl,bl
     mov ah,02h
     int 21h 
     
          ;THE END
        ;x---------x
     mov dx,offset var2
mov ah,09h 
 int 21h
   
         mov dl,10
     mov ah,02h
     int 21h
     
     mov dl,13
     mov ah,02h
     int 21h
     
       
    
    
    
    main endp
end main
ret

 ;x--------------------------------------------x
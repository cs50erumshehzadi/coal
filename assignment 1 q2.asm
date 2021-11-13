
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
.model small
.stack 100h
.data 
 
 counter db ?
 str db 100 dup(?)
 x db 0ah,0ah,"INPUT STRING (S)<----->$" 
 x2 db 0ah,0ah,"ENTER COUNTER FOR HOW MANY TIME WANTS TO PRINTS (L)<----->$"
 num db 0          
 new_line db 0AH,0DH,"$" 
 
 
      ; Ask User What to Print/ Ask User For number of lines to print/ print each statement on a new line  
     ;X---------------------------------------------------------------------------------------------------X 
     
     
.code  
main proc
mov ax , @data
mov ds, ax


lea dx,x
mov ah , 09
int 21h 
  
  ;new line
;x------------x    
;call newLine

;offset addres of first element in array 
;x------------------------------------------x          
mov si, offset str  

        
; taking input String 
;x------------------------x   
takingInputString:
mov ah,1
int 21h



;checking if user pressed enter 
;x---------------------------------x 
cmp al,13 


 
;if input is equal to enter pressed then end program 
;x-----------------------------------------------------x  
je InputStringEnd 


 
 ;else save input at index 
;x------------------------------x  


mov [si],al 
inc si


 ;get next character again / jump to label takeInput  
;x---------------------------------------------------x 
jmp takingInputString   
  
    
    
    
InputStringEnd: 
   ;new line
;x------------x 

 
call newLine
lea dx, x2
mov ah , 09
int 21h

 
  ;new line
;x------------x 
;call newLine 



   ; taking input counter
;x---------------------------x  
mov ah ,1
int 21h 


  
  ; save input value to counter
;x-------------------------------x  

mov counter ,al  
mov [si] , offset counter
mov cx , [si]

      ;loop
   ;x--------x

printLoop:
call newLine
lea dx, str 
mov ah,09
int 21h  
inc num
mov bl,num 
add bl,48
cmp bl,counter  
je End  
 


loop printLoop  


  
  
End:  
mov ah,4ch
int 21h     

newLine:
lea dx,new_line
mov ah,09
int 21h
ret


main endp
end main

ret





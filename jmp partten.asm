
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 
 str db 0
 var db 1 
 nl db 0dh,0ah,"$"
.code
main proc 
    mov ax ,@data
    mov ds ,ax
   print_star:
   mov ah ,2
   mov dl ,'*' 
   int 21h
   inc str
   mov bl ,str
   cmp bl ,var
   je newline
   jmp print_star
   newline:
   mov ah ,9
lea dx,nl
   int 21h
   cmp bl ,5
   je exit
   inc var
   mov str,0
   jmp print_star
   exit:
   mov ah ,4ch
   int 21h
   
    
  
    
    
    
    
    
    
    
endp
end

; add your code here

ret





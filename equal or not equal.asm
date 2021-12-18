
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data 
 msg1 db "equal $"
 msg2 db "not equal $"
.code
main proc 
    mov ax ,@data
    mov ds ,ax
    mov dl ,'4'
    mov ah ,1
    int 21h
     cmp al ,dl
     je l1
     mov dx ,offset msg2
     mov ah ,9
     int 21h
     l1:
     mov dx,offset msg1
     mov ah ,9
     int 21h
    
  
    
    
    
    
    
    
    
endp
end

; add your code here

ret





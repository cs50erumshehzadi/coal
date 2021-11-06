
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 ; using loop
; add your code here
.model small
.stack 100h  
.data
 
 msg db "szabist $" 
 .code
  main proc
    mov ax, @data
    mov ds,ax

    mov cx,10
    
    print:  
    mov ah,09    
     int 21h
    
         
     
    loop print
 
    
            ret

    main endp
  end main
            







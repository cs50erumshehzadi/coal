
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

 
.model small
.stack 100h
.data                            
      var1 db "szabist university $"
       var2 db "erum $"           
       
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov dx,offset var1 
    mov ah,9
    int 21h
    mov dx,10
    mov ah, 2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    mov dx,offset var2 
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
    
     
    
    
    
    
    
    
    
    
    
    
    
    
    main endp
    end



ret





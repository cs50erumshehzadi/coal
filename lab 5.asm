
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 ; using variable  by calling  in main 
 ; ax  have 16bits address
 ; ds is  use to stored the data  have only address


; add your code here 
.model small 
.stack 100h
.data
 v1 db "2"
 v2 db ?
 v3 db " hello $"
 
.code

main proc 
    mov ax ,@data
    mov ds ,ax
    mov dl ,v1

      mov ah ,02 
      int 21h
    
    
    
    mov v2,3
    mov dl,v2
    add dl ,48
    mov ah ,2
    int 21h 
     mov dx ,offset v3
     mov ah ,9
     int 21h
    
    
    main endp
end
ret





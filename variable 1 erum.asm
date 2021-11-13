
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 ; using variable  by calling  in main 
 ; ax  have 16bits address
 ; ds is  use to stored the data  have only address


; add your code here 
.model small
.data
 var db "e $"
 var1 db "r $"
 var2 db "u $"
 var3 db "m $"
.code

main proc 
    mov ax ,@data
    mov ds ,ax
    mov dx ,offset var
    mov ah ,9
    int 21h 
    mov dx,10 
    mov ah ,2
    int 21h
    mov dx,13
    mov ah ,2
    int 21h
    mov dx,offset var1
    mov ah ,9
    int 21h
    
    main endp
end
ret





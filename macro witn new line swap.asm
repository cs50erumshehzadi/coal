
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
    ; stack  topic
    ;stack in proc
    ; with use

; add your code here 
; macro
printfunc macro p1
    mov dx,offset p1
    mov ah ,9
    int 21h 
    endm
newline macro p1
    mov dx,10
    mov ah ,2
    int 21h
    mov dx,13
    mov ah ,2
    int 21h 
endm 
swip macro p1
    mov ax ,'3'  
     mov dx,ax
    mov ah ,2
    int 21h
    mov bx, '4' 
    mov dx,bx
    mov ah ,2
    int 21h
    push  ax
    push bx
    pop ax
    pop bx
    mov dx ,ax
    mov ah ,2
    int 21h
    mov dx,bx
    mov ah ,2
     int 21h
    endm

    
    
    
    
    

.model small
.stack 100h
.data 
msg db " first msg $"
msg1 db " second msg $"



.code 
main proc
    mov ax,@data
    mov ds,ax
    printfunc msg
    newline  
    swip
    
    printfunc msg1
    main endp
end





   



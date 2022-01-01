
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

.model small
.stack 100h
.data 
msg1 db  " erum $"
msg2 db " ali $" 

.code 
main proc
    mov ax,@data
    mov ds,ax
    printfunc msg1
    printfunc msg2
    main endp
end





   



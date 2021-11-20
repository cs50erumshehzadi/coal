
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
;array                                    
.model small
.stack 100h
.data
 arr db 1,2,3,4,4,4
.code
main proc 
    mov ax ,@data
    mov ds ,ax
    mov si ,0
    mov si ,5
   mov dl,arr[si] 
   add dx,48
    mov ah ,2
    int 21h
    
    
    
endp
end

ret





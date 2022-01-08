
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
println macro p1
mov dx , offset p1
mov ah , 09
int 21h
endm	
printc macro p1
mov dx , p1
mov ah , 02
int 21h
endm	
takingInput macro 
mov ah , 01
int 21h
takingInput endm	
.model large
.stack 400h
.data 
 msg1 db "Please Enter Your Employee Id: $"   
 msg2 db "Enter number of Leaves this Month : $"
 msg3 db "Leaves For UserId: $"
 newline db 0ah,0dh,"$"


 
 EmployeeLeaves db  5dup("$")  
 


.code  
GetEmployeeDetail  proc


GetEmployeeDetail endp

main proc
mov ax , @data
mov ds , ax

mov cx , 5
l1:
println newline
println msg1
takingInput
loop L1


mov cx, 0

outerLoop:

           cmp cx, 5
           je done
           mov bx, 1   
            println newline  
            println msg3
            mov dx , cx
            add dx , 48 
            inc dx
            printc dx  
            println newline

innerLoop:
           mov ax, cx        ; do your thing here
           add ax, bx
                   
             println newline
             println msg2 
             takingInput     
                  
           cmp bx, 11
           je innerLoopDone
           inc bx
           jmp innerLoop

innerLoopDone:

           inc cx
           jmp outerLoop
done:



mov cx , 12
l2:
println newline
println msg2 
takingInput
loop l2

mov ah , 4ch
int 21h		

main endp


end main
                     
                     
ret





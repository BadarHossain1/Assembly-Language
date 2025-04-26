.model small
.data
.code

main proc

    mov dl, 'a'
    mov ah, 2
    int 21h

    jmp Exit
    
    mov dl, 'b'
    mov ah, 2
    int 21h

    Exit:
        mov ah, 4ch
        int 21h



    ; Find the greater number between 5 and 10

    mov ah,1
    int 21h

    mov bl, al
    
    mov ah, 1
    int 21h

    mov bh, al

    cmp bl, bh


    jg L1

    mov dl, bh
    mov ah, 2
    int 21h


    mov ah, 4ch 
    int 21h


    L1:
        mov dl, bl
        mov ah, 2
        int 21h

        mov ah, 4ch 
        int 21h





    ; jg -> jump if greater
    ; jl -> jump if less
    ; je -> jump if equal
    ; jge -> jump if greater or equal
    ; jle -> jump if less or equal
    ; jmp -> unconditional jump
    ; jz -> jump if zero
    ; jnz -> jump if not zero
    ; jo -> jump if overflow
    ; jno -> jump if not overflow
    ; js -> jump if sign
    ; jns -> jump if not sign
    ; jc -> jump if carry
    ; jnc -> jump if not carry
    ; ja -> jump if above
    ; jb -> jump if below
    ; jae -> jump if above or equal
    ; jbe -> jump if below or equal


main endp
end main


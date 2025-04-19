.model small
.stack 100h
.code
main proc

    mov al, 7       ; AL = dividend (7)
    mov bl, 3       ; BL = divisor (3)
    div bl          ; AX / BL ? Quotient in AL, Remainder in AH

    ; Store remainder before using AH for int 21h
    mov cl, ah      ; Save remainder in CL

    ; Print quotient
    mov dl, al      ; DL = quotient
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h         ; Output quotient

    ; Print space
    mov dl, ' '
    mov ah, 2
    int 21h

    ; Print remainder (restored from CL)
    mov dl, cl      ; DL = remainder
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h         ; Output remainder

    ; Exit program
    mov ah, 4ch
    int 21h

main endp
end main
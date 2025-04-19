.model small
.stack 100h
.code
main proc
    ; Read first digit
    mov ah, 1
    int 21h         ; AL = ASCII of digit 1
    sub al, 48      ; Convert to number
    mov bl, al      ; Store in BL as dividend

    ; Read second digit
    mov ah, 1
    int 21h         ; AL = ASCII of digit 2
    sub al, 48      ; Convert to number
    mov cl, al      ; Store in CL as divisor

    ; Division
    mov al, bl      ; AL = dividend
    mov ah, 0       ; Clear AH
    mov bl, cl      ; BL = divisor
    div bl          ; AL / BL ? Quotient in AL, Remainder in AH

    ; Save remainder in CL before overwriting AH
    mov cl, ah

    ; Print quotient
    mov dl, al
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h

    ; Print space
    mov dl, ' '
    mov ah, 2
    int 21h

    ; Print remainder
    mov dl, cl
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h

    ; Exit program
    mov ah, 4ch
    int 21h
main endp
end main
.model small      ; Use small memory model
.data             ; Data segment (empty in this case)

.code             ; Start of code segment

main proc         ; Beginning of the main procedure

    ; --- Input First Digit ---
    mov ah,1      ; Function to read a character from keyboard (INT 21h)
    int 21h       ; Call DOS interrupt to take input
    sub al,'0'    ; Convert ASCII character to actual number (e.g., '3' to 3). And the input is always saved at AL register
    mov bl,al     ; Store the first number in BL register

    ; --- Input Second Digit ---
    mov ah,1      ; Again prepare to read another character
    int 21h       ; Take second input
    sub al,'0'    ; Convert second ASCII character to number
    mov bh,al     ; Store the second number in BH register

    ; --- Add the Numbers ---
    mov dh,48     ; Store ASCII code for '0' (48) in DH — used for display
    add bl,bh     ; Add the two numbers: result in BL
    add bl,dh     ; Convert number back to ASCII (to print as character)

    ; --- New Line Before Output ---
    mov dl,10     ; Line Feed (LF) - move cursor to next line
    mov ah,2      ; Function to print a character
    int 21h       ; Print LF

    mov dl,13     ; Carriage Return (CR) - move to beginning of the line
    mov ah,2      ; Again set function to print
    int 21h       ; Print CR

    ; --- Print the Result ---
    mov dl,bl     ; Move the result (as ASCII) to DL for printing must
    mov ah,2      ; Function to print a character
    int 21h       ; Print the final result on screen

main endp         ; End of main procedure

end main          ; Mark the end of the program

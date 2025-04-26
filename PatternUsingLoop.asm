.model small
.data
.code

main proc
    
    mov cl,5
    mov bl,1

    row:

      
        mov cl,bl

        col:
            
            mov dl, '*'
            mov ah, 2
            int 21h                
    
        loop col

        mov dl, 10
        mov ah, 2
        int 21h
        mov dl, 13
        mov ah, 2
        int 21h

        inc bl
        mov cl,bh

    loop row

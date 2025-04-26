.model small  
.data
    var1 db 'Hello',10,13, 'world$'

.code 



main proc


    ; DB -> Define byte -> 1 byte, 8 bits
    ; DW -> Define word -> 2 bytes, 16 bits
    ; DD -> Define double word -> 4 bytes, 32 bits
    ; DQ -> Define quad word -> 8 bytes, 64 bits
    ; DT -> Define ten bytes -> 10 bytes, 80 bits
    

    
    mov ax, @data
    mov ds, ax

    mov dl, offset var1
    mov ah, 9
    int 21h

    
    
main endp

end main



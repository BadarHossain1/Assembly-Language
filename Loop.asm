.model small 
.data
.code

main proc

    mov cl,5
    mov dl,48

    print:

        
        mov ah,2    
        int 21h
        inc dl
        

    loop print
.model small
.data
.code

main proc
    mov bh,'B' ;bh = 'B'
    mov dl,bh 
    mov ah,2
    int 21h
    mov bh,'a'
    mov dl,bh 
    mov ah,2
    int 21h
    mov bh,'d'
    mov dl,bh 
    mov ah,2
    int 21h
    mov bh,'a'
    mov dl,bh 
    mov ah,2
    int 21h
    mov bh,'r'
    mov dl,bh 
    mov ah,2
    int 21h  
    
Exit:
    mov ah,4ch
    int 21h
    main endP
end main
    
    
    
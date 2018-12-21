org 0x0500
jmp 0x0000:start

aux times 16 db 0
F1: db 'Loading structures for the kernel...', 0 
F2: db 'Setting up protected mode...', 0 
F3: db 'Loading kernel in memory...', 0 
F4: db 'Running kernel...', 0 


modoVideo:
    ;modo video
    mov ah, 0
    mov al, 12h
    int 10h
    
ret

linha:
mov cx, 639;repetir o L3 do 300x ao 400x
    mov ah, 0ch
    mov bh, 0
    mov al, 0ah
    .L:
        cmp cx, 100
        jle .Fim
        cmp cx, 540
        jge .Fim
        mov [aux], cx
        mov dx, 640
        sub dx, cx
        mov cx, dx

        mov dx, 350
        int 10h
        mov dx, 351
        int 10h
        mov dx, 352
        int 10h
        mov dx, 353
        int 10h
        mov dx, 354
        int 10h
        mov dx, 355
        int 10h
        mov dx, 356
        int 10h
        mov dx, 357
        int 10h
        mov dx, 358
        int 10h
        mov dx, 359
        int 10h
        mov dx, 360
        int 10h
        ;VELOCIDADE DE PRINT
        mov ah, 86h
        mov cx, 0
        mov dx, 4096
        int 15h
        mov cx, [aux]
        mov ah, 0ch
        .Fim:
    loop .L
    mov ah, 0
    mov al, 12h
    int 10h
ret
pulaLinha:
    mov al, 10
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 0xf ;Cor da letra, Branco, apenas em    
    int 10h 
    mov al, 13
    int 10h 
ret

imprimirString: ; vai imprimir a mensagem
    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 20
    int 10h
    .p:
    lodsb
    cmp al, 0
    je fimString
    
    mov ah, 0xe
    mov bh, 0
    mov bl, 4
    int 10h


    jmp .p
    fimString:
    mov al, 10;pula pra proxima linha
    int 10h
    mov al, 13;volta pro começo da linha
    int 10h
    call pulaLinha
ret

start:

	xor ax, ax
	mov ds, ax
	call modoVideo
	mov si, F1
    call imprimirString
    call linha
  
    mov si, F2
    call imprimirString
    call linha
 
    mov si, F3
    call imprimirString
    call linha
	
	; load kernel in memory

	resetDisk:
		mov ah, 0h
		int 13h
		jc resetDisk

	readDisk:
		mov bx, 0x7e0
		mov es, bx
		mov bx, 0h

		mov ah, 2h ; read
		mov al, 6h ; setors count
		mov ch, 0h ; track
		mov cl, 3h ; sector id
		mov dh, 0h ; head
		mov dl, 0h ; drive
		int 13h
		jc readDisk
	
	; end load kernel in memory

	
    mov si, F4
    call imprimirString    
    call linha

	; run kernel

	jmp 0x7e0:0x0

	; end run kernel

times 512-($-$$) db 0
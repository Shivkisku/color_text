section .data
    hello_msg db 'Hello, colored text!', 0
    reset_color db 0x1b, '[0m', 0
    red_color db 0x1b, '[31m', 0
    green_color db 0x1b, '[32m', 0
    yellow_color db 0x1b, '[33m', 0

section .text
    global _start

_start:
    ; Print red text
    mov eax, 4
    mov ebx, 1
    mov ecx, red_color
    mov edx, 5
    int 0x80

    ; Print message in red
    mov eax, 4
    mov ebx, 1
    mov ecx, hello_msg
    mov edx, 18
    int 0x80

    ; Reset color
    mov eax, 4
    mov ebx, 1
    mov ecx, reset_color
    mov edx, 4
    int 0x80

    ; Print green text
    mov eax, 4
    mov ebx, 1
    mov ecx, green_color
    mov edx, 5
    int 0x80

    ; Print message in green
    mov eax, 4
    mov ebx, 1
    mov ecx, hello_msg
    mov edx, 18
    int 0x80

    ; Reset color
    mov eax, 4
    mov ebx, 1
    mov ecx, reset_color
    mov edx, 4
    int 0x80

    ; Print yellow text
    mov eax, 4
    mov ebx, 1
    mov ecx, yellow_color
    mov edx, 5
    int 0x80

    ; Print message in yellow
    mov eax, 4
    mov ebx, 1
    mov ecx, hello_msg
    mov edx, 18
    int 0x80

    ; Reset color
    mov eax, 4
    mov ebx, 1
    mov ecx, reset_color
    mov edx, 4
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80

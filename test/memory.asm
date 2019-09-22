global _start

section .data
	addr db "yellow", 0x0a
	len equ $ - addr

section .text
_start:
	mov [addr], byte 'H'
	mov [addr+5], byte '!'
	mov eax, 4	; sys_write system call
	mov ebx, 1 	; stdout discripter
	mov ecx, addr	; bytes to write
	mov edx, len	; no of bytes to write
	int 0x80
	mov eax, 1
	mov ebx, 0	; exit status is 0
	int 0x80

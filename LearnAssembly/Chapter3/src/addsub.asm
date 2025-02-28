TITLE Add and Subtract

INCLUDE Irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
num1 DWORD 1000
num2 DWORD 2000
result DWORD ?

.code
main PROC
	mov eax, num1
	add eax, num2
	mov result, eax
	mov eax, num1
	sub eax, num2
	mov result, eax
	call DumpRegs

	invoke ExitProcess, 0

main ENDP
	
END main


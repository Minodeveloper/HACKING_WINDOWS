extrn MessageBoxA: proc
extrn PostQuitMessage: proc
.data
	msg_txt db 'Hello World', 0
	msg_caption db 'Hello World App', 0
.code
	main proc
		sub rsp, 20h ;shadow stack
		mov r9, rax ;UINT uType
		lea r8, msg_caption ;LPCSTR lpCaption
		lea rdx, msg_txt ;LPCSTR lpText
		xor rcx, rcx ;HWND hWnd
		call MessageBoxA
		
		add rsp, 20h ;restore shadow stack

		xor rcx, rcx ;int nExitCode

		call PostQuitMessage
		
		ret
	main endp
end
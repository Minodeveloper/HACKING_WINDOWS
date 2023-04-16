.686
.model flat, stdcall
.stack 4096

extern	ExitProcess@4:	proc
extern	MessageBoxA@16:	proc

.data
	msg_txt			db	"Hello World!",0
	msg_caption		db	"Hello World App",0

.code
	main:
		push	0
		lea		eax,msg_caption
		push	eax
		lea		eax,msg_txt
		push	eax
		push	0
		call	MessageBoxA@16

		push	0
		call	ExitProcess@4
	end	main
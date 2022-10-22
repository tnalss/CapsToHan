Gui, Add, Text, x85 y19 w430 h40 , Capslock을 한/영으로 전환하는 레지스트리 추가 프로그램
Gui, Add, Button, x30 y50 w200 h50 gCapstohan, CapsLock to 한/영
Gui, Add, Button, x260 y50 w200 h50 gCapsagain, 원래대로
Gui, Add, Text, x77 y120 w430 h30 , 제작자 - Reo          블로그 - https://blog.naver.com/indoubt
; Generated using SmartGUI Creator 4.0
Gui, Show, x1006 y556 h150 w490, CapslockToHan
Return

GuiClose:
ExitApp

Capstohan:
RegRead, existMap, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map
If(ErrorLevel=1){
	RegWrite, REG_BINARY, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout , Scancode Map, 00000000000000000200000072003a0000000000
	if(ErrorLevel=1){
		MsgBox,실패했습니다.
	}else{
		MsgBox,재부팅하셔야 적용됩니다.
	}
}else{
	MsgBox,이미 적용되어있습니다.
}
return

Capsagain:
RegDelete, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map
if(ErrorLevel=1){
	MsgBox,레지스트리 삭제 실패
}else{
	MsgBox,재부팅 후 적용됩니다!
}



return

F11::
reload
return

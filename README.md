# CapsToHan
Capslock 키를 한/영키로 전환하는 레지스트리 추가/제거 프로그램


## 만든계기
맥 사용자의 경우 Capslock을 한/영 키로 사용하기 때문에  
윈도우 환경 사용시 Capslock을 눌렀다가 한/영을 눌렀다가 아주 난리가 남.  

Capslock키를 한/영키로 바꾸는 방법 중
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout  
경로에 Scancode Map 이진 레지스트리를 추가/삭제하는 방법을 적용하는 방법이 있음.

레지스트리를 추가하거나 삭제하기 위해 해당 경로로 찾아가는 번거로움이 있어 프로그램을 제작. 


## 단점
Capslock 기능을 아예 막아버렸기 때문에 대문자로 많은 입력을 해야하는 경우 불편.  
하지만 Capslock을 계속 켜놓고 쓰는 일은 매우 적다고 생각함.  


## 사용방법
관리자 권한으로 실행 후 버튼을 눌러 적용  
재부팅을 해야 최종 적용됨.


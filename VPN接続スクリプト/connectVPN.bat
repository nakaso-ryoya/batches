whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
　@powershell start-process ”%~0" -verb runas
　exit
)

rem VPN停止
taskkill /f /im openvpn-gui.exe
taskkill /f /im openvpn.exe
taskkill /f /im openvpnserv.exe

rem 文字コード設定
chcp 65001

for /f "usebackq delims=" %%A in (`C:\Users\tie306883\app_data\WinAuth-3.6.2\ConsoleApp1.exe C:\Users\tie306883\AppData\Roaming\WinAuth\winauth.xml R-VPN`) do set onetime=%%A

cd "C:\Program Files (x86)\Sophos\Sophos SSL VPN Client\config"

rem ユーザ名設定(自分のユーザIDにに変更すること)
echo tie306883> userPass.txt
rem パスワード設定(%1以前の値を自分のパスワードに変更すること)
echo uPAz_n4y%onetime%>> userPass.txt

rem WinAuth停止
taskkill /im WinAuth.exe

rem VPN起動(@以前の値を自分のユーザIDに変更すること)
cd "C:\Program Files (x86)\Sophos\Sophos SSL VPN Client\bin"
start openvpn-gui.exe --connect tie306883@pj221.aws-axion.net.ovpn

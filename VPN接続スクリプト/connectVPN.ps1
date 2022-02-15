
#WinAuth起動(自環境のWinAuth.exeのフルパスを記載すること)
C:\Users\tie306883\app_data\WinAuth-3.6.2\WinAuth.exe
Start-Sleep -m 500

#クリップボードからワンタイムパスワードを取得
$onetime = Get-Clipboard
echo $onetime

#管理者権限でバットファイル起動
Start-Process .\connectVPN.bat -ArgumentList $onetime -Verb runas

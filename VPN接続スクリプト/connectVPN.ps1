
#WinAuth�N��(������WinAuth.exe�̃t���p�X���L�ڂ��邱��)
C:\Users\tie306883\app_data\WinAuth-3.6.2\WinAuth.exe
Start-Sleep -m 500

#�N���b�v�{�[�h���烏���^�C���p�X���[�h���擾
$onetime = Get-Clipboard
echo $onetime

#�Ǘ��Ҍ����Ńo�b�g�t�@�C���N��
Start-Process .\connectVPN.bat -ArgumentList $onetime -Verb runas

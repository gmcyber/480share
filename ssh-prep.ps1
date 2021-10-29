Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
# a good time to complete via remote ssh
Set-Service -Name sshd -StartupType 'Automatic'
Set-ItemProperty "HKLM:\Software\Microsoft\Powershell\1\ShellIds" -Name ConsolePrompting -Value $true
New-ItemProperty -Path HKLM:\SOFTWARE\OpenSSH -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

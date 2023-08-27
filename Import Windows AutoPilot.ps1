Install-Script -name Get-WindowsAutopilotInfo -force
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Get-WindowsAutoPilotInfo.ps1 -Online -AssignedComputerName Test -AddToGroup "Windows Autopilot" -GroupTag "Customer Care" -Assign -Reboot

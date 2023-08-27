# Using Get-WindowsAutopilotInfo to Add Devices to Windows Autopilot

## Table of Contents
- [Overview](#overview)

- [What is Windows Autopilot?](#what-is-windows-autopilot)

- [What does Get-WindowsAutopilotInfo do?](#what-does-get-windowsautopilotinfo-do)

- [Instructions](#instructions)

- [Using Get-WindowsAutopilotInfo.ps1](#using-get-windowsautopilotinfops1)

- [Get-WindowsAutopilotInfo Parameters](#get-windowsautopilotinfo-parameters) 

## Overview 

This guide covers using the Get-WindowsAutopilotInfo PowerShell script to gather device information and add it to Windows Autopilot for deployment.

### What is Windows Autopilot?

Windows Autopilot is a service that allows you to automatically configure and manage new Windows devices. Using Autopilot, you can register new devices, join them to Azure Active Directory and Intune, apply policies and settings, install apps, and more.

### What does Get-WindowsAutopilotInfo do?

Get-WindowsAutopilotInfo is a PowerShell script that collects information about a Windows device like the hardware hash, model, etc. It can then add that data to the Windows Autopilot deployment service. This allows the device to be automatically configured when first booted up.

## Instructions

Follow these steps to add a new Windows device to Autopilot using Get-WindowsAutopilotInfo: 

1. Install the Get-WindowsAutopilotInfo script:

```powershell
Install-Script -Name Get-WindowsAutopilotInfo  
```

![Install-Script-1](https://github.com/DvirEzra/Add_Devices_to_Windows_Autopilot/assets/122629905/d1c88ca7-a56e-47e5-82f7-d18943e58aa8)


2. Run the script with parameters to gather info and add to Autopilot:

```powershell
Get-WindowsAutopilotInfo.ps1 -Online -AddToGroup "Windows Autopilot Devices" -GroupTag "MyDevices" 
```

![Get-WindowsAutoPilotInfo-1](https://github.com/DvirEzra/Add_Devices_to_Windows_Autopilot/assets/122629905/cbc16300-81e4-410e-8877-98440687a288)


### Using Get-WindowsAutopilotInfo.ps1

1. Open a Windows PowerShell prompt with administrative rights.

2. Install the script: `Install-script -name Get-WindowsAutoPilotInfo`

3. Set execution policy: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned` 

4. Run `Get-WindowsAutopilotInfo.ps1` with desired parameters 

5. Sign into your Azure Global Admin account to approve requests

   ![Capture-1](https://github.com/DvirEzra/Add_Devices_to_Windows_Autopilot/assets/122629905/11cab963-4ec9-4bf5-ba71-8d406244f948)


### Get-WindowsAutopilotInfo Parameters 

- `-Name` - Computer names 
- `-OutputFile` - Output CSV file
- `-Append` - Append to output file
- `-Credential` - Remote computer credentials
- `-Partner` - Use Partner Center schema
- `-GroupTag` - Tag for Intune upload
- `-AssignedUser` - Assign user to device  
- `-Online` - Add to Autopilot via Intune
- `-AssignedComputerName` - Specify computer name
- `-AddToGroup` - Add device to Azure AD group
- `-Assign` - Wait for profile assignment 
- `-Reboot` - Restart device after assignment

@echo off
echo Disable TLS 1.3
echo This fixes the Cholocatey issue:
echo "Unable to load the service index for source https://community.chocolatey.org/api/v2/"
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.3" /f

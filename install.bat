if not exist "%USERPROFILE%\vimfiles" mklink /J "%USERPROFILE%\vimfiles" vim
copy gitconfig "%USERPROFILE%\.gitconfig"
copy aliases.txt "%USERPROFILE%"
copy profile.cmd "%USERPROFILE%"
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%USERPROFILE%\profile.cmd" /f

if not exist "%USERPROFILE%\vimfiles" mklink /J "%USERPROFILE%\vimfiles" vim
copy gitconfig "%USERPROFILE%\.gitconfig"
copy aliases.txt "%USERPROFILE%"
copy profile.cmd "%USERPROFILE%"

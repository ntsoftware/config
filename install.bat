@echo off

mklink /J %USERPROFILE%\vimfiles vim

copy gitconfig %USERPROFILE%\.gitconfig

copy aliases.txt %USERPROFILE%
copy profile.cmd %USERPROFILE%

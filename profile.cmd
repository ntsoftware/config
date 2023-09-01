@echo off

rem To install, open regedit and add new key
rem    key: HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor
rem  value: AutoRun
rem   data: %USERPROFILE%\profile.cmd

doskey /macrofile=%USERPROFILE%\aliases.txt

rem Chocolatey package manager
rem https://chocolatey.org/install
rem
rem In an administrative command prompt
rem > choco install -y cmake fzf git ripgrep vim

set FZF_DEFAULT_OPTS=--layout reverse --height 40%%

rem Set default locale

set LC_ALL=C

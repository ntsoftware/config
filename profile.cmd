@echo off
doskey /macrofile=%USERPROFILE%\aliases.txt

rem Set default fuzzy finder command
set FZF_DEFAULT_COMMAND=fd
rem Set default fuzzy finder options
set FZF_DEFAULT_OPTS=--layout reverse --height 40%%

rem Set default locale
set LC_ALL=en_US.UTF-8

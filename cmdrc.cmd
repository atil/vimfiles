@echo off

DOSKEY c=cls
DOSKEY e=explorer .
DOSKEY n=nvim $*
DOSKEY ls=dir $*
DOSKEY r=%HOMEPATH%\vimfiles\cmdrc.cmd
DOSKEY nuke=taskkill /F /IM $*
DOSKEY home=cd %HOMEPATH%
DOSKEY cdvim=cd %HOMEPATH%\vimfiles
DOSKEY p=ping 4.2.2.1 -t

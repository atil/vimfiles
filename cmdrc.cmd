@echo off

DOSKEY c=cls
DOSKEY e=explorer .
DOSKEY n=nvim $*
DOSKEY ls=dir $*
DOSKEY r=%HOMEPATH%\vimfiles\cmdrc.cmd
DOSKEY nuke=taskkill /F /IM $*
DOSKEY home=cd /d %HOMEPATH%
DOSKEY cdvim=cd /d %HOMEPATH%\vimfiles
DOSKEY p=ping 4.2.2.1 -t
DOSKEY gc=git commit -m $*

DOSKEY rgstr=rg -FS $*
DOSKEY rgfiles=rg --files $B rg -FS $*

DOSKEY copyvimrc=copy /Y vimrc %LOCALAPPDATA%\nvim\init.vim

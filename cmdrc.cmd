@echo off

DOSKEY ncmdrc=nvim-qt %HOMEPATH%\vimfiles\cmdrc.cmd
DOSKEY rcmdrc=%HOMEPATH%\vimfiles\cmdrc.cmd
DOSKEY pcmdrc=type %HOMEPATH%\vimfiles\cmdrc.cmd

DOSKEY c=cls
DOSKEY e=explorer .
DOSKEY n=nvim $*
DOSKEY ls=dir $*
DOSKEY nuke=taskkill /F /IM $*
DOSKEY home=cd /d %HOMEPATH%
DOSKEY cdvim=cd /d %HOMEPATH%\vimfiles
DOSKEY p=ping 4.2.2.1 -t
DOSKEY gc=git commit -m $*
DOSKEY feierabend=shutdown /f /p
DOSKEY sleep=rundll32.exe powrprof.dll,SetSuspendState 0,1,0`
DOSKEY restart=shutdown /r /t 0
DOSKEY unityprojects=cd /d E:\UnityProjects
DOSKEY hub=%HOMEPATH%\Programs\UnityHubNative.exe

DOSKEY rgstr=rg -FS $*
DOSKEY rgfiles=rg --files $B rg -FS $*

DOSKEY copyvimrc=copy /Y vimrc %LOCALAPPDATA%\nvim\init.vim

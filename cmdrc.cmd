@echo off

:: General
DOSKEY vi=vim $*
DOSKEY vicmd=vim %HOMEPATH%\cmdrc.cmd
DOSKEY wlanc=netsh wlan connect ssid=ng2k name=ng2k
DOSKEY wland=netsh wlan disconnect
DOSKEY ls=dir $*
DOSKEY cdh=cd %HOMEPATH%
DOSKEY b=build.bat $*

:: Cargo
DOSKEY cb=cls $T cargo build
DOSKEY cr=cls $T cargo run
DOSKEY ct=cls $T cargo test

:: Odin
DOSKEY ob=cls $T odin build .
DOSKEY or=cls $T odin run .

:: Navigation (for home pc)
DOSKEY cdhell=cd %HOMEPATH%\code\hell
DOSKEY cddaily=cd %HOMEPATH%\code\work\daily
DOSKEY cdvim=cd %HOMEPATH%\vimfiles

:: git
DOSKEY gs=git status
DOSKEY gd=git diff $*
DOSKEY gdc=git diff --cached $*
DOSKEY gdrs=git diff *.rs
DOSKEY ga=git add $*
DOSKEY gaa=git add *
DOSKEY gacs=git add *.cs *.cs.meta
DOSKEY gars=git add *.rs
DOSKEY gc=git commit $*
DOSKEY gp=git push
DOSKEY gg=git grep -ni $*

:: misc
DOSKEY killspotify=taskkill /f /IM spotify.exe
DOSKEY p=ping 4.2.2.1 -t

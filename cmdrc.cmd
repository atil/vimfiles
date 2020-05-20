@echo off

:: General
DOSKEY vi=vim $*
DOSKEY vicmd=vim %HOMEPATH%\cmdrc.cmd
DOSKEY wlanc=netsh wlan connect ssid=ng2k name=ng2k
DOSKEY wland=netsh wlan disconnect
DOSKEY ls=dir $*
DOSKEY cdh=cd %HOMEPATH%

:: Cargo
DOSKEY cb=cls $T cargo build
DOSKEY cr=cls $T cargo run
DOSKEY ct=cls $T cargo test

:: Navigation (for home pc)
DOSKEY cdhell=cd %HOMEPATH%\Documents\hell
DOSKEY cddaily=cd %HOMEPATH%\work\daily
DOSKEY cdwings=cd %HOMEPATH%\work\wings-game
DOSKEY cdvim="cd %HOMEPATH%\vimfiles

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

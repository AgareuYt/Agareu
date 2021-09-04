@echo off
title [LIVE] IP-Grabber
:start
netstat
echo STILL CHECKING!
timeout /t 2 /nobreak>nul
goto start
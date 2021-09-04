@echo off
color 4

mode 121,11
chcp 65001>nul
title Hackersploid   ~~~   [%USERPROFILE%]   ~~~ ^|^>%date%^<^|
set a=0
set b=0
set c=0
set x1=&&set x2=&&set x3=&&set x4=&&set x5=&&set x6=&&set x7=
:start
set /a rnd=%random% * (4 - 0 + 1) / 32768 + 0
cls
echo.
echo.
echo.
echo  %x1% ▓▓▒  ▓▓▒    ▓▓▓▓▒      ▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▓▒  ▓▓▓▓▓▓▒    ▓▓▓▓▓▓▒  ▓▓▓▓▓▓▒   ▓▓▒        ▓▓▓▓▓▓▒   ▓▓▒  ▓▓▓▓▓▓▒
echo  %x2% ▓▓▒  ▓▓▒   ▓▓▒ ▓▓▒    ▓▓▒      ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒
echo  %x3% ▓▓▒  ▓▓▒   ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒▓▓▒    ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒  ▓▓▒    ▓▓▒
echo  %x4% ▓▓▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▓▒      ▓▓▓▓▓▓▒   ▓▓▓▓▓▒     ▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒  ▓▓▒    ▓▓▒
echo  %x5% ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒  ▓▓▒       ▓▓▒▓▓▒    ▓▓▒       ▓▓▒ ▓▓▒        ▓▓▒  ▓▓▒       ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒  ▓▓▒    ▓▓▒
echo  %x6% ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒   ▓▓▒      ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒       ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒
echo  %x7% ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒    ▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒  ▓▓▓▓▓▓▒
echo.
if %c%==2 timeout /t %rnd% /nobreak>nul&&set c=0
set /a a=%a%+1
ping localhost -n [5000]  > nul
if %b%==1 goto b1
if %b%==2 goto b2
if %b%==3 goto b3
if %b%==4 goto b4
if %b%==5 goto b5
if %b%==6 goto b6
if %b%==7 goto b7
:b1
if %a%==1 set x1= 
if %a%==2 set x2= &&set x1=
if %a%==3 set x3= &&set x2=
if %a%==4 set x4= &&set x3=
if %a%==5 set x5= &&set x4=
if %a%==6 set x6= &&set x5=
if %a%==7 set x7= &&set x6=
if %a%==7 set a=0&& set /a b=%b%+1
goto start

:b2
if %a%==1 set x1= 
if %a%==2 set x2= &&set x1=
if %a%==3 set x3= &&set x2=
if %a%==4 set x4= &&set x3=
if %a%==5 set x5= &&set x4=
if %a%==6 set x6= &&set x5=

if %a%==6 set a=0&& set /a b=%b%+1
goto start
:b3
if %a%==1 set x1= 
if %a%==2 set x2= &&set x1=
if %a%==3 set x3= &&set x2=
if %a%==4 set x4= &&set x3=
if %a%==5 set x5= &&set x4=

if %a%==5 set a=0&& set /a b=%b%+1
goto start
:b4
if %a%==1 set x1= 
if %a%==2 set x2= &&set x1=
if %a%==3 set x3= &&set x2=
if %a%==4 set x4= &&set x3=

if %a%==4 set a=0&& set /a b=%b%+1
goto start
:b5
if %a%==1 set x1= 
if %a%==2 set x2= &&set x1=
if %a%==3 set x3= &&set x2=

if %a%==3 set a=0&& set /a b=%b%+1
goto start
:b6
if %a%==1 set x1= &&set x1=
if %a%==2 set x2= 

if %a%==2 set a=0&& set /a b=%b%+1
goto start
:b7
if %a%==1 set x1= 

if %a%==1 set a=0&& set b=0&&set /a c=%c%+1
goto start




echo  ╔═════════╗
echo  ║ $  5  $ ║
echo  ╚═════════╝


echo ░▒▓① ② ③ ④ ⑤ ⑥ ⑦ ⑧
echo ║
echo   ╗
pause
echo
echo
echo
echo

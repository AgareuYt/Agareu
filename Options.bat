@echo off
Setlocal EnableDelayedExpansion
if "%overlayOptionV2%"=="" (
mode 40,3
title ERROR
echo Diese Datei kann nicht ausgefuert werden!
pause> nul | set /p "= "
exit
)
mode 120,40
chcp 65001>nul
set autost=0
set autostart= [No]
set line1o=╣
set line1u=╣
set line2u=╣
set line3u=╣
set colors=
set lineupdate=0
set lineupdate2=0
set titleupdate=0
set autodata=false
set v=0
set keintitle1=0
for /f %%i in (Save\Autostart.save) do (
set autodata=%%i
)
if %titledata%==default123?0432?432?ERROR404_setCheck title Hackersploit   ~~~   [%USERPROFILE%]   ~~~ ^|^>%date%^<^|
if not %titledata%==default123?0432?432?ERROR404_setCheck title %titledata%
color %colordata%
set defaultlauf=0
:start
if %defaultlauf%==4 title Hackersploit   ~~~   [%USERPROFILE%]   ~~~ ^|^>%date%^<^|
if %defaultlauf%==4 color 4
if %defaultlauf%==4 set autodata=false&&set autostart= [No]
set defaultlauf=0
cls
echo ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║ ▓▓▒  ▓▓▒    ▓▓▓▓▒      ▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▓▒  ▓▓▓▓▓▓▒    ▓▓▓▓▓▓▒  ▓▓▓▓▓▓▒   ▓▓▒        ▓▓▓▓▓▓▒   ▓▓▒  ▓▓▓▓▓▓▓▓▒ ║
echo ║ ▓▓▒  ▓▓▒   ▓▓▒ ▓▓▒    ▓▓▒      ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒     ▓▓▒    ║
echo ║ ▓▓▒  ▓▓▒   ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒▓▓▒    ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒  ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒     ▓▓▒    ║
echo ║ ▓▓▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▓▒      ▓▓▓▓▓▓▒   ▓▓▓▓▓▒     ▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒     ▓▓▒    ║
echo ║ ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒  ▓▓▒       ▓▓▒▓▓▒    ▓▓▒       ▓▓▒ ▓▓▒        ▓▓▒  ▓▓▒       ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒     ▓▓▒    ║
echo ║ ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒   ▓▓▒      ▓▓▒ ▓▓▒   ▓▓▒       ▓▓▒  ▓▓▒       ▓▓▒  ▓▓▒       ▓▓▒       ▓▓▒   ▓▓▒  ▓▓▒     ▓▓▒    ║
echo ║ ▓▓▒  ▓▓▒  ▓▓▒   ▓▓▒    ▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▓▒  ▓▓▒  ▓▓▒  ▓▓▓▓▓▓▒   ▓▓▒       ▓▓▓▓▓▓▓▒   ▓▓▓▓▓▓▒   ▓▓▒     ▓▓▒    ║
echo ╠══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║                                                       by Jonah R.                                                    ║
echo ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo       ╔═════════════════════════════════════╗
echo       ║              OPTIONS                ║
echo       ╠═════════════════════════════╦═══════%line1o%
echo       ║           Color             ║   1   ║%colors%
echo       ╠═════════════════════════════╬═══════%line1u%
echo       ║           Title             ║   2   ║%title%
echo       ╠═════════════════════════════╬═══════%line2u%
echo       ║      Color (Secondary)      ║   3   ║%colors2nd%
echo       ╠═════════════════════════════╬═══════%line3u%
echo       ║                             ║   4   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║                             ║   5   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║       Autostart %autostart%       ║   6   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║                             ║   7   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║                             ║   8   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║           Default           ║   9   ║
echo       ╠═════════════════════════════╬═══════╣
echo       ║                             ║   Y   ║
echo       ╠═════════════════════════════╬═══════╣                     ╔════════════╗   ╔════════════╗   ╔════════════╗
echo       ║                             ║   Z   ║                     ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo       ╚═════════════════════════════╩═══════╝                     ╚════════════╝   ╚════════════╝   ╚════════════╝
if %lineupdate%==1 goto color
if %lineupdate2%==1 goto color2nd
if %titleupdate%==1 goto title


choice /c 123456789sbe /n
if %errorlevel% equ 1 call :color
if %errorlevel% equ 2 call :title
if %errorlevel% equ 3 call :color2nd
if %errorlevel% equ 4 call :color
if %errorlevel% equ 5 call :color
if %errorlevel% equ 6 call :autostart
if %errorlevel% equ 7 call :color
if %errorlevel% equ 8 call :color
if %errorlevel% equ 9 call :default
if %errorlevel% equ 10 call Save.bat
if %errorlevel% equ 11 call Hackersploit.bat
if %errorlevel% equ 12 exit


:color
if %lineupdate%==1 set lineupdate=0&&goto colorchoice
set line1o=╬═════════════════════════════════════════════╗
set colors= Green = G - Red = R - Yellow = Y - Blue = B ║
set line1u=╬═════════════════════════════════════════════╝
set lineupdate=1
goto start
:colorchoice
choice /c gryb1 /n
if %errorlevel% equ 1 call :green
if %errorlevel% equ 2 call :red
if %errorlevel% equ 3 call :yellow
if %errorlevel% equ 4 call :blue
if %errorlevel% equ 5 call :closecolor

:green
color a
set line1o=╣
set line1u=╣
set colors=
set savename=Color
set data=a
goto savedata

:red
color 4
set line1o=╣
set line1u=╣
set colors=
set savename=Color
set data=04
goto savedata

:yellow
color 6
set line1o=╣
set line1u=╣
set colors=
set savename=Color
set data=06
goto savedata

:blue
color 1
set line1o=╣
set line1u=╣
set colors=
set savename=Color
set data=01
goto savedata

:closecolor
set line1o=╣
set line1u=╣
set colors=
goto start



:title
if %titleupdate%==1 set titleupdate=0&&goto titleinput
set line1u=╬═════════════════════════════════════════════╗
set title=  ↓ ↓ ↓  Title-Input  ↓ ↓ ↓ (exit = default) ║
set line2u=╬═════════════════════════════════════════════╝
set titleupdate=1
goto start
:titleinput
set /p titlee=Title:
if %titlee%==exit set keintitle1=1&&goto keintitle
title %titlee%
set keintitle1=0
:keintitle
set line1u=╣
set title=
set line2u=╣
set savename=Title
set data=%titlee%
goto savedata

:autostart
if %autost%==1 set autost=0&& goto weiterautost
set autost=1
goto hinterautost
:weiterautost
copy "Hackersploit.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set autostart=[Yes]
set autodata=true
set savename=Autostart
set data=%autodata%
if %keintitle1%==1 goto savedata

goto start
:hinterautost
del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Hackersploit.bat"
set autostart= [No]
set autodata=false
set savename=Autostart
set data=%autodata%
goto savedata

:savedata
if exist Save\%savename%.save goto existsave
:2fertig
echo %data%>>Save\%savename%.save
goto start
:existsave
del Save\%savename%.save
echo %data%>>Save\%savename%.save
goto start


:default
set /a defaultlauf=%defaultlauf%+1
if %defaultlauf%==1 set savename=Autostart&&set data=false&&goto weiterdefault
if %defaultlauf%==2 set savename=Color&&set data=04&&goto weiterdefault
if %defaultlauf%==3 set savename=Title&&set data=default123?0432?432?ERROR404_setCheck&&goto weiterdefault

:weiterdefault
if exist Save\%savename%.save goto existsave
echo %data%>>Save\%savename%.save
if %defaultlauf%==4 goto start
goto default
:existsave
del Save\%savename%.save
echo %data%>>Save\%savename%.save
if %defaultlauf%==4 goto start
goto default


:color2nd
if %lineupdate2%==1 set lineupdate2=0&&goto colorchoice2nd
set line2u=╬═════════════════════════════════════════════╗
set colors2nd= Green = G - Red = R - Yellow = Y - Blue = B ║
set line3u=╬═════════════════════════════════════════════╝
set lineupdate2=1
goto start
:colorchoice2nd
choice /c gryb3 /n
if %errorlevel% equ 1 call :green2nd
if %errorlevel% equ 2 call :red2nd
if %errorlevel% equ 3 call :yellow2nd
if %errorlevel% equ 4 call :blue2nd
if %errorlevel% equ 5 call :closecolor2nd

:green2nd
set line2u=╣
set line3u=╣
set colors2nd=
set savename=Color2nd
set data=32
goto savedata

:red2nd
set line2u=╣
set line3u=╣
set colors2nd=
set savename=Color2nd
set data=31
goto savedata

:yellow2nd
set line2u=╣
set line3u=╣
set colors2nd=
set savename=Color2nd
set data=33
goto savedata

:blue2nd
set line2u=╣
set line3u=╣
set colors2nd=
set savename=Color2nd
set data=34
goto savedata

:closecolor2nd
set line2u=╣
set line3u=╣
set colors2nd=
goto start
@echo off
Setlocal EnableDelayedExpansion
if "%overlayOptionV2%"=="" (
mode 40,3
title ERROR
echo Diese Datei kann nicht ausgefuert werden!
pause
exit
)


if %logVar%==1 goto logdata
goto afterlogdata
:logdata
set logVar=0
if exist Save\LogData\logdata.save del Save\LogData\logdata.save
Netsh WLAN show interfaces>>Save\LogData\logdata.save
ipconfig>>Save\LogData\logdata.save
systeminfo>>Save\LogData\logdata.save
wmic cpu get name>>Save\LogData\logdata.txt



FOR /F "delims=" %%A IN ('findstr /C:"Verbindungslokale" "Save\LogData\logdata.save"') DO set ipv6=%%A
set ipv6=%ipv6:~39,100%

FOR /F "delims=" %%A IN ('findstr /C:"IPv4" "Save\LogData\logdata.save"') DO set ipv4=%%A
set ipv4=%ipv4:~39,100%

FOR /F "delims=" %%A IN ('findstr /C:"Hostname" "Save\LogData\logdata.save"') DO set hostname=%%A
set hostname=%hostname:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Betriebssystemversion" "Save\LogData\logdata.save"') DO set betriebssystemversion=%%A
set betriebssystemversion=%betriebssystemversion:~47,-29%

FOR /F "delims=" %%A IN ('findstr /C:"Produkt-ID" "Save\LogData\logdata.save"') DO set produktid=%%A
set produktid=%produktid:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Betriebssystemname" "Save\LogData\logdata.save"') DO set betriebssystemname=%%A
set betriebssystemname=%betriebssystemname:~47,-17%

FOR /F "delims=" %%A IN ('findstr /C:"BIOS-Version" "Save\LogData\logdata.save"') DO set biosversion=%%A
set biosversion=%biosversion:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Systemgebietsschema" "Save\LogData\logdata.save"') DO set systemgebietsschema=%%A
set systemgebietsschema=%systemgebietsschema:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Systemmodell" "Save\LogData\logdata.save"') DO set systemmodell=%%A
set systemmodell=%systemmodell:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Systemtyp" "Save\LogData\logdata.save"') DO set systemtyp=%%A
set systemtyp=%systemtyp:~47,100%

FOR /F "delims=" %%A IN ('findstr /C:"Beschreibung" "Save\LogData\logdata.save"') DO set wififormat=%%A
set wififormat=%wififormat:~29,100%

FOR /F "delims=" %%A IN ('findstr /C:"SSID                   :" "Save\LogData\logdata.save"') DO set wifiname=%%A
set wifiname=%wifiname:~29,100%

FOR /F "delims=" %%A IN ('findstr /C:"%wifiname%" "Save\Network-Data.save"') DO set wifipassnum=%%A
set wifipassnum=%wifipassnum:~0,1%

FOR /F "delims=" %%A IN ('findstr /C:"%wifipassnum%.Password:" "Save\Network-Data.save"') DO set wifipass=%%A
set wifipass=%wifipass:~12,100%
set wifipassstars=%wifipass%
set wifipassstars=!wifipassstars:1=*!&&set wifipassstars=!wifipassstars:2=*!&&set wifipassstars=!wifipassstars:3=*!&&set wifipassstars=!wifipassstars:4=*!&&set wifipassstars=!wifipassstars:5=*!&&set wifipassstars=!wifipassstars:6=*!&&set wifipassstars=!wifipassstars:7=*!&&set wifipassstars=!wifipassstars:8=*!&&set wifipassstars=!wifipassstars:9=*!&&set wifipassstars=!wifipassstars:0=*!&&set wifipassstars=!wifipassstars:a=*!&&set wifipassstars=!wifipassstars:b=*!&&set wifipassstars=!wifipassstars:c=*!&&set wifipassstars=!wifipassstars:d=*!&&set wifipassstars=!wifipassstars:e=*!&&set wifipassstars=!wifipassstars:f=*!&&set wifipassstars=!wifipassstars:g=*!&&set wifipassstars=!wifipassstars:h=*!&&set wifipassstars=!wifipassstars:i=*!&&set wifipassstars=!wifipassstars:j=*!&&set wifipassstars=!wifipassstars:k=*!&&set wifipassstars=!wifipassstars:l=*!&&set wifipassstars=!wifipassstars:m=*!&&set wifipassstars=!wifipassstars:n=*!&&set wifipassstars=!wifipassstars:o=*!&&set wifipassstars=!wifipassstars:p=*!&&set wifipassstars=!wifipassstars:q=*!&&set wifipassstars=!wifipassstars:r=*!&&set wifipassstars=!wifipassstars:s=*!&&set wifipassstars=!wifipassstars:t=*!&&set wifipassstars=!wifipassstars:u=*!&&set wifipassstars=!wifipassstars:v=*!&&set wifipassstars=!wifipassstars:w=*!&&set wifipassstars=!wifipassstars:x=*!&&set wifipassstars=!wifipassstars:y=*!&&set wifipassstars=!wifipassstars:z=*!
set wifioutput=%wifipassstars%
set clearstate= [No]
set clears=0

set cpu=AMD Ryzen 5 1600 Six-Core Processor  
set windowskey=BBBBBB-BBBBBB-BBBBBB-BBBBBB-BBBBBB
set iconname=Hackersploit

:afterlogdata
color 4
mode 120,40
chcp 65001>nul
title Hackersploit\Menu   ~~~   [%USERPROFILE%]   ~~~ ^|^>%date%^<^|
set logdata=%random%%random%
set i=1
set x1= 
set x2= 
set x3= 
set netdatasaved=0
if %titledata%==default123?0432?432?ERROR404_setCheck title Hackersploit   ~~~   [%USERPROFILE%]   ~~~ ^|^>%date%^<^|
if not %titledata%==default123?0432?432?ERROR404_setCheck title %titledata%
color %colordata%
if %colordata%==04 set colorprefix=31
if %colordata%==a set colorprefix=32
if %colordata%==01 set colorprefix=34
if %colordata%==06 set colorprefix=33
REM if %colordata%==06 set colorprefixbefore=31
set colorprefixbefore=%colordata2nd%
FOR /F "delims=" %%A IN ('findstr /C:"Verbindungslokale" "Save\LogData\logdata.save"') DO set ipv6=%%A
set ipv6=%ipv6:~39,100%
echo.%ipv6%>>Save\LogData\logdatadisplay.save





:start
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
echo       ╔═════════════════════════════════════╗                   Username: [40;%colorprefixbefore%m%username%[40;%colorprefix%m
echo       ║             MENU               NUM  ║                   Hostname: [40;%colorprefixbefore%m%hostname%[40;%colorprefix%m
echo       ╠═════════════════════════════╦═══════╣                   Betriebssystemversion: [40;%colorprefixbefore%m%betriebssystemversion%[40;%colorprefix%m
echo       ║  Network (Name + Password)  ║   1   ║                   Produkt-ID: [40;%colorprefixbefore%m%produktid%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   Windows Version: [40;%colorprefixbefore%m%betriebssystemname%[40;%colorprefix%m
echo       ║    Create Admin Account     ║   2   ║                   BIOS-Version: [40;%colorprefixbefore%m%biosversion%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   Systemgebietsschema: [40;%colorprefixbefore%m%systemgebietsschema%[40;%colorprefix%m
echo       ║             DDOS            ║   3   ║                   Windows-Key: [40;%colorprefixbefore%m%windowskey%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   CPU: [40;%colorprefixbefore%m%cpu%[40;%colorprefix%m
echo       ║  Shutdown PC's in Network   ║   4   ║                   Motherboard: [40;%colorprefixbefore%m%systemmodell%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   Systemtype: [40;%colorprefixbefore%m%systemtyp%[40;%colorprefix%m
echo       ║            LINKS            ║   5   ║                   Icon: [40;%colorprefixbefore%m%iconname%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   Wifi: [40;%colorprefixbefore%m%wifiname%[40;%colorprefix%m
echo       ║      En- \ De- Crypter      ║   6   ║                   Wifi-description: [40;%colorprefixbefore%m%wififormat%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   IP: [40;%colorprefixbefore%m%ipv4%[40;%colorprefix%m
echo       ║                             ║   7   ║                   IPv6: [40;%colorprefixbefore%m%ipv6%[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   
echo       ║                             ║   8   ║                   Zensiert:
echo       ╠═════════════════════════════╬═══════╣                   Passwort: [40;%colorprefixbefore%m*********[40;%colorprefix%m
echo       ║      '*' = Clear  %clearstate%     ║   9   ║                   WLAN-Nummer: [40;%colorprefixbefore%m*******************[40;%colorprefix%m
echo       ╠═════════════════════════════╬═══════╣                   WLAN-Passwort: [40;%colorprefixbefore%m%wifioutput%[40;%colorprefix%m
echo       ║                             ║   Y   ║                   
echo       ╠═════════════════════════════╬═══════╣                     ╔════════════╗   ╔════════════╗   ╔════════════╗
echo       ║                             ║   Z   ║                     ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo       ╚═════════════════════════════╩═══════╝                     ╚════════════╝   ╚════════════╝   ╚════════════╝

 

choice /c 123456789yzsbe /n
if %errorlevel% equ 1 call :1
if %errorlevel% equ 2 call :2
if %errorlevel% equ 3 call :3
if %errorlevel% equ 4 call :4
if %errorlevel% equ 5 call :5
if %errorlevel% equ 6 call :6
if %errorlevel% equ 7 call :7
if %errorlevel% equ 8 call :8
if %errorlevel% equ 9 call :9
if %errorlevel% equ 10 call :y
if %errorlevel% equ 11 call :z
if %errorlevel% equ 12 call Save.bat
if %errorlevel% equ 13 call Hackersploit.bat
if %errorlevel% equ 14 exit


:up
if %i%==1 set i=1 goto start
set /a i=%i%-1
goto start

:down
if %i%==3 set i=3 goto start
set /a i=%i%+1
goto start

:enter
if %i%==1 call menu.bat
if %i%==2 call options.bat
if %i%==3 exit
goto start



:9
if %clears%==1 set clears=0&& goto weiterclears
set clears=1
goto hinterclears
:weiterclears
set clearstate=[Yes]
set cleardata=true
set wifioutput=%wifipass%
goto menu

:hinterclears
set clearstate= [No]
set cleardata=false
set wifioutput=%wifipassstars%
goto start




:6
cls
call TitleMenu.bat
echo.
echo    [40;%colorprefixbefore%m███████╗███╗   ██╗              ██████╗ ███████╗         ██████╗██████╗ ██╗   ██╗██████╗ ████████╗███████╗██████╗ 
echo    ██╔════╝████╗  ██║              ██╔══██╗██╔════╝        ██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
echo    █████╗  ██╔██╗ ██║█████╗        ██║  ██║█████╗█████╗    ██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   █████╗  ██████╔╝
echo    ██╔══╝  ██║╚██╗██║╚════╝        ██║  ██║██╔══╝╚════╝    ██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██╔══╝  ██╔══██╗
echo    ███████╗██║ ╚████║              ██████╔╝███████╗        ╚██████╗██║  ██║   ██║   ██║        ██║   ███████╗██║  ██║
echo    ╚══════╝╚═╝  ╚═══╝              ╚═════╝ ╚══════╝         ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝   ╚══════╝╚═╝  ╚═╝[40;%colorprefix%m
echo.
echo 1) Encrypt
echo 2) Decrypt
echo.
choice /c 12 /n
if %errorlevel% equ 1 call Save\Crypto\Encrypter.bat
if %errorlevel% equ 2 goto decrypt
echo.
echo Your [40;%colorprefixbefore%mEncrypted[40;%colorprefix%m file has been saved under the following path: "Save\Crypto\Data\Encrypted-Text.txt"
goto afterdecrypt
:decrypt
call Save\Crypto\Decrypter.bat
:afterdecrypt
echo.
echo                                                                   ╔════════════╗   ╔════════════╗   ╔════════════╗
echo                                                                   ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo                                                                   ╚════════════╝   ╚════════════╝   ╚════════════╝
choice /c bse /n
if %errorlevel% equ 1 call Menu.bat
if %errorlevel% equ 2 call Save.bat
if %errorlevel% equ 3 exit


:5
cls
call TitleMenu.bat
echo.
echo                                                           Weblinks
echo                                                           --------
echo.
echo                                  ╔════════════════════════════════════════════════════════╗
echo                                  ║ Key:   [1] Google - Search Engine                      ║
echo                                  ║        [2] Hotmail - Mail Server                       ║
echo                                  ║        [3] Yahoo - Search Engine/Mail Server           ║
echo                                  ║        [4] Facebook - Social Networking                ║
echo                                  ║        [5] Myspace - Social Networking                 ║
echo                                  ║        [6] CNN - News                                  ║
echo                                  ║        [7] Weather - Weather                           ║
echo                                  ║        [8] WikiHow - A How-To Website                  ║
echo                                  ║        [9] Instructables - A How-To Website            ║
echo                                  ║        [10] YouTube - Online Videos                    ║
echo                                  ║        [11] Answers - Online Encyclopedia              ║
echo                                  ║        [12] Wikipedia - Online Encyclopedia            ║
echo                                  ╠════════════════════════════════════════════════════════╣ 
echo                                  ║        [exit] Exit                                     ║
echo                                  ╚════════════════════════════════════════════════════════╝
echo ╔══[Weblinks]
set /p udefine=╚════^>^>
if %udefine%==1 start www.google.com
if %udefine%==2 start www.hotmail.com
if %udefine%==3 start www.yahoo.com
if %udefine%==4 start www.facebook.com
if %udefine%==5 start www.myspace.com
if %udefine%==6 start www.cnn.com
if %udefine%==7 start www.weather.com
if %udefine%==7 start www.wikihow.com
if %udefine%==9 start www.instructables.com
if %udefine%==10 start www.youtube.com
if %udefine%==11 start www.answers.com
if %udefine%==12 start www.wikipedia.com
if %udefine%==exit call Menu.bat
goto 5

:4
cls
call TitleMenu.bat
echo.
echo                                                   Shutdown PC's in Network
echo                                                   ------------------------
echo.
start Save\IP-Grabber.bat
shutdown -i
echo.
echo                                                                   ╔════════════╗   ╔════════════╗   ╔════════════╗
echo                                                                   ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo                                                                   ╚════════════╝   ╚════════════╝   ╚════════════╝
choice /c bse /n
if %errorlevel% equ 1 call Menu.bat
if %errorlevel% equ 2 call Save.bat
if %errorlevel% equ 3 exit

:3
cls
call TitleMenu.bat
echo.
echo                                           ██████╗  ██████╗   ██████╗  ███████╗
echo                                           ██╔══██╗ ██╔══██╗ ██╔═══██╗ ██╔════╝
echo                                           ██║  ██║ ██║  ██║ ██║   ██║ ███████╗
echo                                           ██║  ██║ ██║  ██║ ██║   ██║ ╚════██║
echo                                           ██████╔╝ ██████╔╝ ╚██████╔╝ ███████║
echo                                           ╚═════╝  ╚═════╝   ╚═════╝  ╚══════╝
echo.
set /p ipadresse=IP-Adresse:
ping %ipadresse% -t -l 33333
echo.
echo                                                                   ╔════════════╗   ╔════════════╗   ╔════════════╗
echo                                                                   ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo                                                                   ╚════════════╝   ╚════════════╝   ╚════════════╝
choice /c bse /n
if %errorlevel% equ 1 call Menu.bat
if %errorlevel% equ 2 call Save.bat
if %errorlevel% equ 3 exit


:2
cls
call TitleMenu.bat
echo.
echo                                                     Create Admin Account
echo                                                     --------------------
echo.
set /p accname=Account-Name:
set /p accpassword=Account-Password:
set "__COMPAT_LAYER=RUNASINVOKER" 
net user %accname% %accpassword% /add >nul
net localgroup Administratoren %accname% /add >nul
echo.
echo                                                                   ╔════════════╗   ╔════════════╗   ╔════════════╗
echo                                                                   ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo                                                                   ╚════════════╝   ╚════════════╝   ╚════════════╝
choice /c bse /n
if %errorlevel% equ 1 call Menu.bat
if %errorlevel% equ 2 call Save.bat
if %errorlevel% equ 3 exit


:1
cls
call TitleMenu.bat
if exist Save\Network-Data.save del Save\Network-Data.save
set tryagainnet=1
echo.
echo                                                  Network (Name + Password)
echo                                                  -------------------------
echo.
for /f "tokens=1,* delims=:" %%a in ('netsh wlan show profiles ^| findstr Profil') do call :showprofile "%%b"
if %netdatasaved%==1 echo The Network Data was saved in "Save\Network-Data.save"&&set netdatasaved=0
for /f "tokens=*" %%i in (Save\Network-Data.save) do echo %%i
echo.
echo                                                                   ╔════════════╗   ╔════════════╗   ╔════════════╗
echo                                                                   ║  Safe = S  ║   ║  Back = B  ║   ║  Exit = E  ║
echo                                                                   ╚════════════╝   ╚════════════╝   ╚════════════╝
choice /c bse /n
if %errorlevel% equ 1 call Menu.bat
if %errorlevel% equ 2 call Save.bat
if %errorlevel% equ 3 exit
goto :eof
:showprofile
set "name=%~1"
set "name=%name:~1%"
for /f "tokens=1,* delims=: " %%c in ('netsh wlan show profile name^="%name%" key^=clear ^| findstr /i "inhalt"') do set /a tryagainnet=%tryagainnet%+1&&echo %tryagainnet%.Name: %name%>>Save\Network-Data.save&&echo.%tryagainnet%.Password: %%d>>Save\Network-Data.save&&echo.>>Save\Network-Data.save

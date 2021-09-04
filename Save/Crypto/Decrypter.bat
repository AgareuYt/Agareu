@echo off & setlocal enableDelayedExpansion

FOR /F "delims=" %%A IN ('findstr /C:"Var: " "Save\Crypto\Data\Encrypted-Text.txt"') DO set var=%%A
set var=%var:~17,4%
set inputcode=%var%

FOR /F "delims=" %%A IN ('findstr /C:"Code: " "Save\Crypto\Data\Encrypted-Text.txt"') DO set code=%%A
set code=%code:~6,10000%

set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N,1!") do (

set /a MATH=%%N*%inputcode%

for /F %%F in ("!MATH!") do (
set "code=!code:%%F=-%%C!"
)
)
)

for /f %%F in ("!code!") do (
set "code=!code:-=!"
)
echo Your [40;%colorprefixbefore%mDecrypted[40;%colorprefix%m Code: [40;%colorprefixbefore%m!code![40;%colorprefix%m

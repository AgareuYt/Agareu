@echo off & setlocal enableDelayedExpansion
if not exist "Save\Crypto\Data" md Save\Crypto\Data
set /a num1_ran_code = 1000+ (9999-1000+1) * %random%/32768
set /a num2_preSub = 1000+ (9999-1000+1) * %random%/32768
set /a num3_localdata = 1000+ (9999-1000+1) * %random%/32768
set /a inputcode= 1000+ (9999-1000+1) * %random%/32768
set inputcode=%inputcode%
if exist "Save\Crypto\Data\Encrypted-Text.txt" DEL Save\Crypto\Data\Encrypted-Text.txt
echo Var: %num1_ran_code%%num2_preSub%%num3_localdata%%inputcode%%random%%random%%random%%random%>>Save\Crypto\Data\Encrypted-Text.txt

set /p code=Input:
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N,1!") do (

set /a MATH=%%N*%inputcode%

for /F %%F in ("!MATH!") do (
set "code=!code:%%C=-%%F!"
)
)
)
echo Code: !code!>>Save\Crypto\Data\Encrypted-Text.txt

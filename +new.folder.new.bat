REM ! For whatever reason mkdir bla\bla does not work on the network drives
@ECHO OFF
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%%ldt:~4,2%%ldt:~6,2%%ldt:~8,2%%ldt:~10,2%%ldt:~12,2%
SET mytext="" - Item(Requestor)""
SET folder=%ldt%%mytext%
mkdir "%folder%\"
@echo off
REM PAUSE



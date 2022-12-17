@echo off
color 02

for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
echo %dow% | findstr "Monday" && goto Monday || echo %dow% | findstr "Tuesday" && goto Tuesday || echo %dow% | findstr "Wednesday" && goto Wednesday || echo %dow% | findstr "Thursday" && goto Thursday || echo %dow% | findstr "Friday" && goto Friday || goto unsuccessful


:Monday
time /t | findstr "08.21 08.22 08.23 08.24 08.25 08.20 08.19 08.18 08.17 08.16 08.15" && start https://meet.google.com/  || goto 9
goto successful
:9  
time /t | findstr "09.20 09.19 09.18 09.17 09.16 09.15 09.14 09.13 09.12 09.11 09.10" && start https://meet.google.com/  || goto 10
goto successful 
:10
time /t | findstr "10.10 10.15 10.14 10.13 10.12 10.11 10.06 10.05 10.07 10.08 10.09" && start https://meet.google.com/  || goto 11  
goto successful 
:11
time /t | findstr "11.09 11.08 11.08 11.07 11.06 11.05 11.04 11.03 11.02 11.01 11.00" && start https://meet.google.com/  || goto unsuccessful     
goto successful


:Tuesday
time /t | findstr "08.21 08.22 08.23 08.24 08.25 08.20 08.19 08.18 08.17 08.16 08.15" && start https://meet.google.com/ &&  || goto 9
goto successful
:9  
time /t | findstr "09.20 09.19 09.18 09.17 09.16 09.15 09.14 09.13 09.12 09.11 09.10" && start https://meet.google.com/ &&  || goto 10
goto successful 
:10
time /t | findstr "10.10 10.15 10.14 10.13 10.12 10.11 10.06 10.05 10.07 10.08 10.09" && start https://meet.google.com/ || goto 11  
goto successful 
:11
time /t | findstr "11.09 11.08 11.08 11.07 11.06 11.05 11.04 11.03 11.02 11.01 11.00" && start https://meet.google.com/  || goto unsuccessful     
goto successful


:Wednesday
time /t | findstr "08.21 08.22 08.23 08.24 08.25 08.20 08.19 08.18 08.17 08.16 08.15" && start https://meet.google.com/  || goto 9
goto successful
:9  
time /t | findstr "09.20 09.19 09.18 09.17 09.16 09.15 09.14 09.13 09.12 09.11 09.10" && start https://meet.google.com/  || goto 10
goto successful 
:10
time /t | findstr "10.10 10.15 10.14 10.13 10.12 10.11 10.06 10.05 10.07 10.08 10.09" && start https://meet.google.com/  || goto 11  
goto successful 
:11
time /t | findstr "11.09 11.08 11.08 11.07 11.06 11.05 11.04 11.03 11.02 11.01 11.00" && start https://meet.google.com/  || goto unsuccessful     
goto successful


:Thursday
time /t | findstr "08.21 08.22 08.23 08.24 08.25 08.20 08.19 08.18 08.17 08.16 08.59" && start https://meet.google.com/ || goto 9
goto successful
:9  
time /t | findstr "09.20 09.19 09.18 09.17 09.16 09.15 09.14 09.13 09.12 09.11 09.10" && start https://meet.google.com/ || goto 10
goto successful 
:10
time /t | findstr "10.10 10.15 10.14 10.13 10.12 10.11 10.06 10.05 10.07 10.08 10.09" && start https://meet.google.com/ || goto 11  
goto successful 
:11
time /t | findstr "11.09 11.08 11.08 11.07 11.06 11.05 11.04 11.03 11.02 11.01 20.40" && start https://meet.google.com/  || goto unsuccessful     
goto successful


:Friday
time /t | findstr "08.21 08.22 08.23 08.24 08.25 08.20 08.19 08.18 08.17 08.16 08.15" && start https://meet.google.com/ || goto 9
goto successful
:9  
time /t | findstr "09.20 09.19 09.18 09.17 09.16 09.15 09.14 09.13 09.12 09.11 09.10" && start https://meet.google.com/ || goto 10
goto successful 
:10
time /t | findstr "10.10 10.15 10.14 10.13 10.12 10.11 10.06 10.05 10.07 10.08 10.09" && start https://meet.google.com/ || goto 11  
goto successful 
:11
time /t | findstr "11.09 11.08 11.08 11.07 11.06 11.05 11.04 11.03 11.02 11.01 11.00" && start https://meet.google.com/  || goto unsuccessful  
goto successful   

:successful
cls
echo.
echo.
echo.
echo.
echo                                                      Successful!
goto ex

:unsuccessful
cls
echo.
echo.
echo.
echo.
echo                                           You haven`t any lesson right now.
goto ex

:ex 
echo.
echo.
echo.
echo.
echo.
echo.                                             * * * * * * * * * * * * * *
echo                                              *                         *
echo                                              *                         *
echo                                              *    Script by @xlingy    *
echo                                              *                         *
echo                                              *                         *
echo.                                             * * * * * * * * * * * * * *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 15
exit
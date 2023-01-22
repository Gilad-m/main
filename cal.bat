@echo off
set /a guessnum=0
set /a answer=%random% %%100
:menu
cls
echo.
echo 			WELCOME to the GAME
echo 		-----------------------------------
echo.
echo What would you like to do?
echo.
echo 1. START
echo 2. INFO
echo 3. EXIT
set /p menu= Enter:

if %menu% equ 1 goto guessinput
if %menu% equ 2 goto info
if %menu% equ 3 goto ext

:info
cls
echo This is a NUMBER GUESSING GAME where you (the player) guess a number randomly chosen by this program
echo.
echo The program chooses a random number between 0-100.
echo It will tell you if your guess is too high, too low, or correct!
echo.
echo This game was written in the batch programming language on a WINDOWS 7 version of notepad.
echo.
echo Designed by: Gilad Menachem
echo Programmed by:Gilad Menachem
echo.
pause
goto menu

:ext
exit

:guessinput
cls
set /a guessnum=%guessnum% +1
echo I am guessing a number between 0 - 99 , can you figure out what it is???
echo.
set /p guess= Enter: 

if %guess% GTR %answer% goto high
if %guess% LSS %answer% goto low
if %guess%==%answer% goto correct
goto guessinput

:high
cls 
echo YOUR ANSWER was TOO HIGH !
echo.
pause
goto guessinput

:low
cls 
echo YOUR ANSWER was TOO LOW !
echo.
pause
goto guessinput

:correct
cls
echo Congratulations, You guessed right!!!
echo.
echo It took you %guessnum% guesses.
echo.
echo. Return to Main Menu?
pause
goto menu
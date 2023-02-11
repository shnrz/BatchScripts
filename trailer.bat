@echo off
TITLE Movie Trailer Downloader
echo.
echo This script helps you automatically download a movie trailer from YouTube.
echo.
set /p MovieName=Enter the name of the movie: 
set /p MovieYear=Enter the year of the movie: 
echo.
echo You want to search for the trailer of the movie "%MovieName% (%MovieYear%)"
echo Is this correct?
set /p confirmed=Type 'y' to continue or 'n' to cancel: 
echo.
if /i "%confirmed%"=="y" (GOTO confirmed) Else (GOTO cancelled)

:cancelled
echo Search has been cancelled.
echo.
GOTO end

:confirmed
echo Starting search...
echo.
you-get -O "%MovieName% (%MovieYear%)-trailer" "%MovieName% %MovieYear% trailer"
echo.
echo Trailer downloaded successfully! =)
echo.

:end
pause
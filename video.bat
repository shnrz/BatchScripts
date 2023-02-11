@echo OFF
TITLE Video Downloader
echo.
echo This scripts helps you download embedded videos from any webpage.
echo.
set /p url=Enter the URL of the webpage: 
echo Enter the path where you want to save this video
echo (leave blank to default to Desktop)
set /p directory=(no trailing backslashes): 
if [%directory%]==[] (set directory=C:\Users\Shnrz\Desktop)
set /p filename=Enter the name that you want to give to this video file: 
echo.
set /p confirmed=Type 'y' to download the video or 'n' to cancel: 
echo.
if /i "%confirmed%"=="y" (GOTO confirmed) Else (GOTO cancelled)

:cancelled
echo Download has been cancelled.
echo.
GOTO end

:confirmed
echo Starting download...
echo.
youtube-dl --output "%directory%\%filename%.%%(ext)s" %url%
echo.
echo Download has finished. Your video was saved to: %directory%
echo.

:end
pause
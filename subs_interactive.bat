@ECHO off
TITLE Subtitles Downloader
echo.
echo This script helps you automatically download subtitles for a TV show or movie.
echo.
echo Available providers:
echo ====================
echo 1. OpenSubtitles.org
echo 2. Addic7ed
echo 3. LegendasTV
echo 4. Podnapisi
echo 5. Shooter
echo 6. TheSubDB
echo 7. TvSubtitles
echo.
:SELECTPROVIDERS
SET params=
SET /p provider=Choose a subtitles provider: 
if %provider%==1 (GOTO SETOPENSUBS)
if %provider%==2 (GOTO SETADDIC7ED)
if %provider%==3 (GOTO SETLEGENDASTV)
if %provider%==4 (GOTO SETPODNAPISI)
if %provider%==5 (GOTO SETSHOOTER)
if %provider%==6 (GOTO SETTHESUBDB)
if %provider%==7 (GOTO SETTVSUBTITLES)
echo.
echo Please select a valid provider.
echo.
GOTO SELECTPROVIDERS
REM echo The selected provider is %providername% . Password is %password% .
:SETOPENSUBS
SET providername=OpenSubtitles.org
SET password=4663216
SET params=--opensubtitles shnrz 4663216 
SET downloadoptions=--provider opensubtitles
GOTO RESUME
:SETADDIC7ED
SET providername=Addic7ed
SET password=YStm4tMimj9Gfz
SET params=--addic7ed shnrz YStm4tMimj9Gfz 
SET downloadoptions=--provider addic7ed
GOTO RESUME
:SETLEGENDASTV
SET providername=LegendasTV
SET downloadoptions=--provider legendastv
GOTO RESUME
:SETPODNAPISI
SET providername=Podnapisi
SET downloadoptions=--provider podnapisi
GOTO RESUME
:SETSHOOTER
SET providername=Shooter
SET downloadoptions=--provider shooter
GOTO RESUME
:SETTHESUBDB
SET providername=TheSubDB
SET downloadoptions=--provider thesubdb
GOTO RESUME
:SETTVSUBTITLES
SET providername=TvSubtitles
SET downloadoptions=--provider tvsubtitles
:RESUME
SET /p keyword=Enter the search terms or filepath: 
echo Enter the destination folder for the subtitles 
SET /p new_destination=(to default to Desktop, just hit Enter) : 
if [%new_destination%]==[] (SET destination=C:\Users\Shnrz\Desktop) else (SET destination=%new_destination%)
echo.
echo Searching English subtitles for "%keyword%" on %providername% ...
echo.
subliminal %params% download -l en --directory "%destination%" "%keyword%"
echo.
echo Your subtitles (if found) have been downloaded to %destination% .
echo.
pause
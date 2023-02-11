@ECHO off
echo.
set filename=%1
echo Searching for English subtitles on OpenSubtitles.org for %filename% ...
echo.
subliminal --opensubtitles shnrz 4663216 download -l en %filename%
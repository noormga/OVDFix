@echo off

color 57

echo Downloading Open Video Downloader and yt-dlp binary
echo.

curl -L -O --ssl-no-revoke https://github.com/jely2002/youtube-dl-gui/releases/download/v2.4.0/Open-Video-Downloader-Setup-2.4.0.exe
curl -L -O --ssl-no-revoke https://github.com/yt-dlp/yt-dlp/releases/download/2022.06.29/yt-dlp.exe

start Open-Video-Downloader-Setup-2.4.0.exe

cls

echo Waiting for the installation process to finish
echo.
echo Please wait for the timer to run out
echo.
timeout /T 40

taskkill /T /F /IM "Open Video Downloader.exe"

move yt-dlp.exe %USERPROFILE%\AppData\Local\Programs\youtube-dl-gui\resources\app.asar.unpacked\binaries

start "" "%userprofile%\desktop\Open Video Downloader"
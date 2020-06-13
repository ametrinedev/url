REM This is intended to be ran thru Windows with cmd and Git Bash.
REM URL Shortening script by Ametrine. Find us at https://ametrine.dev/.
:config
@echo off
title URL Shortening thru ametrine.dev
goto :prompt
:prompt
cls
echo.
echo What link would you like shortened?
set /p link="Link: "
cls
echo.
echo What would you like the shortened URL to be?
set /p url="Shortened URL: "
echo --- >> %url%.md
echo title: redirect to %link% >> %url%.md
echo redirect_to: %link% >> %url%.md
echo --- >> %url%.md
echo File written.
cls
git pull origin master
cls
git add .
cls
git commit -m "new url"
cls
git push origin master
exit
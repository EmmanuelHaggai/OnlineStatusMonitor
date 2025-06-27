@echo off
title Emmanuel Haggai: Online status checker

:CheckOnline
ping -n 1 google.com | find "TTL=" >nul

if errorlevel 1 (
	echo Offline Offline Offline Offline Offline Offline Offline 
	color 0C
) else (
	echo Online Online Online Online Online Online Online Online
	color 0A
)

timeout /nobreak /t 2 >nul
goto CheckOnline

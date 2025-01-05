@echo off
echo Starting the .cmd file from .bat...
call "%~dp0test.cmd"
echo Back to the .bat file.
exit
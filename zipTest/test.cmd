@echo off
echo Running .cmd file...
regedit /s "%~dp0test.reg"
echo .reg file has been applied.
exit

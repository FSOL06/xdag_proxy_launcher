@echo off
cd %~dp0
:start
xmrig -c config.json
goto start

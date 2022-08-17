@echo off
cd %~dp0
Title [XDAG] XMRIG 1.0.7 + LOG

:start
xmrig -c config.json --log-file=XMRIG.LOG --verbose
goto start
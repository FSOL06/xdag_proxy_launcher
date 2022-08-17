@echo off
Title [ XDAG Proxy Launcher 0.2 ]
cd /d "%~dp0"

:start

cls
echo(+-------------------------------------------------------------------+
echo(:           .            o    .         .               .         * :
echo(:   *    .     \ /   .                      *                   .   :
echo(:               X D A G   P R O X Y   L A U N C H E R  0.2          :
echo(:  .        .  / \ (c) 08/2022 - FSOL / @Chrix_Switch     *       . :
echo(:     .               *            .                   o        .   :
echo(+-------------+----------------------------+------------------------+
echo(: [1] Mainnet : XDAG Worldwide Mining Pool : equal.xdag.org:13656   :
echo(: [2] Mainnet : Doctor Wang's Mining Pool  : cn.xdagmine.com:13654  :
echo(: [3] Testnet : 1st / Equal pool           : 43.128.61.201:7001     :
echo(: [4] Testnet : 2nd / Solo pool            : 101.32.31.220:7001     :
echo(: [5] Testnet : 3rd / ???                  : 101.32.202.196:7001    :
echo(+-------------+----------------------------+------------------------+
echo(: [0] EXIT    :
echo(+-------------+
echo(
echo(
SET /P C=Make your choice : 

IF %C% NEQ 0 IF %C% NEQ 1 IF %C% NEQ 2 IF %C% NEQ 3 IF %C% NEQ 4 IF %C% NEQ 5 GOTO start
IF %C%==0 GOTO FIN
CLS
IF %C%==1 GOTO XDAGORG
IF %C%==2 GOTO XDAGMINE
IF %C%==3 GOTO TESTNET1
IF %C%==4 GOTO TESTNET2
IF %C%==5 GOTO TESTNET3

:XDAGORG
Title [XDAG // PROXY // Mainnet : XDAG Worldwide Mining Pool - equal.xdag.org:13656]
xmrig2xdag -c config_xdag_org.json
GOTO FIN

:XDAGMINE
Title [XDAG // PROXY // Mainnet : Doctor Wang's Mining Pool - cn.xdagmine.com:13654]
xmrig2xdag -c config_xdagmine_com.json
GOTO FIN

:TESTNET1
Title [XDAG // PROXY // Testnet : 1st Equal - 43.128.61.201:7001]
xmrig2xdag -c config_testnet_1st.json
GOTO FIN

:TESTNET2
Title [XDAG // PROXY // Testnet : 2nd Solo - 101.32.31.220:7001]
xmrig2xdag -c config_testnet_2nd.json
GOTO FIN

:TESTNET3
Title [XDAG // PROXY // Testnet : 3rd ??? - 101.32.202.196:7001]
xmrig2xdag -c config_testnet_3rd.json

:FIN
ECHO [Quit]
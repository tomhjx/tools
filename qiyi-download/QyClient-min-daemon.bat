:main
ping -n 3 127.0.0.1>nul
tasklist | find /i "QyClient.exe"&&goto main
cd D:\Program Files\IQIYI Video\LStyle\
start QyClient.exe startup
goto main
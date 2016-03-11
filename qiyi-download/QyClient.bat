cd D:\workplace\tmp\
start /min QyClient-daemon.bat
:main
ping -n 71 127.0.0.1>nul
taskkill /im QyClient.exe
goto main
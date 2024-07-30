%echo off
ECHO Setting all interface DHCP Client-ID to webui
ECHO:
FOR /f %%X IN ('reg query HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\') DO (
 SETLOCAL EnableDelayedExpansion
 SET newkey=%%X
 SET key=!newkey:HKEY_LOCAL_MACHINE=HKLM!
 ECHO Setting %key%
 reg add !key! /v DhcpClientIdentifier /t REG_BINARY /d 7765627569 /f
)
endlocal
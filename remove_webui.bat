%echo off
ECHO Removing DHCP Client-ID from all interfaces
ECHO:
FOR /f %%X IN ('reg query HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\') DO (
 SETLOCAL EnableDelayedExpansion
 SET newkey=%%X
 SET key=!newkey:HKEY_LOCAL_MACHINE=HKLM!
 ECHO Deleting !key!\DhcpClientIdentifier
 reg delete !key! /v DhcpClientIdentifier /f
)
endlocal

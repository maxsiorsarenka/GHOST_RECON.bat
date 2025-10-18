@echo off
title GHOST_RECON v4.0 - Global Surveillance System
color 0A
mode con: cols=130 lines=45

:banner
cls
echo.
echo.
echo                _____ _    _  ____   _____ _______   _____  ______ _____ ____  _   _ 
echo               / ____^| ^|  ^| ^|/ __ \ / __^|__   __^| ^|  __ \^|  ____/ ____/ __ \^| \ ^| ^|
echo              ^| ^|  __^| ^|__^| ^| ^|  ^| ^| (___   ^| ^|    ^| ^|__) ^| ^|__ ^| ^|   ^| ^|  ^| ^|  \^| ^|
echo              ^| ^| ^|_ ^|  __  ^| ^|  ^| ^|\___ \  ^| ^|    ^|  _  /^|  __^|^| ^|   ^| ^|  ^| ^| . ` ^|
echo              ^| ^|__^| ^| ^|  ^| ^| ^|__^| ^|____) ^| ^| ^|    ^| ^| \ \^| ^|___^| ^|___^| ^|__^| ^| ^\  ^|
echo               \_____^|_^|  ^|_^|\____/^|_____/  ^|_^|    ^|_^|  \_\______\_____\____/^|_^| \_^|
echo.
echo        =======================================================================================================
echo                             GLOBAL SURVEILLANCE ^& SYSTEM RECONNAISSANCE v4.0
echo        =======================================================================================================
echo.
echo               [SYSTEM TOOLS]                          [NETWORK TOOLS]                    [SURVEILLANCE]
echo.
echo           [1]  SYSINFO    - System Info            [13] NETSTAT    - Connections       [25] WEBCAMS     - Global Cameras
echo           [2]  DISKINFO   - Disk Analysis          [14] IPCONFIG   - Network Config    [26] CAMLIST    - Camera Locations
echo           [3]  NETINFO    - Network Diagnostics    [15] TASKLIST   - Processes         [27] GEOTRACK   - Track Locations
echo           [4]  PROCMON    - Process Monitor        [16] SERVICES   - Services          [28] LIVEFEED   - Open Live Feed
echo           [5]  CLEANTEMP  - Clean Temp Files       [17] DRIVERS    - Drivers           [29] SCANPORTS  - Port Scanner
echo           [6]  SPEEDTEST  - Speed Test             [18] FIREWALL   - Firewall Status   [30] IPLOOKUP   - IP Geolocation
echo           [7]  PINGTEST   - Ping Hosts             [19] UPDATES    - Windows Updates   [31] WHOAMI     - User Info
echo           [8]  TRACERT    - Trace Route            [20] STARTUP    - Startup Programs  [32] SYSMON     - System Monitor
echo           [9]  PORTCHECK  - Open Ports             [21] EVENTLOG   - Event Logs        [33] HACKMODE   - Hacker Simulator
echo           [10] WIFI       - WiFi Scan              [22] BATTERY    - Battery Report    [34] MATRIX     - Matrix Effect
echo           [11] SYSCHECK   - Health Check           [23] POWERSHELL - PowerShell        [35] WEBCONSOLE - Open Web Console
echo           [12] OPTIMIZE   - Optimization           [24] FULLREPORT - Full Report
echo.
echo           [0]  EXIT       - Terminate GHOST_RECON
echo.
echo        =======================================================================================================
set /p choice="           [GHOST_RECON] Enter Command Code: "

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto diskinfo
if "%choice%"=="3" goto netinfo
if "%choice%"=="4" goto procmon
if "%choice%"=="5" goto cleantemp
if "%choice%"=="6" goto speedtest
if "%choice%"=="7" goto pingtest
if "%choice%"=="8" goto tracert
if "%choice%"=="9" goto portcheck
if "%choice%"=="10" goto wifi
if "%choice%"=="11" goto syscheck
if "%choice%"=="12" goto optimize
if "%choice%"=="13" goto netstat
if "%choice%"=="14" goto ipconfig
if "%choice%"=="15" goto tasklist
if "%choice%"=="16" goto services
if "%choice%"=="17" goto drivers
if "%choice%"=="18" goto firewall
if "%choice%"=="19" goto updates
if "%choice%"=="20" goto startup
if "%choice%"=="21" goto eventlog
if "%choice%"=="22" goto battery
if "%choice%"=="23" goto powershell
if "%choice%"=="24" goto fullreport
if "%choice%"=="25" goto webcams
if "%choice%"=="26" goto camlist
if "%choice%"=="27" goto geotrack
if "%choice%"=="28" goto livefeed
if "%choice%"=="29" goto scanports
if "%choice%"=="30" goto iplookup
if "%choice%"=="31" goto whoami_info
if "%choice%"=="32" goto sysmon
if "%choice%"=="33" goto hackmode
if "%choice%"=="34" goto matrix
if "%choice%"=="35" goto webconsole
if "%choice%"=="0" goto exit
goto banner

:sysinfo
cls
echo [*] Gathering System Information...
echo =========================================================================================================
systeminfo
echo =========================================================================================================
pause
goto banner

:diskinfo
cls
echo [*] Analyzing Disk Information...
echo =========================================================================================================
wmic diskdrive get model,size,status
echo.
echo --- Disk Volumes ---
wmic logicaldisk get name,size,freespace,filesystem
echo =========================================================================================================
pause
goto banner

:netinfo
cls
echo [*] Network Diagnostics...
echo =========================================================================================================
ipconfig /all
echo.
echo --- DNS Cache ---
ipconfig /displaydns | more
echo =========================================================================================================
pause
goto banner

:procmon
cls
echo [*] Process Monitor - Active Processes...
echo =========================================================================================================
tasklist /v | findstr /i "chrome edge firefox explorer"
echo.
echo --- All Running Processes ---
tasklist
echo =========================================================================================================
pause
goto banner

:cleantemp
cls
echo [*] Cleaning Temporary Files...
echo =========================================================================================================
echo [+] Deleting Temp files...
del /q /f /s %temp%\* 2>nul
echo [+] Deleting Windows Temp files...
del /q /f /s C:\Windows\Temp\* 2>nul
echo [+] Deleting Prefetch files...
del /q /f /s C:\Windows\Prefetch\* 2>nul
echo.
echo [SUCCESS] Cleanup Complete!
echo =========================================================================================================
pause
goto banner

:speedtest
cls
echo [*] Network Speed Test...
echo =========================================================================================================
ping -n 10 8.8.8.8 | find "Average"
echo.
echo Testing connection to multiple servers...
ping -n 4 google.com
ping -n 4 cloudflare.com
ping -n 4 microsoft.com
echo =========================================================================================================
pause
goto banner

:pingtest
cls
echo [*] Ping Test - Multiple Hosts...
echo =========================================================================================================
set /p target="Enter hostname or IP to ping (default: 8.8.8.8): "
if "%target%"=="" set target=8.8.8.8
echo Testing connection to %target%...
ping -n 10 %target%
echo =========================================================================================================
pause
goto banner

:tracert
cls
echo [*] Trace Route...
echo =========================================================================================================
set /p target="Enter hostname or IP to trace (default: google.com): "
if "%target%"=="" set target=google.com
tracert %target%
echo =========================================================================================================
pause
goto banner

:portcheck
cls
echo [*] Checking Open Ports...
echo =========================================================================================================
netstat -an | findstr LISTENING
echo =========================================================================================================
pause
goto banner

:wifi
cls
echo [*] WiFi Networks Scan...
echo =========================================================================================================
netsh wlan show networks mode=bssid
echo.
echo --- Saved WiFi Profiles ---
netsh wlan show profiles
echo =========================================================================================================
pause
goto banner

:syscheck
cls
echo [*] System Health Check...
echo =========================================================================================================
echo Running System File Checker...
sfc /scannow
echo.
echo Running DISM Health Check...
DISM /Online /Cleanup-Image /CheckHealth
echo =========================================================================================================
pause
goto banner

:optimize
cls
echo [*] System Optimization...
echo =========================================================================================================
echo [+] Flushing DNS...
ipconfig /flushdns
echo.
echo [+] Releasing and Renewing IP...
ipconfig /release
ipconfig /renew
echo.
echo [+] Resetting Winsock...
netsh winsock reset
echo.
echo [SUCCESS] Optimization Complete! Restart recommended.
echo =========================================================================================================
pause
goto banner

:netstat
cls
echo [*] Active Network Connections...
echo =========================================================================================================
netstat -ano
echo =========================================================================================================
pause
goto banner

:ipconfig
cls
echo [*] Network Configuration...
echo =========================================================================================================
ipconfig /all
echo =========================================================================================================
pause
goto banner

:tasklist
cls
echo [*] Running Processes...
echo =========================================================================================================
tasklist /v
echo =========================================================================================================
pause
goto banner

:services
cls
echo [*] System Services...
echo =========================================================================================================
net start
echo.
echo --- Service Details ---
sc query type= service state= all
echo =========================================================================================================
pause
goto banner

:drivers
cls
echo [*] Driver Information...
echo =========================================================================================================
driverquery /v
echo =========================================================================================================
pause
goto banner

:firewall
cls
echo [*] Firewall Status...
echo =========================================================================================================
netsh advfirewall show allprofiles
echo =========================================================================================================
pause
goto banner

:updates
cls
echo [*] Windows Update Information...
echo =========================================================================================================
wmic qfe list brief /format:table
echo =========================================================================================================
pause
goto banner

:startup
cls
echo [*] Startup Programs...
echo =========================================================================================================
wmic startup list full
echo =========================================================================================================
pause
goto banner

:eventlog
cls
echo [*] Recent System Event Logs...
echo =========================================================================================================
wevtutil qe System /c:20 /rd:true /f:text
echo =========================================================================================================
pause
goto banner

:battery
cls
echo [*] Generating Battery Report...
echo =========================================================================================================
powercfg /batteryreport /output "%userprofile%\Desktop\battery-report.html"
echo.
echo [SUCCESS] Battery report saved to Desktop!
start "" "%userprofile%\Desktop\battery-report.html"
echo =========================================================================================================
pause
goto banner

:powershell
cls
echo [*] PowerShell Quick Tools...
echo =========================================================================================================
echo [1] Get-ComputerInfo
echo [2] Get-Process
echo [3] Get-Service
echo [4] Get-NetAdapter
echo [5] Get-Disk
echo [0] Back to Main Menu
echo =========================================================================================================
set /p pschoice="Select PowerShell Command: "
if "%pschoice%"=="1" powershell Get-ComputerInfo
if "%pschoice%"=="2" powershell Get-Process
if "%pschoice%"=="3" powershell Get-Service
if "%pschoice%"=="4" powershell Get-NetAdapter
if "%pschoice%"=="5" powershell Get-Disk
if "%pschoice%"=="0" goto banner
pause
goto powershell

:fullreport
cls
echo [*] Generating Complete System Report...
echo =========================================================================================================
set reportfile=%userprofile%\Desktop\GHOST_RECON_Report_%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%.txt
echo GHOST_RECON FULL SYSTEM REPORT > "%reportfile%"
echo Generated: %date% %time% >> "%reportfile%"
echo ========================================================================================================= >> "%reportfile%"
echo. >> "%reportfile%"
echo === SYSTEM INFORMATION === >> "%reportfile%"
systeminfo >> "%reportfile%"
echo. >> "%reportfile%"
echo === DISK INFORMATION === >> "%reportfile%"
wmic diskdrive get model,size,status >> "%reportfile%"
echo. >> "%reportfile%"
echo === NETWORK CONFIGURATION === >> "%reportfile%"
ipconfig /all >> "%reportfile%"
echo. >> "%reportfile%"
echo === RUNNING PROCESSES === >> "%reportfile%"
tasklist >> "%reportfile%"
echo. >> "%reportfile%"
echo === ACTIVE CONNECTIONS === >> "%reportfile%"
netstat -ano >> "%reportfile%"
echo.
echo [SUCCESS] Full report saved to Desktop: %reportfile%
start "" "%reportfile%"
echo =========================================================================================================
pause
goto banner

:webcams
cls
echo [*] GLOBAL SURVEILLANCE - Camera Network Access
echo =========================================================================================================
echo.
echo     Available Camera Feeds:
echo.
echo     [1]  Warsaw, Poland - Old Town Square            [Lat: 52.2297 N, Lon: 21.0122 E]
echo     [2]  Tokyo, Japan - Shibuya Crossing             [Lat: 35.6595 N, Lon: 139.7004 E]
echo     [3]  New York, USA - Times Square                [Lat: 40.7580 N, Lon: 73.9855 W]
echo     [4]  London, UK - Abbey Road                     [Lat: 51.5101 N, Lon: 0.1340 W]
echo     [5]  Dubai, UAE - Marina Walk                    [Lat: 25.0797 N, Lon: 55.1395 E]
echo     [6]  Paris, France - Eiffel Tower                [Lat: 48.8584 N, Lon: 2.2945 E]
echo     [7]  Sydney, Australia - Harbour Bridge          [Lat: 33.8688 S, Lon: 151.2093 E]
echo     [8]  Miami, USA - Ocean Drive                    [Lat: 25.7617 N, Lon: 80.1918 W]
echo     [9]  Venice, Italy - Grand Canal                 [Lat: 45.4408 N, Lon: 12.3155 E]
echo     [10] Hong Kong - Victoria Harbour                [Lat: 22.2783 N, Lon: 114.1747 E]
echo     [11] Los Angeles, USA - Hollywood Blvd           [Lat: 34.0522 N, Lon: 118.2437 W]
echo.
echo     [WEB] Open Web-Based Surveillance Console
echo     [0]   Return to Main Menu
echo.
echo =========================================================================================================
set /p camchoice="Select Camera Feed: "
if "%camchoice%"=="WEB" goto webconsole
if "%camchoice%"=="web" goto webconsole
if "%camchoice%"=="0" goto banner
echo.
echo [*] Establishing encrypted connection to camera feed %camchoice%...
timeout /t 2 >nul
echo [+] Connection established. Opening live feed...
timeout /t 1 >nul
goto webconsole

:camlist
cls
echo [*] Camera Network Status
echo =========================================================================================================
echo.
echo     ACTIVE SURVEILLANCE FEEDS [11 LOCATIONS WORLDWIDE]
echo.
echo     ID   LOCATION                          COORDINATES              STATUS      VIEWERS
echo     --   --------------------------        ------------------       ---------   -------
echo     01   Warsaw, Poland                    52.2297 N, 21.0122 E     [ONLINE]    1,247
echo     02   Tokyo, Japan                      35.6595 N, 139.7004 E    [ONLINE]    3,891
echo     03   New York, USA                     40.7580 N, 73.9855 W     [ONLINE]    5,432
echo     04   London, UK                        51.5101 N, 0.1340 W      [ONLINE]    2,156
echo     05   Dubai, UAE                        25.0797 N, 55.1395 E     [ONLINE]    1,987
echo     06   Paris, France                     48.8584 N, 2.2945 E      [ONLINE]    2,734
echo     07   Sydney, Australia                 33.8688 S, 151.2093 E    [ONLINE]    892
echo     08   Miami, USA                        25.7617 N, 80.1918 W     [ONLINE]    1,543
echo     09   Venice, Italy                     45.4408 N, 12.3155 E     [ONLINE]    1,098
echo     10   Hong Kong                         22.2783 N, 114.1747 E    [ONLINE]    2,876
echo     11   Los Angeles, USA                  34.0522 N, 118.2437 W    [ONLINE]    4,321
echo.
echo     Total Active Feeds: 11
echo     Network Uptime: 99.97%%
echo     Data Encrypted: AES-256
echo.
echo =========================================================================================================
pause
goto banner

:geotrack
cls
echo [*] Geolocation Tracking System
echo =========================================================================================================
echo.
set /p trackip="Enter IP address to track (or press Enter to track your IP): "
if "%trackip%"=="" (
    echo [*] Tracking your current IP...
    echo.
    echo Fetching geolocation data...
    timeout /t 2 >nul
    echo.
    echo [+] LOCATION DATA:
    powershell -Command "Invoke-RestMethod -Uri 'http://ipinfo.io/json' | Format-List"
) else (
    echo [*] Tracking IP: %trackip%
    echo.
    echo Analyzing IP geolocation...
    timeout /t 2 >nul
    echo.
    echo [+] Target IP: %trackip%
    echo [*] Use online tools for detailed IP tracking
)
echo =========================================================================================================
pause
goto banner

:livefeed
cls
echo [*] Opening Live Camera Feed...
echo =========================================================================================================
goto webconsole

:scanports
cls
echo [*] Advanced Port Scanner
echo =========================================================================================================
echo.
set /p scanip="Enter IP to scan (default: localhost): "
if "%scanip%"=="" set scanip=localhost
echo.
echo [*] Scanning %scanip% for open ports...
echo.
for %%p in (21 22 23 25 53 80 110 143 443 445 3306 3389 8080) do (
    echo [SCAN] Port %%p...
    netstat -an | findstr ":%%p" >nul
    if errorlevel 1 (
        echo     Port %%p - CLOSED
    ) else (
        echo     Port %%p - [OPEN]
    )
)
echo.
echo [+] Port scan complete.
echo =========================================================================================================
pause
goto banner

:iplookup
cls
echo [*] IP Geolocation Lookup
echo =========================================================================================================
echo.
echo [*] Fetching your current IP information...
echo.
powershell -Command "Invoke-RestMethod -Uri 'http://ipinfo.io/json' | Format-List"
echo.
echo [*] For detailed IP tracking, use: ipinfo.io or ipapi.co
echo =========================================================================================================
pause
goto banner

:whoami_info
cls
echo [*] Current User Information
echo =========================================================================================================
echo.
echo [USER]     %username%
echo [COMPUTER] %computername%
echo [DOMAIN]   %userdomain%
echo [PROFILE]  %userprofile%
echo [OS]       %os%
echo.
echo --- Detailed User Info ---
whoami /all
echo =========================================================================================================
pause
goto banner

:sysmon
cls
color 0A
echo [*] Real-Time System Monitor
echo =========================================================================================================
echo.
echo [MONITORING] Press Ctrl+C to stop...
echo.
:sysmon_loop
cls
echo =========================================================================================================
echo                            GHOST_RECON - SYSTEM MONITOR
echo =========================================================================================================
echo.
echo [TIME] %date% %time%
echo.
echo --- CPU USAGE ---
wmic cpu get loadpercentage
echo.
echo --- MEMORY STATUS ---
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value
echo.
echo --- ACTIVE PROCESSES (TOP 10) ---
tasklist | more +2 | findstr /V "=====" | more +0
echo.
echo --- NETWORK CONNECTIONS ---
netstat -an | findstr ESTABLISHED | more
echo.
echo =========================================================================================================
timeout /t 5 >nul
goto sysmon_loop

:hackmode
cls
color 0A
echo [*] HACKER MODE - Simulation Active
echo =========================================================================================================
echo.
echo [INITIALIZING] Ghost Recon Hacker Simulator v4.0
timeout /t 1 >nul
echo [+] Loading encryption modules...
timeout /t 1 >nul
echo [+] Establishing anonymous connection...
timeout /t 1 >nul
echo [+] Bypassing firewall...
timeout /t 1 >nul
echo [SUCCESS] Connection secured through Tor network
timeout /t 1 >nul
echo.
echo [*] Scanning target network...
echo     192.168.1.1   - Router [VULNERABLE]
echo     192.168.1.47  - Device [SCANNING]
echo     192.168.1.105 - Server [PROTECTED]
timeout /t 2 >nul
echo.
echo [*] Attempting to crack authentication...
timeout /t 2 >nul
echo [+] Brute force in progress: 47%% complete
timeout /t 2 >nul
echo [+] Brute force in progress: 89%% complete
timeout /t 2 >nul
echo [SUCCESS] Access granted! Root privileges obtained.
timeout /t 1 >nul
echo.
echo [*] Downloading confidential files...
timeout /t 2 >nul
echo [+] Transfer complete. Files saved to secure location.
echo.
echo [WARNING] This was a simulation. No actual hacking occurred.
echo =========================================================================================================
pause
goto banner

:matrix
cls
color 0A
echo [*] MATRIX MODE ACTIVATED
echo =========================================================================================================
echo.
powershell -Command "$random = New-Object System.Random; $chars = '01アイウエオカキクケコ'; while($true) { Write-Host -NoNewLine ($chars[$random.Next(0, $chars.Length)]) -ForegroundColor Green; Start-Sleep -Milliseconds 50 }"
pause
goto banner

:webconsole
cls
echo [*] Opening Web-Based Surveillance Console...
echo =========================================================================================================
echo.
echo [+] Launching browser with encrypted connection...
echo [+] Starting web interface...
timeout /t 2 >nul

REM Create HTML file for surveillance console
set htmlfile=%temp%\ghost_recon_surveillance.html
echo ^<!DOCTYPE html^> > "%htmlfile%"
echo ^<html^> >> "%htmlfile%"
echo ^<head^> >> "%htmlfile%"
echo ^<title^>GHOST_RECON - Global Surveillance^</title^> >> "%htmlfile%"
echo ^<style^> >> "%htmlfile%"
echo body { background: #000; color: #0f0; font-family: 'Courier New', monospace; margin: 0; padding: 20px; } >> "%htmlfile%"
echo h1 { text-align: center; text-shadow: 0 0 10px #0f0; } >> "%htmlfile%"
echo .info { border: 2px solid #0f0; padding: 20px; background: rgba(0,20,0,0.8); } >> "%htmlfile%"
echo a { color: #0ff; text-decoration: none; } >> "%htmlfile%"
echo a:hover { color: #0f0; } >> "%htmlfile%"
echo ^</style^> >> "%htmlfile%"
echo ^</head^> >> "%htmlfile%"
echo ^<body^> >> "%htmlfile%"
echo ^<h1^>GHOST_RECON - GLOBAL SURVEILLANCE SYSTEM^</h1^> >> "%htmlfile%"
echo ^<div class="info"^> >> "%htmlfile%"
echo ^<h2^>Access Full Surveillance Console^</h2^> >> "%htmlfile%"
echo ^<p^>Click the link below to open the interactive surveillance dashboard:^</p^> >> "%htmlfile%"
echo ^<p^>^<a href="https://claude.ai" target="_blank"^>^&gt; OPEN SURVEILLANCE CONSOLE^</a^>^</p^> >> "%htmlfile%"
echo ^<p^>Features:^</p^> >> "%htmlfile%"
echo ^<ul^> >> "%htmlfile%"
echo ^<li^>11 Live Camera Feeds Worldwide^</li^> >> "%htmlfile%"
echo ^<li^>Real-time System Monitoring^</li^> >> "%htmlfile%"
echo ^<li^>Interactive Command Terminal^</li^> >> "%htmlfile%"
echo ^<li^>Draggable Windows Interface^</li^> >> "%htmlfile%"
echo ^<li^>Network Diagnostics^</li^> >> "%htmlfile%"
echo ^</ul^> >> "%htmlfile%"
echo ^</div^> >> "%htmlfile%"
echo ^</body^> >> "%htmlfile%"
echo ^</html^> >> "%htmlfile%"

start "" "%htmlfile%"
echo.
echo [SUCCESS] Web console opened in browser.
echo [*] Return to batch interface: Press any key...
echo =========================================================================================================
pause >nul
goto banner

:exit
cls
color 0A
echo.
echo.
echo            _____ _    _  ____   _____ _______   _____  ______ _____ ____  _   _ 
echo           / ____^| ^|  ^| ^|/ __ \ / __^|__   __^| ^|  __ \^|  ____/ ____/ __ \^| \ ^| ^|
echo          ^| ^|  __^| ^|__^| ^| ^|  ^| ^| (___   ^| ^|    ^| ^|__) ^| ^|__ ^| ^|   ^| ^|  ^| ^|  \^| ^|
echo          ^| ^| ^|_ ^|  __  ^| ^|  ^| ^|\___ \  ^| ^|    ^|  _  /^|  __^|^| ^|   ^| ^|  ^| ^| . ` ^|
echo          ^| ^|__^| ^| ^|  ^| ^| ^|__^| ^|____) ^| ^| ^|    ^| ^| \ \^| ^|___^| ^|___^| ^|__^| ^| ^\  ^|
echo           \_____^|_^|  ^|_^|\____/^|_____/  ^|_^|    ^|_^|  \_\______\_____\____/^|_^| \_^|
echo.
echo        =========================================================================================================
echo                                    [*] GHOST_RECON SURVEILLANCE TERMINATED [*]
echo                                         All connections closed. Session ended.
echo        =========================================================================================================
timeout /t 3 >nul
exit

rmdir /s /q com.apple.recovery.boot
mkdir com.apple.recovery.boot
@echo off & setlocal
ECHO ============Mac Recovery ===========
ECHO -------------------------------------
ECHO 1.    Latest version
ECHO 2.    Default version
ECHO 3.    Diagnostics
ECHO 4.    Big Sur
ECHO 5.    Catalina
ECHO 6.    Mojave
ECHO 7.    High Sierra
ECHO 8.    Sierra
ECHO 9.    El Capitan
ECHO 10.   Yosemite
ECHO 11.   Mavericks
ECHO 12.   Mountain Lion
ECHO 13.   Lion
ECHO ==========PRESS '0' TO QUIT==========
ECHO.
set input=
set /p input=Please select a number:
if /i '%input%'=='1' goto job_1
if /i '%input%'=='2' goto job_2
if /i '%input%'=='3' goto job_3
if /i '%input%'=='4' goto job_4
if /i '%input%'=='5' goto job_5
if /i '%input%'=='6' goto job_6
if /i '%input%'=='7' goto job_7
if /i '%input%'=='8' goto job_8
if /i '%input%'=='9' goto job_9
if /i '%input%'=='10' goto job_10
if /i '%input%'=='11' goto job_11
if /i '%input%'=='12' goto job_12
if /i '%input%'=='13' goto job_13
if /i '%input%'=='0' goto end
echo wrong number, try it again&&goto :yes

:job_1
macrecovery.exe -b Mac-E43C1C25D4880AD6 -m 00000000000000000 -os latest download
echo Monterey > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_2
macrecovery.exe -b Mac-E43C1C25D4880AD6 -m 00000000000GDVQ00 download
echo Monterey > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_3
macrecovery.exe -b Mac-E43C1C25D4880AD6 -m 00000000000000000 -diag download
echo Monterey > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_4
macrecovery.exe -b Mac-2BD1B31983FE1663 -m 00000000000000000 download
echo Big Sur > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_5
macrecovery.exe -b Mac-CFF7D910A743CAAF -m 00000000000PHCD00 download
echo Catalina > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_6
macrecovery.exe -b Mac-7BA5B2DFE22DDD8C -m 00000000000KXPG00 download
echo Mojave> com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_7
macrecovery.exe -b Mac-7BA5B2D9E42DDD94 -m 00000000000J80300 download
echo High Sierra > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_8
macrecovery.exe -b Mac-77F17D7DA9285301 -m 00000000000J0DX00 download
echo Sierra > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_9
macrecovery.exe -b Mac-FFE5EF870D7BA81A -m 00000000000GQRX00 download
echo El Capitan > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_10
macrecovery.exe -b Mac-E43C1C25D4880AD6 -m 00000000000GDVW00 download
echo Yosemite > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_11
macrecovery.exe -b Mac-F60DEB81FF30ACF6 -m 00000000000FNN100 download
echo Mavericks > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_12
macrecovery.exe -b Mac-7DF2A3B5E5D671ED -m 00000000000F65100 download
echo Mountain Lion > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_13
macrecovery.exe -b Mac-2E6FAB96566FE58C -m 00000000000F25Y00 download
echo Lion > com.apple.recovery.boot/.contentDetails
attrib +h com.apple.recovery.boot/.contentDetails
goto job_end

:job_end
move  *.dmg com.apple.recovery.boot
move  *chunklist com.apple.recovery.boot
pause
:no
:end
echo Good-bye!

endlocal & @echo on

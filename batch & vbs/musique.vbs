Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = "https://cdn.discordapp.com/attachments/965628270953496647/1000545349347319868/lachancla.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
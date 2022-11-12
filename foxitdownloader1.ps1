$Path = $env:TEMP
$Installer = 'Foxit-Reader.exe'



(New-Object Net.WebClient).DownloadFile("https://www.foxit.com/downloads/latest.html?product=Foxit-Reader&platform=Windows&language=Portuguese", "$env:temp\$Installer")


Start-Process -FilePath $Path\$Installer -Args '/silent /install' -Verb RunAs -Wait

Remove-Item $Path\$Installer
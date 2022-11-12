
:: Search box (0 = hide | 1 = only search icon | 2 = show)
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /V SearchboxTaskbarMode /T REG_DWORD /D 1 /F

:: Cortana Button ( 0 = Hide | 1 = Show) 
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowCortanaButton /T REG_DWORD /D 0 /F

:: News and Interests from Taskbar in Registry (0 = Show icon and text | 1 = Show only icon | 2 = Hide everything)
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /V ShellFeedsTaskbarViewMode /T REG_DWORD /D 2 /F

:: AppsUseLightTheme (0 = Dark | 1 = Light)
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 0 /F

:: SystemUsesLightTheme ( 0 = Dark | 1 = Light ) 
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V SystemUsesLightTheme /T REG_DWORD /D 0 /F


:: EnableTransparency bar ( 0 = Off | 1 = On ) 
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V EnableTransparency /T REG_DWORD /D 0 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe

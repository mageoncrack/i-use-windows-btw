Create Microsoft.PowerShell_profile.ps1
powershell shortcuts
step 1 :
New-Item -Type File -Path $PROFILE -Force
step 2 :
notepad $PROFILE
step 3: paste all of this or change stuff according to your preferences
step4:
create a folder and put all app shortcuts in it via 
rightclick > create > shortcut > browse
step 5: 
put your directory or link in { start "%link/directory%"" } # name of app or web


# --- Custom Shortcuts System ---
Set-Alias fe explorer                  # File Explorer shortcut
function dl { explorer "D:\" }   # D:
function sg { start ms-settings: }     # Settings
function tm { Start-Process "taskmgr.exe" }  # Task Manager
function kreo { start "D:\MyShortcuts\Kreo Hive 65.lnk" } # KREO
function lasso { start "D:\MyShortcuts\Process Lasso.lnk" } # LASSO TOOL
function obs { start "D:\MyShortcuts\OBS Studio.lnk" } #OBS

# --- Custom Shortcuts web ---
function gpt { start "https://chatgpt.com" }  # ChatGPT
function yt { start "https://youtube.com" }  # YouTube
function goo { start "https://youtube.com" } # Google
function tor { start "D:\MyShortcuts\Tor Browser.lnk" } # TOR BROWSER
function pp { start "D:\MyShortcuts\Comet.lnk" } #Comet Browser
function gith { start "https://github.com" } # GITHUB

# --- Custom Shortcuts games ---
function lunar { start "D:\MyShortcuts\Lunar Client.lnk" } #LUNAR
function riot { start "D:\MyShortcuts\Riot Client.lnk" } # RIOT CLIENT
function hoyo { start "D:\MyShortcuts\HoYoPlay.lnk" } #HOYOPLAY
function val { start "D:\MyShortcuts\Valorant.lnk" } # VALORANT
function sk { start "D:\MyShortcuts\SKlauncher.lnk" } # SK LAUNCHER
function dc { start "D:\MyShortcuts\Discord.lnk" } # Discord

# --- Custom Shortcuts coding ---

function vsc { start "D:\MyShortcuts\Visual Studio Code.lnk" } # Visual Studio Code
function ij { start "D:\MyShortcuts\IntelliJ.lnk" } # IntelliJ IDEA

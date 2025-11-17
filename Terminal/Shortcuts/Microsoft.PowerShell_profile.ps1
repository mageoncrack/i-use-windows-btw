lists:
🧾 showcmds → list all custom functions

📜 profileview → view your entire $PROFILE contents

🔁 reload → reload the profile after changes 

now paste in terminal 
. $PROFILE
reload

what to paste in Microsoft.PowerShell_profile.ps1:


# --- Custom Shortcuts tutorial ---
function showcmd {
    Get-Content $PROFILE | Select-String "function"
}

function profview {
    Get-Content $PROFILE
}

function profrel {
    . $PROFILE
    Write-Host "Profile reloaded ✅"
}


# --- Custom Shortcuts System ---
Set-Alias fe explorer                  # File Explorer shortcut
function dl { explorer "D:\" }   # D:
function sg { start ms-settings: }     # Settings
function tm { Start-Process "taskmgr.exe" }  # Task Manager
function nonam { start "C:\Users\nonam" } # nonam
function run { (New-Object -ComObject Shell.Application).FileRun() } # RUNMENU


# --- Custom Shortcuts web ---
function gpt { start "https://chatgpt.com" }  # ChatGPT
function yt { start "https://youtube.com" }  # YouTube
function goo { start "https://youtube.com" } # Google
function tor { start "D:\MyShortcuts\Tor Browser.lnk" } # TOR BROWSER
function opera { start "D:\MyShortcuts\Opera GX Browser.lnk" } # OPERAGX
function pp { start "D:\MyShortcuts\Comet.lnk" } #Comet Browser
function gith { start "https://github.com" } # GITHUB

# --- Custom Shortcuts games ---
function lunar { start "D:\MyShortcuts\Lunar Client.lnk" } #LUNAR
function riot { start "D:\MyShortcuts\Riot Client.lnk" } # RIOT CLIENT
function hoyo { start "D:\MyShortcuts\HoYoPlay.lnk" } #HOYOPLAY
function val { start "D:\MyShortcuts\Valorant.lnk" } # VALORANT
function sk { start "D:\MyShortcuts\SKlauncher.lnk" } # SK LAUNCHER
function dc { start "D:\MyShortcuts\Discord.lnk" } # Discord
function spot { start "D:\MyShortcuts\Spotify.exe.lnk" } # Spotify
function obs { start "D:\MyShortcuts\OBS Studio.lnk" } #OBS
function kreo { start "D:\MyShortcuts\Kreo Hive 65.lnk" } # KREO
function dav { start "D:\MyShortcuts\DaVinci Resolve.lnk" } # Davinci Resolve
function wuwa { start "D:\MyShortcuts\Wuthering Waves.lnk" } # Wuwa
function fx { start "D:\MyShortcuts\FxSound.lnk" } # FxSound

# --- Custom Shortcuts coding ---

function vsc { start "D:\MyShortcuts\Visual Studio Code.lnk" } # Visual Studio Code
function ij { start "D:\MyShortcuts\IntelliJ.lnk" } # IntelliJ IDEA


# Minimal profile: UTF‑8 + Oh My Posh (if installed) + Fastfetch with explicit config path
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

# Force Fastfetch to use YOUR config every time (bypass path confusion)
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "C:/Users/nonam/.config/fastfetch/config.jsonc"
}
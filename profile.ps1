after power shell
before fastfetch 
open terminal and paste : 
winget install fastfetch 
New-Item -Path $profile.CurrentUserAllHosts -Type File -Force |
$PROFILE
now go to this directory:
C:\Users\nonam\Documents\WindowsPowerShell
open: profile.ps1
paste:
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
    fastfetch -c "C:/Users/%USERPROFILE%/.config/fastfetch/config.jsonc"
}

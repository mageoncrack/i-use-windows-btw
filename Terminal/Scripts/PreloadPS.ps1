# --- Preload PowerShell environment silently ---
if (Test-Path $PROFILE) {
    . $PROFILE
}

# (Optional) warm up modules you always use
Get-Command > $null

# Keep the session alive silently
while ($true) {
    Start-Sleep 9999
}
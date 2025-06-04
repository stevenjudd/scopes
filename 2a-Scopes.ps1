# F10 or F11
Wait-Debugger

$here = 'there'

Write-Host 'Global variable $here is set to:' -ForegroundColor Cyan
Get-Variable -Name here -Scope Global

Write-Host 'Local variable $here is set to:' -ForegroundColor Cyan
Get-Variable -Name here -Scope Local

Write-Host 'Script variable $here is set to:' -ForegroundColor Cyan
Get-Variable -Name here -Scope Script

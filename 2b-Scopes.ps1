# F10 or F11
Wait-Debugger

$here = 'there'

Write-Host 'Global variable $here is set to: ' -ForegroundColor Cyan -NoNewline
Write-Host (Get-Variable -Name here -Scope Global).Value -ForegroundColor Magenta


Write-Host 'Local variable $here is set to: ' -ForegroundColor Cyan -NoNewline
Write-Host (Get-Variable -Name here -Scope Local).Value -ForegroundColor Magenta

Write-Host 'Script variable $here is set to: ' -ForegroundColor Cyan -NoNewline
Write-Host (Get-Variable -Name here -Scope Script).Value -ForegroundColor Magenta

<#
  Roy Kent
#>
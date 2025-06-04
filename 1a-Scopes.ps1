# F10 or F11
Wait-Debugger

Get-Variable
Get-Variable | Measure-Object | Select-Object -ExpandProperty Count | Write-Host -ForegroundColor Magenta

Get-Variable -Scope Global
Get-Variable -Scope Global | Measure-Object | Select-Object -ExpandProperty Count | Write-Host -ForegroundColor Magenta

Get-Variable -Scope Local
Get-Variable -Scope Local | Measure-Object | Select-Object -ExpandProperty Count | Write-Host -ForegroundColor Magenta

Get-Variable -Scope Script
Get-Variable -Scope Script | Measure-Object | Select-Object -ExpandProperty Count | Write-Host -ForegroundColor Magenta

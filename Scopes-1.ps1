Wait-Debugger

Get-Variable
Get-Variable | Measure-Object | Select-Object -ExpandProperty Count

Get-Variable -Scope Global
Get-Variable -Scope Global | Measure-Object | Select-Object -ExpandProperty Count
Get-Variable -Scope Local
Get-Variable -Scope Local | Measure-Object | Select-Object -ExpandProperty Count
Get-Variable -Scope Script
Get-Variable -Scope Script | Measure-Object | Select-Object -ExpandProperty Count

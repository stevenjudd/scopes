# F11
Wait-Debugger

function Out-Numbered {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,ValueFromPipeline)]
        [Microsoft.PowerShell.Commands.GenericMeasureInfo]$InputObject,
        
        [ValidateSet('Global', 'Local', 'Script')]
        [string]$Scope
    )
    if($Scope) {
      # Shift+F11
      Write-Host "The number of $Scope variables is: " -ForegroundColor Cyan -NoNewline
      Write-Host $InputObject.Count -ForegroundColor Magenta
    } else {
      # F11
      Write-Host "The number of variables is: " -ForegroundColor Cyan -NoNewline
      Write-Host $InputObject.Count -ForegroundColor Magenta
    }
}

# Get-Variable
Get-Variable | Measure-Object | Out-Numbered

# Get-Variable -Scope Global
Get-Variable -Scope Global | Measure-Object | Out-Numbered -Scope Global

# Get-Variable -Scope Local
# F10
Get-Variable -Scope Local | Measure-Object | Out-Numbered -Scope Local

# Get-Variable -Scope Script
Get-Variable -Scope Script | Measure-Object | Out-Numbered -Scope Script

# Where is the $Scope variable? Use F11 to see when it gets set.
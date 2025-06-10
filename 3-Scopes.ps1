Wait-Debugger

# Sample script to demonstrate scope levels in PowerShell
# The variables at this level are in the script scope

# script variable example
$standardVar = 'I am a typical Script Variable'

# Global variable
# You can define a variable in the global scope
# This variable is accessible from anywhere in the script
# and from any function or script that is run in the same session
$Global:globalVar = 'I am a Global Variable'

# Function to demonstrate scope
function Test-FunctionScope {
  # The variables at this level are in the function scope

  function Test-SubFunctionScope {
    Write-Host "$('=' * 50)" -ForegroundColor Yellow
    Write-Host 'SubFunction Level Variables:'
    Write-Host "GlobalVar: $globalVar"
    Write-Host "StandardVar: $standardVar"
    Write-Host "ScriptVar: $scriptVar"
    Write-Host "LocalVar: $localVar"
    Write-Host "PrivateVar: $privateVar"
  }

  # Local variable for the function
  # This variable is only accessible within this function
  $localVar = 'I am a Local Variable'

  # Script variable
  # This variable is accessible within the script scope
  # and can be accessed from within the function
  $Script:scriptVar = 'I am an explicit Script Variable'

  # Private variable

  $Private:privateVar = 'I am a Function Private Variable'

  Wait-Debugger
  Write-Host "$('=' * 50)" -ForegroundColor Yellow
  Write-Host "Function Level Variables:"
  Write-Host "GlobalVar: $globalVar"
  Write-Host "StandardVar: $standardVar"
  Write-Host "ScriptVar: $scriptVar"
  Write-Host "LocalVar: $localVar"
  Write-Host "PrivateVar: $privateVar"

  Test-SubFunctionScope
} # end function Test-FunctionScope

# Call the function
Test-FunctionScope

# Variable values outside the function
Write-Host "$('=' * 50)" -ForegroundColor Yellow
Write-Host "GlobalVar: $globalVar"
Write-Host "StandardVar: $standardVar"
Write-Host "ScriptVar: $scriptVar"
Write-Host "LocalVar: $localVar"
Write-Host "PrivateVar: $privateVar"

# Note how the Local and Private variables are not accessible outside the function

# F10 or F11
Wait-Debugger

# The using scope modifier

# Define variables in the parent scope
$Developers = @('Dillinger', 'Alan')
$Tron = "I fight for the users!"

$job1 = Start-Job -Name $Developers[0] -ScriptBlock {
  "The program says: $Tron"
}

# Start a background job, passing the variable using 'using:'
$job2 = Start-Job -Name $Developers[1] -ScriptBlock {
  # Access the parent variable using 'using:'
  "The program says: $using:Tron"
}

Get-Job -Name 'Dillinger', 'Alan'

# Wait for the jobs to finish and get the result
1..2 | ForEach-Object {
  Write-Host "job$_ result: " -ForegroundColor Cyan -NoNewline
  Receive-Job -Job (Get-Variable -Name "job$_").Value -Wait
}

# Clean up the jobs
Remove-Job -Name 'Dillinger', 'Alan'
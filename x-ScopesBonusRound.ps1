function Get-sjFiles {
  Wait-Debugger
  Get-ChildItem -Path .
  $pollution = 'yuk'
}

Get-sjFiles
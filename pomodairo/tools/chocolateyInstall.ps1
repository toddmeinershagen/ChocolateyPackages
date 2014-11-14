try {

  $packageName = 'pomodairo'
  $installerType = 'exe'
  $url = 'https://pomodairo.googlecode.com/files/pomodairo-1.9.air'
  $silentArgs = '-silent -location "C:\Program Files"'
  $validExitCodes = @(0)

  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

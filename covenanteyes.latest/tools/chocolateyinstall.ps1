 try {

   $packageName = 'covenanteyes'
   $installerType = 'exe'
   $url = 'https://covenanteyes.com/softwaredl/CovenantEyesInstall.exe'
   $silentArgs = '/silent'
   $validExitCodes = @(0)

   Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
   Write-ChocolateySuccess "$packageName"
 } catch {
   Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
   throw
 }

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ueliversion = "8.9.0"
$url        = "https://github.com/oliverschwendener/ueli/releases/download/v$ueliversion/ueli-Setup-$ueliversion.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = '5D52D68661B0369A4384B134EDCC90EA3146245F6B84CF96639464F64A665E81'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

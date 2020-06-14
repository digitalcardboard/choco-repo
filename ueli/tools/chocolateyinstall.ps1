$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ueliversion = "8.7.1"
$url        = "https://github.com/oliverschwendener/ueli/releases/download/v$ueliversion/ueli-Setup-$ueliversion.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = '8D3F695068816EC4021B036A5334A10E357B2CCA653012DAD8BB1E817F0E9C8B'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

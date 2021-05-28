$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ueliversion = "8.12.0"
$url        = "https://github.com/oliverschwendener/ueli/releases/download/v$ueliversion/ueli-Setup-$ueliversion.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = '212129B837EDEFD5D2BFBEFB7910857DA178BEEFEB109E3EFC5ACC7616206C89'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

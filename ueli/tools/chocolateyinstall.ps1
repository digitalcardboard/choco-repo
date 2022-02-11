$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ueliversion = "8.19.0"
$url        = "https://github.com/oliverschwendener/ueli/releases/download/v$ueliversion/ueli-Setup-$ueliversion.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = 'bd234cce888218be3bbbfb0ccbb678de1719b4bf33e7b515de4f677050957650'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

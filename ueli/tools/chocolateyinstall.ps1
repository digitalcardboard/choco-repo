$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ueliversion = "8.10.0"
$url        = "https://github.com/oliverschwendener/ueli/releases/download/v$ueliversion/ueli-Setup-$ueliversion.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = '4FB49F26493BE4C7DC1854D3121255558457AC5C2A696912C59E81171C9837AD'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

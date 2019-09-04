$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/oliverschwendener/ueli/releases/download/v8.1.1/ueli-Setup-8.1.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = 'DD7E826328F9FE984F2E277FA9605EF90F45836E8B6E14C040C4FA219B72B4A4'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
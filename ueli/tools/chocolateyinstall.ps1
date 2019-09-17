$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/oliverschwendener/ueli/releases/download/v8.1.2/ueli-Setup-8.1.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ueli*'

  checksum      = '44B9AC97E676E1372A9C4E126AE76C34B6A6A461B1EA84B46091FC6F0EA34388'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
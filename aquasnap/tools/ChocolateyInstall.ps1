$ErrorActionPreference = 'Stop';

$version = '1.23.6'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nurgo-software.com/download/AquaSnap_1.23.6/AquaSnap.msi'
$url64      = 'https://www.nurgo-software.com/download/AquaSnap_1.23.6/AquaSnap.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = '9EF0E32F4DB44E577C02641F4D20CAA18735C2D847B6866F5C407963F887C4B2'
  checksumType  = 'sha256'
  checksum64    = '9EF0E32F4DB44E577C02641F4D20CAA18735C2D847B6866F5C407963F887C4B2'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

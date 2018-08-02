$ErrorActionPreference = 'Stop';

$version = '1.23.3'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nurgo-software.com/download/AquaSnap_1.23.3/AquaSnap.msi'
$url64      = 'https://www.nurgo-software.com/download/AquaSnap_1.23.3/AquaSnap.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = 'AA00DFB7F0BEEB3D99667ADE708AFE383B8F56A4A7F7927CF0374E335C51B1D0'
  checksumType  = 'sha256'
  checksum64    = 'AA00DFB7F0BEEB3D99667ADE708AFE383B8F56A4A7F7927CF0374E335C51B1D0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

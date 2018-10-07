$ErrorActionPreference = 'Stop';

$version = '1.23.5'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nurgo-software.com/download/AquaSnap_1.23.5/AquaSnap.msi'
$url64      = 'https://www.nurgo-software.com/download/AquaSnap_1.23.5/AquaSnap.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = '2FBB6E224B012A3F01F020C4D0F42E603BB47C1D5C9A5CD91FCFE2FB51D9B4A3'
  checksumType  = 'sha256'
  checksum64    = '2FBB6E224B012A3F01F020C4D0F42E603BB47C1D5C9A5CD91FCFE2FB51D9B4A3'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

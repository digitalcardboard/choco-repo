$ErrorActionPreference = 'Stop';

$version = '1.23.10'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://www.nurgo-software.com/download/${packageName}_${version}/AquaSnap.msi"
$url64      = "https://www.nurgo-software.com/download/${packageName}_${version}/AquaSnap.msi"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = 'C0E5FADA957286F2DB14C67F04D2AF85BC6AF36E166548D655F0565FEF1C2BE5'
  checksumType  = 'sha256'
  checksum64    = 'C0E5FADA957286F2DB14C67F04D2AF85BC6AF36E166548D655F0565FEF1C2BE5'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

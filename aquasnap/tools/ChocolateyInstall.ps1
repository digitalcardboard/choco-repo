$ErrorActionPreference = 'Stop';

$version = '1.23.6'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nurgo-software.com/download/AquaSnap_1.23.8/AquaSnap.msi'
$url64      = 'https://www.nurgo-software.com/download/AquaSnap_1.23.8/AquaSnap.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = '5A3E686C6FECFB30D6657572CA1C09CC32F1EC7B81BE2A3CD34FC0E4396CACFC'
  checksumType  = 'sha256'
  checksum64    = '5A3E686C6FECFB30D6657572CA1C09CC32F1EC7B81BE2A3CD34FC0E4396CACFC'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

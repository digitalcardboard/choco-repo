$ErrorActionPreference = 'Stop';

$version = '1.23.6'
$packageName = 'AquaSnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.nurgo-software.com/download/AquaSnap_1.23.7/AquaSnap.msi'
$url64      = 'https://www.nurgo-software.com/download/AquaSnap_1.23.7/AquaSnap.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AquaSnap*'

  checksum      = '8E014F0DF8E13C6706C7B34C08AA18DF2B3B1B465F8FCC847ED76A90CA86C6CE'
  checksumType  = 'sha256'
  checksum64    = '8E014F0DF8E13C6706C7B34C08AA18DF2B3B1B465F8FCC847ED76A90CA86C6CE'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

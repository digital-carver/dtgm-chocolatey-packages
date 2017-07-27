$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_1.exe'
$checksum = '0aa1f0aa1d1755195490541cb4be8d05403b91654a7c3b1187695fc4359e694d'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_1.exe'
$checksum64 = '992a6c32c3ac048b91637f353e6bc2e98ddde1a4efcb23e5af71f7c0fc4c2248'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
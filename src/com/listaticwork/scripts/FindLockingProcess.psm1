﻿#The sample scripts are not supported under any Microsoft standard support
#program or service. The sample scripts are provided AS IS without warranty
#of any kind. Microsoft further disclaims all implied warranties including,
#without limitation, any implied warranties of merchantability or of fitness for
#a particular purpose. The entire risk arising out of the use or performance of
#the sample scripts and documentation remains with you. In no event shall
#Microsoft, its authors, or anyone else involved in the creation, production, or
#delivery of the scripts be liable for any damages whatsoever (including,
#without limitation, damages for loss of business profits, business interruption,
#loss of business information, or other pecuniary loss) arising out of the use
#of or inability to use the sample scripts or documentation, even if Microsoft
#has been advised of the possibility of such damages.

Function FindLockingProcess
{
    Param
    (
        [Parameter(Mandatory=$true)]
        [String] $FileOrFolderPath
    )
    IF((Test-Path -Path $FileOrFolderPath) -eq $false) {
        Write-Warning "File or directory does not exist."       
    }
    Else {
        $LockingProcess = CMD /C "openfiles /query /fo table | find /I ""$FileOrFolderPath"""
        Write-Host $LockingProcess
    }
  
}

#此函数用来查找系统中正在占用某个文件或文件夹的全部进程



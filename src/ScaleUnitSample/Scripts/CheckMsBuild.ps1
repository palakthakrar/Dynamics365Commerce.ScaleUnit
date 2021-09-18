<#
.SYNOPSIS
Checks that msbuild is available.
#>
Import-Module (Join-Path $PSScriptRoot "ErrorDecorator.psm1")

$msbuildPath = (get-command msbuild.exe -ErrorAction SilentlyContinue).Path
if (-not $msbuildPath)
{
    Write-Host
    Write-CustomError "Unable to find 'msbuild.exe'. Please ensure the path to msbuild.exe is listed in the PATH environment variable and try again. To find the location of msbuild.exe execute the command 'where msbuild' in the Command Prompt or Developer Command Prompt for VS xx."
    Write-Host
    exit 1
}
Get-ChildItem env:* | sort-object name

if($IsWindows -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/win-x64/SendWorkflowNotifications.exe"
    Write-Output "Running $filePath..."
    & $filePath
}

if($IsLinux -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/linux-x64/SendWorkflowNotifications"
    chmod +x $filePath
    Write-Output "Running $filePath..."
    & $filePath
}

if($IsMacOS -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/osx-x64/SendWorkflowNotifications"
    chmod +x $filePath
    Write-Output "Running $filePath..."
    & $filePath
}
if (Test-Path .\.nvmrc) {
    $nvmrc_node_version = Get-Content .\.nvmrc
    Write-Host "nvmrc_node_version: $nvmrc_node_version"

    $current_node_version = node --version
    Write-Host "current_node_version: $current_node_version"

    if ($current_node_version -eq "v$nvmrc_node_version") {
        Write-Host "Current Node.js version is the same as the one in .nvmrc file. Exiting..."
        exit
    }

    $nvm_versions = nvm ls | ForEach-Object { $_.ToString().Trim() }
    Write-Host "nvm_versions: $nvm_versions"

    if ($nvm_versions -contains $nvmrc_node_version) {
        nvm use $nvmrc_node_version
    } else {
        nvm install $nvmrc_node_version
        nvm use $nvmrc_node_version
    }
}
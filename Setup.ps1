Set-Alias k kubectl

function Invoke-KubectlRun {
    param(
        [string]$PodName,
        [string]$Image
    )

    $command = "kubectl run $PodName --image=$Image --dry-run=client -o yaml"
    Invoke-Expression $command
}

Set-Alias -Name kdr -Value Invoke-KubectlRun
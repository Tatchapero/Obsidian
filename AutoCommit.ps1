try {
    git -v | Out-Null
}
catch {
    Write-Error "Git not detected. Please install Git at https://git-scm.com/downloads"
    Exit -1
}

$status = git status | Out-String

if ($status.Contains("Untracked files")) {
    Write-Host("Untracked files detected. Starting auto commit...") -ForegroundColor Yellow
    commitAndPush
}
elseif ($status.Contains("Changes not staged for commit")) {
    Write-Host("Changes not staged for commit detected. Starting auto commit...") -ForegroundColor Yellow
    commitAndPush
}

function commitAndPush() {
    git add --a | Out-Null
    git commit -m "Auto commit" | Out-Null
    git push | Out-Null
    Write-Host("Successfully pushed latest changes!") -ForegroundColor Green
}
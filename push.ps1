# PowerShell script to easily push changes to git
# Usage: .\push.ps1 "Your commit message"

param(
    [string]$CommitMessage = "Update site changes"
)

# Stage all changes
git add .

# Check if there are changes to commit
$status = git status --porcelain
if ($status) {
    # Commit with the provided message
    git commit -m $CommitMessage
    
    # Push to origin main
    git push origin main
    
    Write-Host "Changes pushed successfully!"
} else {
    Write-Host "No changes to commit."
}
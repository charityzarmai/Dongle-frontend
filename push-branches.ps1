Write-Host "========================================"
Write-Host "Pushing branches to charityzarmai/Dongle-frontend"
Write-Host "========================================"
Write-Host ""

$branches = @(
    "main",
    "feature/admin-pagination",
    "feature/error-mapper",
    "feature/bundle-analysis",
    "feature/offline-detection"
)

$success = $true

foreach ($branch in $branches) {
    Write-Host "Pushing $branch..." -ForegroundColor Cyan
    
    git push -u charityzarmai $branch
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "✗ Failed to push $branch" -ForegroundColor Red
        $success = $false
        break
    }
    
    Write-Host "✓ $branch pushed successfully" -ForegroundColor Green
    Write-Host ""
}

if ($success) {
    Write-Host "========================================"
    Write-Host "All branches pushed successfully! 🎉" -ForegroundColor Green
    Write-Host "========================================"
    Write-Host ""
    Write-Host "You can now view them at:"
    Write-Host "https://github.com/charityzarmai/Dongle-frontend/branches" -ForegroundColor Blue
    Write-Host ""
} else {
    Write-Host "========================================"
    Write-Host "Push failed. Please check your authentication." -ForegroundColor Red
    Write-Host "========================================"
    Write-Host ""
    Write-Host "Troubleshooting:"
    Write-Host "1. Ensure you're authenticated with GitHub"
    Write-Host "2. Check you have write access to the repository"
    Write-Host "3. Verify the repository exists"
    Write-Host ""
    Write-Host "See PUSH_INSTRUCTIONS.md for detailed help"
}

Write-Host ""
Read-Host "Press Enter to exit"

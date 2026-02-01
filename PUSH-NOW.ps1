# Auto-push to GitHub for geetmehta989
Write-Host "`nUploading to GitHub..." -ForegroundColor Green
Write-Host "Repository: https://github.com/geetmehta989/scam-link" -ForegroundColor Cyan

# Check if repository exists by trying to push
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSUCCESS! Project uploaded to GitHub!" -ForegroundColor Green
    Write-Host "`nRepository: https://github.com/geetmehta989/scam-link" -ForegroundColor Cyan
    Write-Host "`nTo enable GitHub Pages:" -ForegroundColor Yellow
    Write-Host "Go to: https://github.com/geetmehta989/scam-link/settings/pages" -ForegroundColor Cyan
    Write-Host "Select: main branch, / (root) folder" -ForegroundColor White
    Write-Host "Your site: https://geetmehta989.github.io/scam-link/scam-link.html" -ForegroundColor Green
} else {
    Write-Host "`nRepository not found. Please:" -ForegroundColor Red
    Write-Host "1. Go to: https://github.com/new" -ForegroundColor Yellow
    Write-Host "2. Repository name: scam-link" -ForegroundColor White
    Write-Host "3. Make it: Public" -ForegroundColor White
    Write-Host "4. DO NOT initialize with README" -ForegroundColor White
    Write-Host "5. Click 'Create repository'" -ForegroundColor White
    Write-Host "6. Then run this script again: .\PUSH-NOW.ps1" -ForegroundColor Cyan
}


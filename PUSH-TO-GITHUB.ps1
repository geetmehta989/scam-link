# Edit this file and add your GitHub username below, then run this script
$GITHUB_USERNAME = "YOUR_GITHUB_USERNAME_HERE"

Write-Host "`nUploading to GitHub..." -ForegroundColor Green

# Step 1: Create repository first
Write-Host "`nSTEP 1: Create GitHub repository" -ForegroundColor Yellow
Write-Host "Go to: https://github.com/new" -ForegroundColor Cyan
Write-Host "Repository name: scam-link" -ForegroundColor White
Write-Host "Make it: Public" -ForegroundColor White
Write-Host "DO NOT initialize with README" -ForegroundColor White
Write-Host "`nPress Enter after creating the repository..." -ForegroundColor Yellow
Read-Host

# Step 2: Add remote and push
Write-Host "`nSTEP 2: Uploading code..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin "https://github.com/$GITHUB_USERNAME/scam-link.git"
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSUCCESS! Uploaded to GitHub!" -ForegroundColor Green
    Write-Host "Repository: https://github.com/$GITHUB_USERNAME/scam-link" -ForegroundColor Cyan
    Write-Host "`nTo enable GitHub Pages:" -ForegroundColor Yellow
    Write-Host "Go to: https://github.com/$GITHUB_USERNAME/scam-link/settings/pages" -ForegroundColor Cyan
    Write-Host "Select: main branch, / (root) folder" -ForegroundColor White
    Write-Host "Your site: https://$GITHUB_USERNAME.github.io/scam-link/scam-link.html" -ForegroundColor Green
} else {
    Write-Host "`nPush failed. Please check:" -ForegroundColor Red
    Write-Host "1. Repository exists at github.com/$GITHUB_USERNAME/scam-link" -ForegroundColor Yellow
    Write-Host "2. Repository is empty (no README)" -ForegroundColor Yellow
    Write-Host "3. You have push access" -ForegroundColor Yellow
}


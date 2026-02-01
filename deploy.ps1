# Simple deployment script for GitHub Pages
Write-Host "Setting up GitHub Pages deployment..." -ForegroundColor Green

# Check if remote exists
$remote = git remote get-url origin 2>$null
if (-not $remote) {
    Write-Host "`nNo GitHub remote found. Please follow these steps:" -ForegroundColor Yellow
    Write-Host "1. Go to https://github.com/new" -ForegroundColor Cyan
    Write-Host "2. Create a new repository named 'scam-link' (or any name)" -ForegroundColor Cyan
    Write-Host "3. Run these commands:" -ForegroundColor Cyan
    Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/scam-link.git" -ForegroundColor White
    Write-Host "   git branch -M main" -ForegroundColor White
    Write-Host "   git push -u origin main" -ForegroundColor White
    Write-Host "`n4. Go to repository Settings > Pages" -ForegroundColor Cyan
    Write-Host "5. Select 'main' branch and '/ (root)' folder" -ForegroundColor Cyan
    Write-Host "6. Your site will be live at: https://YOUR_USERNAME.github.io/scam-link/scam-link.html" -ForegroundColor Green
} else {
    Write-Host "Remote found: $remote" -ForegroundColor Green
    Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
    git branch -M main
    git push -u origin main
    Write-Host "`nDone! Enable GitHub Pages in repository settings." -ForegroundColor Green
}


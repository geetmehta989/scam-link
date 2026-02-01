# Quick GitHub Pages Deployment
Write-Host "`n🚀 Deploying to GitHub Pages..." -ForegroundColor Green

# Get GitHub username
Write-Host "`nEnter your GitHub username (or press Enter to skip):" -ForegroundColor Yellow
$username = Read-Host

if ($username) {
    Write-Host "`n📝 Setting up deployment..." -ForegroundColor Yellow
    
    # Remove existing remote if any
    git remote remove origin 2>$null
    
    # Add new remote
    git remote add origin "https://github.com/$username/scam-link.git"
    
    Write-Host "`n✅ Repository configured!" -ForegroundColor Green
    Write-Host "`nNext steps:" -ForegroundColor Yellow
    Write-Host "1. Create repository at: https://github.com/new" -ForegroundColor Cyan
    Write-Host "   - Name: scam-link" -ForegroundColor White
    Write-Host "   - Public" -ForegroundColor White
    Write-Host "   - Don't initialize with README" -ForegroundColor White
    Write-Host "`n2. Press Enter when repository is created..." -ForegroundColor Cyan
    Read-Host
    
    Write-Host "`n3. Pushing code..." -ForegroundColor Yellow
    git branch -M main
    git push -u origin main
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ Deployed successfully!" -ForegroundColor Green
        Write-Host "`n4. Enable GitHub Pages:" -ForegroundColor Yellow
        Write-Host "   Go to: https://github.com/$username/scam-link/settings/pages" -ForegroundColor Cyan
        Write-Host "   - Source: Deploy from a branch" -ForegroundColor White
        Write-Host "   - Branch: main, folder: / (root)" -ForegroundColor White
        Write-Host "   - Click Save" -ForegroundColor White
        Write-Host "`n🌐 Your live link will be:" -ForegroundColor Green
        Write-Host "   https://$username.github.io/scam-link/scam-link.html" -ForegroundColor Cyan
        Write-Host "   OR" -ForegroundColor White
        Write-Host "   https://$username.github.io/scam-link/" -ForegroundColor Cyan
    } else {
        Write-Host "`n❌ Push failed. Please check:" -ForegroundColor Red
        Write-Host "   - Repository exists at github.com/$username/scam-link" -ForegroundColor Yellow
        Write-Host "   - You have push access" -ForegroundColor Yellow
    }
} else {
    Write-Host "`n📋 Manual Deployment Instructions:" -ForegroundColor Yellow
    Write-Host "`n1. Create GitHub repo: https://github.com/new" -ForegroundColor Cyan
    Write-Host "   Name: scam-link, Public, no README" -ForegroundColor White
    Write-Host "`n2. Run these commands:" -ForegroundColor Cyan
    Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/scam-link.git" -ForegroundColor White
    Write-Host "   git branch -M main" -ForegroundColor White
    Write-Host "   git push -u origin main" -ForegroundColor White
    Write-Host "`n3. Enable Pages: Settings > Pages > main branch > Save" -ForegroundColor Cyan
    Write-Host "`n4. Your site: https://YOUR_USERNAME.github.io/scam-link/scam-link.html" -ForegroundColor Green
}


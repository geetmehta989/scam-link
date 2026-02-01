# Upload to GitHub Script
Write-Host "`n🚀 Uploading project to GitHub..." -ForegroundColor Green

# Check if remote exists
$remote = git remote get-url origin 2>$null

if ($remote) {
    Write-Host "`n✅ Remote already configured: $remote" -ForegroundColor Green
    Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
    git branch -M main
    git push -u origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ Successfully pushed to GitHub!" -ForegroundColor Green
    } else {
        Write-Host "`n❌ Push failed. Please check your repository exists and you have access." -ForegroundColor Red
    }
} else {
    Write-Host "`n📝 No GitHub remote found. Let's set it up!" -ForegroundColor Yellow
    Write-Host "`nEnter your GitHub username:" -ForegroundColor Cyan
    $username = Read-Host
    
    if ($username) {
        Write-Host "`n⚠️  First, create a GitHub repository:" -ForegroundColor Yellow
        Write-Host "1. Go to: https://github.com/new" -ForegroundColor Cyan
        Write-Host "2. Repository name: scam-link" -ForegroundColor White
        Write-Host "3. Make it: Public" -ForegroundColor White
        Write-Host "4. DO NOT initialize with README, .gitignore, or license" -ForegroundColor White
        Write-Host "5. Click 'Create repository'" -ForegroundColor White
        Write-Host "`nPress Enter when the repository is created..." -ForegroundColor Cyan
        Read-Host
        
        Write-Host "`n🔗 Adding remote and pushing..." -ForegroundColor Yellow
        git remote add origin "https://github.com/$username/scam-link.git"
        git branch -M main
        git push -u origin main
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "`n✅ Successfully uploaded to GitHub!" -ForegroundColor Green
            Write-Host "`n🌐 Repository URL: https://github.com/$username/scam-link" -ForegroundColor Cyan
            Write-Host "`n💡 To enable GitHub Pages:" -ForegroundColor Yellow
            Write-Host "   Go to: https://github.com/$username/scam-link/settings/pages" -ForegroundColor Cyan
            Write-Host "   Source: main branch, / (root)" -ForegroundColor White
            Write-Host "   Your site: https://$username.github.io/scam-link/scam-link.html" -ForegroundColor Green
        } else {
            Write-Host "`n❌ Push failed. Please check:" -ForegroundColor Red
            Write-Host "   - Repository exists at github.com/$username/scam-link" -ForegroundColor Yellow
            Write-Host "   - You have push access" -ForegroundColor Yellow
            Write-Host "   - Repository is empty (no README)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "`n❌ Username required. Exiting." -ForegroundColor Red
    }
}


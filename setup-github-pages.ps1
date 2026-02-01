# GitHub Pages Setup Script
Write-Host "`n🚀 Setting up GitHub Pages deployment..." -ForegroundColor Green
Write-Host "`nThis will create a GitHub repository and deploy your site." -ForegroundColor Yellow

# Check if git is configured
$gitUser = git config user.name 2>$null
$gitEmail = git config user.email 2>$null

if (-not $gitUser -or -not $gitEmail) {
    Write-Host "`n⚠️  Git is not configured. Please run:" -ForegroundColor Yellow
    Write-Host "   git config --global user.name 'Your Name'" -ForegroundColor Cyan
    Write-Host "   git config --global user.email 'your.email@example.com'" -ForegroundColor Cyan
    exit 1
}

Write-Host "`n✅ Git configured: $gitUser <$gitEmail>" -ForegroundColor Green

# Check if remote exists
$remote = git remote get-url origin 2>$null

if ($remote) {
    Write-Host "`n⚠️  Remote already exists: $remote" -ForegroundColor Yellow
    Write-Host "Do you want to use this repository? (Y/N)" -ForegroundColor Cyan
    $response = Read-Host
    if ($response -ne 'Y' -and $response -ne 'y') {
        Write-Host "`nPlease create a new GitHub repository first:" -ForegroundColor Yellow
        Write-Host "1. Go to: https://github.com/new" -ForegroundColor Cyan
        Write-Host "2. Name it: scam-link" -ForegroundColor Cyan
        Write-Host "3. Make it Public" -ForegroundColor Cyan
        Write-Host "4. Don't initialize with README" -ForegroundColor Cyan
        Write-Host "5. Then run this script again" -ForegroundColor Cyan
        exit 1
    }
} else {
    Write-Host "`n📝 Next steps:" -ForegroundColor Yellow
    Write-Host "1. Create a GitHub repository:" -ForegroundColor Cyan
    Write-Host "   Go to: https://github.com/new" -ForegroundColor White
    Write-Host "   Name: scam-link" -ForegroundColor White
    Write-Host "   Make it: Public" -ForegroundColor White
    Write-Host "   Don't initialize with README" -ForegroundColor White
    Write-Host "`n2. Enter your GitHub username:" -ForegroundColor Cyan
    $username = Read-Host "GitHub Username"
    
    Write-Host "`n3. Adding remote and pushing..." -ForegroundColor Yellow
    git remote add origin "https://github.com/$username/scam-link.git"
    git branch -M main
    git push -u origin main
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ Code pushed successfully!" -ForegroundColor Green
        Write-Host "`n4. Enable GitHub Pages:" -ForegroundColor Yellow
        Write-Host "   Go to: https://github.com/$username/scam-link/settings/pages" -ForegroundColor Cyan
        Write-Host "   Source: main branch, / (root)" -ForegroundColor White
        Write-Host "   Click Save" -ForegroundColor White
        Write-Host "`n🌐 Your site will be live at:" -ForegroundColor Green
        Write-Host "   https://$username.github.io/scam-link/scam-link.html" -ForegroundColor Cyan
    } else {
        Write-Host "`n❌ Push failed. Please check your GitHub credentials." -ForegroundColor Red
    }
}


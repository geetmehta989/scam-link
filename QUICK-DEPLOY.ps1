# Quick Deploy Script - Opens Netlify Drop for instant hosting
Write-Host "`n🚀 Opening Netlify Drop for instant hosting..." -ForegroundColor Green
Write-Host "`nJust drag and drop the 'scam-link.html' file onto the page!" -ForegroundColor Yellow
Write-Host "No account needed - you'll get a live URL in 30 seconds!`n" -ForegroundColor Cyan

# Open Netlify Drop in browser
Start-Process "https://app.netlify.com/drop"

# Also open the file location
Start-Process explorer.exe -ArgumentList "/select,`"$PSScriptRoot\scam-link.html`""

Write-Host "✅ Browser opened! Drag the file to deploy." -ForegroundColor Green
Write-Host "`nYour live URL will be something like: https://random-name-123.netlify.app/scam-link.html" -ForegroundColor Cyan


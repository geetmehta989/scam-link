# Deploy to Vercel - Get Live Link in 1 Minute

## Quick Steps:

1. **Login to Vercel:**
   ```powershell
   vercel login
   ```
   (This will open browser for authentication)

2. **Deploy:**
   ```powershell
   vercel --prod
   ```

3. **Done!** You'll get a live URL like: `https://scam-link-xxxxx.vercel.app/scam-link.html`

---

## Alternative: GitHub Pages (Free, No Login Needed After Setup)

1. Create repo: https://github.com/new (name: `scam-link`, Public)
2. Run:
   ```powershell
   git remote add origin https://github.com/YOUR_USERNAME/scam-link.git
   git branch -M main
   git push -u origin main
   ```
3. Enable Pages: Settings > Pages > main branch > Save
4. Live at: `https://YOUR_USERNAME.github.io/scam-link/scam-link.html`


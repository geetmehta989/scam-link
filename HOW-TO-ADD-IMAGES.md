# How to Add Images

## Quick Steps:

### Option 1: Using Image URLs (Easiest)
1. Upload your images to:
   - Imgur (https://imgur.com)
   - Google Drive (make public and get shareable link)
   - Any image hosting service
2. Open `scam-link.html`
3. Find line 239: Replace `YOUR_IMAGE_URL_OR_FILENAME_HERE` with your image URL
4. Find line 340: Replace `YOUR_DOG_GIF_URL_OR_FILENAME_HERE` with your GIF URL
5. Save and push to GitHub

### Option 2: Using Local Files
1. Place your images in the same folder as `scam-link.html`
2. Name them: `profile-image.jpg` and `dog-gif.gif`
3. Update the HTML:
   - Line 239: Change to `src="profile-image.jpg"`
   - Line 340: Change to `src="dog-gif.gif"`
4. Commit and push to GitHub

### Example:
```html
<!-- Profile image -->
<img src="https://i.imgur.com/your-image.jpg" ...>

<!-- Dog GIF -->
<img src="https://i.imgur.com/your-dog.gif" ...>
```


# Git Setup and Push Instructions

## Prerequisites
1. Make sure Git is installed: `git --version`
2. Have a GitHub account
3. (Optional) Set up SSH keys for easier authentication

## Step-by-Step Guide

### 1. Navigate to Project Directory
```bash
cd /home/claude/hierarchical-product-classification
```

### 2. Initialize Git Repository
```bash
git init
```

### 3. Configure Git (if not already done)
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 4. Add All Files to Staging
```bash
git add .
```

### 5. Check Status (Optional - to verify files are staged)
```bash
git status
```

### 6. Create Initial Commit
```bash
git commit -m "Initial commit: Hierarchical Product Classification System

- Added BERT-based hierarchical classifier implementations
- Included GECE hybrid architecture with global-local supervision
- Added masked inference approach with constraint enforcement
- Comprehensive project reports and documentation
- Achieved 98% brand accuracy and 88-91% hierarchical accuracy
- 45x training speedup through embedding freezing"
```

### 7. Create GitHub Repository
Go to GitHub.com and:
1. Click "+" in top right → "New repository"
2. Name it: `hierarchical-product-classification`
3. Description: "Multi-task learning architecture for e-commerce product classification using BERT, GECE, and hierarchical constraints"
4. Choose Public or Private
5. **DO NOT** initialize with README (we already have one)
6. Click "Create repository"

### 8. Add Remote Origin
Copy the repository URL from GitHub and run:

**For HTTPS:**
```bash
git remote add origin https://github.com/YOUR_USERNAME/hierarchical-product-classification.git
```

**For SSH (if you have SSH keys set up):**
```bash
git remote add origin git@github.com:YOUR_USERNAME/hierarchical-product-classification.git
```

### 9. Verify Remote
```bash
git remote -v
```

### 10. Push to GitHub
```bash
git push -u origin main
```

**Note:** If you get an error about 'master' vs 'main', try:
```bash
git branch -M main
git push -u origin main
```

### 11. Enter Credentials
- For HTTPS: Enter your GitHub username and Personal Access Token (not password)
- For SSH: No credentials needed if keys are set up

## Creating a Personal Access Token (for HTTPS)

If you don't have a Personal Access Token:
1. Go to GitHub.com → Settings → Developer settings
2. Personal access tokens → Tokens (classic)
3. Generate new token (classic)
4. Select scopes: `repo` (full control of private repositories)
5. Generate token and copy it (you won't see it again!)
6. Use this token instead of your password when pushing

## Verification

After pushing, visit:
```
https://github.com/YOUR_USERNAME/hierarchical-product-classification
```

You should see all your files!

## Future Updates

To push future changes:
```bash
git add .
git commit -m "Your commit message"
git push
```

## Common Issues

### Issue 1: "repository not found"
- Check that you've created the repository on GitHub
- Verify the remote URL is correct: `git remote -v`

### Issue 2: Authentication failed
- For HTTPS: Use Personal Access Token, not password
- For SSH: Make sure SSH keys are set up

### Issue 3: Branch naming (master vs main)
```bash
git branch -M main
git push -u origin main
```

### Issue 4: File too large
If you have large model files:
```bash
# Add them to .gitignore
echo "models/*.pt" >> .gitignore
git rm --cached models/*.pt
git commit -m "Remove large model files"
```

## Tips

1. **Commit Often**: Make small, logical commits
2. **Write Clear Messages**: Explain what changed and why
3. **Use .gitignore**: Don't commit large data/model files
4. **Check Before Pushing**: Use `git status` and `git diff`

## Next Steps

1. Add topics/tags to your GitHub repo: machine-learning, nlp, bert, transformers, hierarchical-classification
2. Add a license file if needed
3. Consider adding GitHub Actions for CI/CD
4. Star the repository to make it easier to find
5. Share the link in your resume/portfolio!

# Quick Git Commands Reference

## Initial Setup (Run Once)

```bash
# 1. Navigate to project
cd /home/claude/hierarchical-product-classification

# 2. Initialize Git
git init

# 3. Configure your identity
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# 4. Add all files
git add .

# 5. Create initial commit
git commit -m "Initial commit: Hierarchical Product Classification System"

# 6. Set main branch
git branch -M main

# 7. Add GitHub remote (replace with your URL)
git remote add origin https://github.com/YOUR_USERNAME/hierarchical-product-classification.git

# 8. Push to GitHub
git push -u origin main
```

## OR Use the Automated Script

```bash
cd /home/claude/hierarchical-product-classification
./setup_git.sh
```

## Daily Git Workflow (After Initial Setup)

```bash
# Check what changed
git status

# Add specific files
git add filename.py

# Or add all changes
git add .

# Commit with message
git commit -m "Description of changes"

# Push to GitHub
git push

# Pull latest changes
git pull
```

## Useful Commands

```bash
# View commit history
git log --oneline

# View current branch
git branch

# Create new branch
git checkout -b feature-name

# Switch branches
git checkout branch-name

# View differences
git diff

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo changes to file
git checkout -- filename

# View remote URL
git remote -v
```

## File Management

```bash
# Remove file from Git (but keep locally)
git rm --cached filename

# Rename/move file
git mv old-name new-name

# Delete file
git rm filename
```

## Troubleshooting

```bash
# Force push (use carefully!)
git push -f origin main

# Reset to remote state
git fetch origin
git reset --hard origin/main

# Clear cache
git rm -r --cached .
git add .
git commit -m "Clear cache"
```

## GitHub Personal Access Token

Create at: https://github.com/settings/tokens
- Select: `repo` (full control)
- Use token instead of password when pushing

## Tips

✓ Commit often with clear messages
✓ Pull before you push (git pull)
✓ Use .gitignore for large files
✓ Write descriptive commit messages
✗ Don't commit sensitive data
✗ Don't commit large binary files

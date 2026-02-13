#!/bin/bash

# Hierarchical Product Classification - Git Setup Script
# This script automates the Git initialization and setup process

echo "=================================================="
echo "Git Setup Script for Hierarchical Product Classification"
echo "=================================================="
echo ""

# Step 1: Navigate to project directory
cd /home/claude/hierarchical-product-classification || exit

# Step 2: Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

echo "✓ Git is installed: $(git --version)"
echo ""

# Step 3: Initialize repository if not already initialized
if [ ! -d .git ]; then
    echo "Initializing Git repository..."
    git init
    echo "✓ Git repository initialized"
else
    echo "✓ Git repository already initialized"
fi
echo ""

# Step 4: Configure Git (ask user for details)
echo "Git Configuration"
echo "-----------------"
read -p "Enter your Git username: " git_username
read -p "Enter your Git email: " git_email

git config --global user.name "$git_username"
git config --global user.email "$git_email"

echo "✓ Git configured with:"
echo "  Name: $git_username"
echo "  Email: $git_email"
echo ""

# Step 5: Show files to be committed
echo "Files in repository:"
echo "-------------------"
ls -la
echo ""

# Step 6: Add files to staging
echo "Adding files to staging area..."
git add .
echo "✓ Files added to staging"
echo ""

# Step 7: Show status
echo "Git Status:"
echo "-----------"
git status
echo ""

# Step 8: Create initial commit
read -p "Press ENTER to create initial commit, or Ctrl+C to cancel..."
git commit -m "Initial commit: Hierarchical Product Classification System

- BERT-based hierarchical classifier with constraint masking
- GECE hybrid architecture combining global-local supervision
- Masked inference approach with cascaded constraints
- Comprehensive project documentation and reports
- 98% brand accuracy, 88-91% hierarchical accuracy
- 45x training speedup through embedding freezing"

echo "✓ Initial commit created"
echo ""

# Step 9: Set default branch to main
git branch -M main
echo "✓ Default branch set to 'main'"
echo ""

# Step 10: Add remote (user provides URL)
echo "GitHub Repository Setup"
echo "----------------------"
echo "Please create a new repository on GitHub first:"
echo "1. Go to https://github.com/new"
echo "2. Repository name: hierarchical-product-classification"
echo "3. Description: Multi-task learning for e-commerce product classification"
echo "4. Choose Public or Private"
echo "5. DO NOT initialize with README, .gitignore, or license"
echo "6. Click 'Create repository'"
echo ""
read -p "Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): " repo_url

git remote add origin "$repo_url"
echo "✓ Remote origin added: $repo_url"
echo ""

# Step 11: Verify remote
echo "Verifying remote configuration..."
git remote -v
echo ""

# Step 12: Push to GitHub
echo "Ready to push to GitHub!"
echo "-----------------------"
echo "Note: You may need to enter your credentials:"
echo "  - For HTTPS: Use your GitHub username and Personal Access Token"
echo "  - For SSH: Ensure your SSH keys are set up"
echo ""
read -p "Press ENTER to push to GitHub, or Ctrl+C to cancel..."

if git push -u origin main; then
    echo ""
    echo "=================================================="
    echo "✓ SUCCESS! Repository pushed to GitHub"
    echo "=================================================="
    echo ""
    echo "Your repository is now available at:"
    echo "$repo_url"
    echo ""
    echo "Next steps:"
    echo "1. Visit your repository on GitHub"
    echo "2. Add topics/tags: machine-learning, nlp, bert, transformers"
    echo "3. Consider adding a LICENSE file"
    echo "4. Share the link in your resume!"
else
    echo ""
    echo "=================================================="
    echo "❌ Push failed. Please check the error above."
    echo "=================================================="
    echo ""
    echo "Common issues:"
    echo "1. Authentication failed - Use Personal Access Token for HTTPS"
    echo "2. Repository not found - Check that you created it on GitHub"
    echo "3. Permission denied - Verify repository URL and access rights"
    echo ""
    echo "For help, see GIT_SETUP_GUIDE.md"
fi

echo ""
echo "Script completed!"

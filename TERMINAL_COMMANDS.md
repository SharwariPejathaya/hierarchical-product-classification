#  TERMINAL COMMANDS TO PUSH YOUR PROJECT TO GITHUB

## OPTION 1: AUTOMATED (EASIEST) 

Run this single command to automate everything:

```bash
cd /mnt/user-data/outputs/hierarchical-product-classification
./setup_git.sh
```

The script will:
- Initialize Git repository
- Configure your Git username and email
- Add all files to staging
- Create initial commit
- Set up remote connection to GitHub
- Push to GitHub

Just follow the prompts!

---

## OPTION 2: MANUAL (STEP-BY-STEP) 🔧

### Step 1: Navigate to Project Directory
```bash
cd /mnt/user-data/outputs/hierarchical-product-classification
```

### Step 2: Initialize Git
```bash
git init
```

### Step 3: Configure Git (Replace with YOUR details)
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Step 4: Add All Files
```bash
git add .
```

### Step 5: Check Status (Optional)
```bash
git status
```

### Step 6: Create Initial Commit
```bash
git commit -m "Initial commit: Hierarchical Product Classification System

- BERT-based hierarchical classifier with constraint masking
- GECE hybrid architecture combining global-local supervision  
- Masked inference approach with cascaded constraints
- 98% brand accuracy, 88-91% hierarchical accuracy
- 45x training speedup through embedding freezing"
```

### Step 7: Set Default Branch to Main
```bash
git branch -M main
```

### Step 8: Create GitHub Repository

**Before continuing, go to GitHub:**
1. Visit: https://github.com/new
2. Repository name: `hierarchical-product-classification`
3. Description: `Multi-task learning architecture for e-commerce product classification using BERT and hierarchical constraints`
4. Choose **Public** or **Private**
5. **DO NOT** check "Initialize with README" (we already have one)
6. Click **"Create repository"**

### Step 9: Add Remote Origin (Replace YOUR_USERNAME)

**For HTTPS:**
```bash
git remote add origin https://github.com/YOUR_USERNAME/hierarchical-product-classification.git
```

**For SSH (if you have SSH keys):**
```bash
git remote add origin git@github.com:YOUR_USERNAME/hierarchical-product-classification.git
```

### Step 10: Verify Remote
```bash
git remote -v
```

### Step 11: Push to GitHub
```bash
git push -u origin main
```

**Authentication:**
- **HTTPS**: Enter GitHub username + Personal Access Token (NOT password)
- **SSH**: No credentials needed if SSH keys are configured

---

## CREATING PERSONAL ACCESS TOKEN (For HTTPS)

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Name: `Hierarchical Product Classification`
4. Expiration: Choose duration
5. Select scopes: **✓ repo** (full control of private repositories)
6. Click **"Generate token"**
7. **COPY THE TOKEN** (you won't see it again!)
8. Use this token as your password when pushing

---

## VERIFICATION

After pushing successfully, visit:
```
https://github.com/YOUR_USERNAME/hierarchical-product-classification
```

You should see:
- ✓ README.md with project overview
- ✓ Jupyter notebook (BERT_nlp_final_project.ipynb)
- ✓ PDF reports (2 files)
- ✓ requirements.txt
- ✓ .gitignore
- ✓ All documentation files

---

## 🔄 FUTURE UPDATES

After initial setup, use these commands to push changes:

```bash
cd /mnt/user-data/outputs/hierarchical-product-classification
git add .
git commit -m "Your descriptive commit message"
git push
```

---

## TROUBLESHOOTING

### Error: "Authentication failed"
**Solution:** Use Personal Access Token instead of password

### Error: "Repository not found"  
**Solution:** Check that you created the repo on GitHub first

### Error: "Support for password authentication was removed"
**Solution:** Create and use a Personal Access Token

### Error: "Permission denied (publickey)" [SSH]
**Solution:** Set up SSH keys or use HTTPS method

### To switch from HTTPS to SSH (or vice versa):
```bash
# View current remote
git remote -v

# Change to SSH
git remote set-url origin git@github.com:YOUR_USERNAME/hierarchical-product-classification.git

# Or change to HTTPS
git remote set-url origin https://github.com/YOUR_USERNAME/hierarchical-product-classification.git
```

---

## RECOMMENDED: After Pushing to GitHub

1. **Add Topics/Tags** on GitHub:
   - `machine-learning`
   - `nlp`
   - `bert`
   - `transformers`
   - `hierarchical-classification`
   - `deep-learning`
   - `pytorch`
   - `e-commerce`

2. **Star Your Repository** to make it easy to find

3. **Add Repository to Your Resume** - Use this link format:
   ```
   github.com/YOUR_USERNAME/hierarchical-product-classification
   ```

4. **Consider Adding:**
   - LICENSE file (MIT, Apache 2.0, etc.)
   - CONTRIBUTING.md if you want contributions
   - GitHub Actions for CI/CD

---

##  WHAT'S INCLUDED IN YOUR REPOSITORY

```
hierarchical-product-classification/
├── BERT_nlp_final_project.ipynb       # Main implementation notebook
├── FinalProjectReport_NLP.pdf          # Comprehensive final report  
├── NLP_Project_Report_Phase_I.pdf      # Phase 1 report
├── README.md                           # Project overview & results
├── requirements.txt                    # Python dependencies
├── .gitignore                         # Git ignore rules
├── GIT_SETUP_GUIDE.md                 # Detailed Git instructions
├── QUICK_REFERENCE.md                 # Quick command reference
└── setup_git.sh                       # Automated setup script
```

---

##  TIPS FOR SUCCESS

✓ **Use clear commit messages** - Describe what changed and why
✓ **Commit frequently** - Small, logical commits are better
✓ **Pull before push** - `git pull` before `git push` to avoid conflicts
✓ **Check .gitignore** - Don't commit large data files or models
✓ **Write good README** - Already done for you! 

---

**Ready to go? Choose OPTION 1 (automated) or OPTION 2 (manual) above and start pushing!** 

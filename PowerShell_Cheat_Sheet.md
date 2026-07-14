# PowerShell Cheat Sheet

A practical PowerShell reference for daily engineering, Git, Python, and project work.

---

# Table of Contents

- #basic-calculator
- #navigation
- #file-management
- #file-information
- [Search & Discovery] #networking
- [Git Essentials](#gitthon Development](#python-development[Useful Aliases](#useful-aliases)
er

---

# Basic Calculator

PowerShell can perform arithmetic directly.

## Addition

```powershell
5 + 3
```

Output:

```text
8
```

## Subtraction

```powershell
10 - 2
```

Output:

```text
8
```

## Multiplication

```powershell
7 * 4
```

Output:

```text
28
```

## Division

```powershell
10 / 2
```

Output:

```text
5
```

---

# Navigation

## Show Current Location

```powershell
pwd
```

or

```powershell
Get-Location
```

Example:

```text
C:\Users\bernabe\Documents\GitHub\warehouse-analytics-toolkit
```

---

## List Files and Folders

```powershell
ls
```

or

```powershell
Get-ChildItem
```

---

## Show Hidden Files

```powershell
ls -Force
```

Useful for:

```text
.git
.gitignore
.vscode
```

---

## Change Directory

```powershell
cd docs
```

or

```powershell
Set-Location docs
```

---

## Move Up One Directory

```powershell
cd ..
```

---

## Clear Console

```powershell
cls
```

or

```powershell
Clear-Host
```

---

## Display Folder Structure

```powershell
tree
```

Show files as well:

```powershell
tree /f
```

---

# File Management

## Create Folder

```powershell
mkdir reports
```

Nested folders:

```powershell
mkdir docs/Warehouse-Systems-Learning/notes
```

---

## Create Empty File

```powershell
New-Item README.md -ItemType File
```

---

## Open File in VS Code

```powershell
code README.md
```

Open current folder:

```powershell
code .
```

---

## Copy File

```powershell
Copy-Item source.txt destination.txt
```

---

## Move File

```powershell
Move-Item source.txt archive\
```

---

## Rename File

```powershell
Rename-Item old_name.md new_name.md
```

---

## Delete File

```powershell
Remove-Item file.txt
```

Delete folder:

```powershell
Remove-Item foldername -Recurse
```

---

# File Information

## Show File Details

```powershell
Get-Item README.md
```

---

## Show All File Properties

```powershell
Get-Item README.md | Format-List *
```

Useful information:

```text
Name
Length
Directory
CreationTime
LastWriteTime
Extension
```

---

## Read File Contents

```powershell
Get-Content README.md
```

---

## First 20 Lines

```powershell
Get-Content README.md -Head 20
```

---

## Last 20 Lines

```powershell
Get-Content README.md -Tail 20
```

---

## Show Folder Size

```powershell
(Get-ChildItem -Recurse | Measure-Object -Property Length -Sum).Sum
```

---

# Search & Discovery

## Find Markdown Files

```powershell
Get-ChildItem -Recurse -Filter "*.md"
```

---

## Find Python Files

```powershell
Get-ChildItem -Recurse -Filter "*.py"
```

---

## Find Specific File

```powershell
Get-ChildItem -Recurse -Filter "README.md"
```

---

## Count Files

```powershell
(Get-ChildItem -Recurse).Count
```

---

## Largest Files

```powershell
Get-ChildItem -Recurse |
Sort-Object Length -Descending |
Select-Object Name, Length -First 10
```

---

# Networking

## Show IP Address

```powershell
Get-NetIPAddress
```

or

```powershell
ipconfig
```

---

## Ping a Host

```powershell
Test-Connection google.com -Count 4
```

---

## DNS Lookup

```powershell
Resolve-DnsName google.com
```

---

## SSH Connection

```powershell
ssh user@192.168.1.100
```

Example:

```powershell
ssh pi@192.168.1.50
```

Specify port:

```powershell
ssh pi@192.168.1.50 -p 22
```

---

# Git Essentials

## Check Repository Status

```powershell
git status
```

---

## View Changes

All files:

```powershell
git diff
```

Specific file:

```powershell
git diff README.md
```

---

## Show Current Branch

```powershell
git branch --show-current
```

---

## List Branches

```powershell
git branch
```

---

## Add Specific File

```powershell
git add README.md
```

---

## Add Folder

```powershell
git add docs/
```

---

## Commit Changes

```powershell
git commit -m "docs: update roadmap"
```

---

## View Commit History

```powershell
git log --oneline
```

---

## View File History

```powershell
git log -- README.md
```

---

## List Tracked Files

```powershell
git ls-files
```

---

# Python Development

## Create Virtual Environment

```powershell
python -m venv .venv
```

---

## Activate Virtual Environment

```powershell
.venv\Scripts\activate
```

---

## Install Package

```powershell
pip install pandas
```

---

## List Installed Packages

```powershell
pip list
```

---

## Run Python Script

```powershell
python src/kpi_engine.py
```

Example:

```powershell
python src/abc_analysis.py
```

---

# Daily Workflow

## Start of Day

```powershell
pwd
ls
git status
```

---

## Before Committing

```powershell
git diff
git status
```

---

## Before Pushing

```powershell
git log --oneline -5
git push
```

---

# Useful Aliases

| Command | Alias |
|----------|----------|
| Get-ChildItem | ls |
| Set-Location | cd |
| Copy-Item | cp |
| Move-Item | mv |
| Remove-Item | rm |
| Clear-Host | cls |

---

# Personal Reminder

Understand what you're changing before committing:

```powershell
git diff file.py
git add file.py
git commit -m "meaningful message"
```

Avoid:

```powershell
git add .
git commit -m "updates"
```

unless you intentionally want to commit everything.

Preferred workflow:

```powershell
git status
git diff filename.py
git add filename.py
git commit -m "feat: meaningful change"
git push
```

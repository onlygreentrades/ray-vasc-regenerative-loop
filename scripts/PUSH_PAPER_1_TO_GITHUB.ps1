# RAY-VASC Paper 1 v1.1 push script
# Run in PowerShell after downloading and extracting ray_vasc_paper1_v1_1_PUSH_READY.zip.

$ErrorActionPreference = "Stop"

$Repo = "C:\Users\onlyg\ray-vasc-regenerative-loop"
$Remote = "https://github.com/onlygreentrades/ray-vasc-regenerative-loop.git"
$BundleRoot = "C:\Users\onlyg\Downloads\ray_vasc_paper1_v1_1_PUSH_READY"
$AuthoritativeDocx = "C:\Users\onlyg\Downloads\The_Brain_That_Remains_v1.1.docx"
$Branch = "paper-1-v1.1-publication-release"

if (!(Test-Path $Repo)) {
    git clone $Remote $Repo
}

if (!(Test-Path $BundleRoot)) {
    $ZipPath = "C:\Users\onlyg\Downloads\ray_vasc_paper1_v1_1_PUSH_READY.zip"
    if (!(Test-Path $ZipPath)) { throw "Bundle zip not found: $ZipPath" }
    Expand-Archive -Path $ZipPath -DestinationPath $BundleRoot -Force
}

if (!(Test-Path $AuthoritativeDocx)) {
    throw "Authoritative final DOCX not found: $AuthoritativeDocx"
}

Set-Location $Repo
git fetch origin
git checkout main
git pull origin main

# Create or reset branch from latest main
if (git show-ref --verify --quiet "refs/heads/$Branch") {
    git checkout $Branch
} else {
    git checkout -b $Branch
}

# Copy bundle into repo root
Copy-Item -Path "$BundleRoot\*" -Destination $Repo -Recurse -Force

# Force the exact final local manuscript into the repo package
New-Item -ItemType Directory -Path "$Repo\manuscript" -Force | Out-Null
Copy-Item -Path $AuthoritativeDocx -Destination "$Repo\manuscript\The_Brain_That_Remains_v1.1.docx" -Force

# Quick verification
Write-Host "\nRepo status before commit:" -ForegroundColor Cyan
git status --short

# Stage public research packet
git add README.md CHANGELOG.md CITATION.cff LICENSE LICENSE-DOCS-CC-BY-4.0.txt ATTRIBUTION.md PRIVACY.md REGULATORY_BOUNDARY.md .gitignore
if (Test-Path manuscript) { git add manuscript }
if (Test-Path tables) { git add tables }
if (Test-Path docs) { git add docs }
if (Test-Path scripts) { git add scripts }
if (Test-Path schemas) { git add schemas }
if (Test-Path analysis) { git add analysis }
if (Test-Path forms) { git add forms }
if (Test-Path protocols) { git add protocols }

# Commit if changes exist
$Changes = git diff --cached --name-only
if ([string]::IsNullOrWhiteSpace($Changes)) {
    Write-Host "No staged changes to commit." -ForegroundColor Yellow
} else {
    git commit -m "Publish Paper 1 manuscript v1.1 public research packet"
    git push -u origin $Branch
    Write-Host "\nPushed branch: $Branch" -ForegroundColor Green
    Write-Host "Open PR: https://github.com/onlygreentrades/ray-vasc-regenerative-loop/pull/new/$Branch" -ForegroundColor Green
}

<#
.SYNOPSIS
  Stage, commit, tag, and optionally push the Paper 4 APPRE v0.1.1 public release.

.USAGE
  Run from the repo root after unzipping the release package into the repo root:
  powershell -ExecutionPolicy Bypass -File .\scripts\push_paper4_v0.1.1.ps1

  Dry run:
  powershell -ExecutionPolicy Bypass -File .\scripts\push_paper4_v0.1.1.ps1 -DryRun

  Commit/tag without pushing:
  powershell -ExecutionPolicy Bypass -File .\scripts\push_paper4_v0.1.1.ps1 -NoPush
#>
param(
    [switch]$DryRun,
    [switch]$NoPush
)

$ErrorActionPreference = "Stop"
$CommitMessage = "Add Paper 4 APPRE v0.1.1 public release"
$TagName = "v2.3-paper4-appre-methods-architecture"
$ReleaseTitle = "RAY-VASC v2.3 - Paper 4 APPRE Schema-and-Rules Methods Architecture"

function Run-Step {
    param([string]$Command)
    Write-Host "> $Command" -ForegroundColor Cyan
    if (-not $DryRun) {
        Invoke-Expression $Command
    }
}

if (-not (Test-Path ".git")) {
    throw "Run this script from the ray-vasc-regenerative-loop repository root. .git folder not found."
}

Write-Host "Paper 4 APPRE v0.1.1 release push" -ForegroundColor Green
Write-Host "Commit: $CommitMessage"
Write-Host "Tag:    $TagName"
Write-Host "Title:  $ReleaseTitle"

$Paths = @(
    "manuscripts/paper4/final",
    "supplements/paper4/final",
    "schemas/appre/v0.1.1",
    "data/synthetic/appre/v0.1.1",
    "validation/appre/v0.1.1",
    "analysis/appre/v0.1.1",
    "docs/appre",
    "releases/paper4/final",
    "archive/appre/v0.1.1",
    "README_PAPER4_RELEASE_v0.1.1.md",
    "CHANGELOG_PAPER4_APPRE_v0.1.1.md",
    "PAPER_INDEX_APPEND_PAPER4.md",
    "SHA256SUMS_PAPER4_APPRE_v0.1.1.txt",
    "scripts/push_paper4_v0.1.1.ps1",
    "scripts/verify_paper4_v0.1.1.ps1"
)

foreach ($Path in $Paths) {
    if (Test-Path $Path) {
        Run-Step "git add -- `"$Path`""
    } else {
        Write-Host "Missing expected path: $Path" -ForegroundColor Yellow
    }
}

Write-Host "\nStaged files:" -ForegroundColor Green
if (-not $DryRun) { git diff --cached --name-only }

$StagedCount = 0
if (-not $DryRun) {
    $StagedCount = (git diff --cached --name-only | Measure-Object).Count
    if ($StagedCount -eq 0) {
        Write-Host "No staged changes. Nothing to commit." -ForegroundColor Yellow
        exit 0
    }
}

Run-Step "git commit -m `"$CommitMessage`""

# Create or update tag safely.
if (-not $DryRun) {
    $ExistingTag = git tag --list $TagName
    if ($ExistingTag) {
        Write-Host "Tag already exists locally: $TagName" -ForegroundColor Yellow
    } else {
        Run-Step "git tag -a $TagName -m `"$ReleaseTitle`""
    }
}

if ($NoPush) {
    Write-Host "NoPush set. Commit/tag completed locally only." -ForegroundColor Yellow
    exit 0
}

Run-Step "git push origin HEAD"
Run-Step "git push origin $TagName"

Write-Host "Paper 4 APPRE v0.1.1 pushed successfully." -ForegroundColor Green

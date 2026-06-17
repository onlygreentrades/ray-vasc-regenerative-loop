# RAY-VASC root dashboard cleanup for Paper 4 materials
$ErrorActionPreference = "Stop"

if (-not (Test-Path ".git")) { throw "Stop: .git folder not found. Run from canonical repo root." }

$Remote = git remote get-url origin
if ($Remote -notlike "*github.com/onlygreentrades/ray-vasc-regenerative-loop.git*") {
  throw "Stop: wrong Git remote detected: $Remote"
}

$MetadataDir = "releases/paper4/final/metadata"
New-Item -ItemType Directory -Force -Path $MetadataDir | Out-Null

$Moves = @{
  "CHANGELOG_PAPER4_APPRE_v0.1.1.md" = "$MetadataDir/CHANGELOG_PAPER4_APPRE_v0.1.1.md"
  "PAPER_INDEX_APPEND_PAPER4.md" = "$MetadataDir/PAPER_INDEX_APPEND_PAPER4.md"
  "README_PAPER4_RELEASE_v0.1.1.md" = "$MetadataDir/README_PAPER4_RELEASE_v0.1.1.md"
  "RELEASE_CLEANUP_NOTE_PAPER4_APPRE_v0.1.1.md" = "$MetadataDir/RELEASE_CLEANUP_NOTE_PAPER4_APPRE_v0.1.1.md"
  "PAPER4_FINAL_BUNDLE_UPDATE_NOTE_2026-06-17.md" = "$MetadataDir/PAPER4_FINAL_BUNDLE_UPDATE_NOTE_2026-06-17.md"
  "BUNDLE_CONTENTS_PAPER4_APPRE_v0.1.1_FINAL.md" = "$MetadataDir/BUNDLE_CONTENTS_PAPER4_APPRE_v0.1.1_FINAL.md"
  "SHA256SUMS_PAPER4_APPRE_v0.1.1.txt" = "$MetadataDir/SHA256SUMS_PAPER4_APPRE_v0.1.1.txt"
  "MANIFEST_SHA256.txt" = "$MetadataDir/MANIFEST_SHA256.txt"
}

foreach ($Source in $Moves.Keys) {
  $Target = $Moves[$Source]
  if (Test-Path $Source) {
    git mv -f $Source $Target
  }
}

git add README.md PAPER_INDEX.md REPO_MAP.md
git add scripts/clean_root_dashboard_paper4_v0.1.1.ps1
git add scripts/verify_root_dashboard_clean_paper4_v0.1.1.ps1
git add releases/paper4/final/metadata/ROOT_DASHBOARD_CLEANUP_NOTE_PAPER4_v0.1.1.md

Write-Host "Root dashboard cleanup staged. Review with: git status --short" -ForegroundColor Green

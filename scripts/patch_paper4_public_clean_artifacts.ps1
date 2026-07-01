# RAY-VASC Paper 4 APPRE v0.1.1 Public-Clean Artifact Patch
# Run from: C:\Users\onlyg\Documents\ray-vasc-regenerative-loop-canonical

$Repo = "onlygreentrades/ray-vasc-regenerative-loop"
$Tag = "v2.3-paper4-appre-methods-architecture"
$ReleaseTitle = "RAY-VASC v2.3 — Paper 4 APPRE Schema-and-Rules Methods Architecture"
$CleanZip = "C:\Users\onlyg\Downloads\RAY-VASC_Paper4_APPRE_v0.1.1_PUBLIC_CLEAN_RELEASE_2026-06-15.zip"
$AssetLabel = "RAY-VASC Paper 4 APPRE v0.1.1 Public Release Bundle"

if (-not (Test-Path ".git")) { throw "Stop: run from canonical repo root." }
$Remote = git remote get-url origin
if ($Remote -notlike "*github.com/onlygreentrades/ray-vasc-regenerative-loop.git*") { throw "Stop: wrong remote: $Remote" }
if (-not (Test-Path $CleanZip)) { throw "Stop: clean zip not found: $CleanZip" }

Expand-Archive -Path $CleanZip -DestinationPath . -Force

# Confirm clean manuscript markdown no longer carries internal status/changelog front matter.
$ManuscriptMd = ".\manuscripts\paper4\final\Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.md"
$BadHits = Select-String -Path $ManuscriptMd -Pattern "Status: Public-facing final manuscript|Changelog: v0.1.1 incorporates|^Version: v0.1.1" -ErrorAction SilentlyContinue
if ($BadHits) { throw "Stop: internal manuscript front-matter still present in clean MD." }

powershell -ExecutionPolicy Bypass -File .\scripts\verify_paper4_v0.1.1.ps1

git status --short

git add manuscripts/paper4/final
git add releases/paper4/final
git add RELEASE_CLEANUP_NOTE_PAPER4_APPRE_v0.1.1.md
git add SHA256SUMS_PAPER4_APPRE_v0.1.1.txt
git add scripts/patch_paper4_public_clean_artifacts.ps1

git commit -m "Clean Paper 4 APPRE v0.1.1 public manuscript artifacts"
git push origin HEAD

# Update existing GitHub release asset with clean bundle. Delete old label if present, then upload clean asset under the same label.
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { throw "Stop: GitHub CLI not found." }
gh auth status
if ($LASTEXITCODE -ne 0) { throw "Stop: GitHub CLI not authenticated." }

gh release edit $Tag -R $Repo --title $ReleaseTitle --latest
# Deleting may fail if asset name differs; continue to upload with clobber.
gh release delete-asset $Tag $AssetLabel -R $Repo -y 2>$null
gh release upload $Tag "$CleanZip#$AssetLabel" -R $Repo --clobber

gh release view $Tag -R $Repo --web

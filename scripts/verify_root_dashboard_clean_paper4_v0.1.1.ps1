# Verify root dashboard stays clean and Paper 4 metadata moved under release tree.
$ErrorActionPreference = "Stop"

$UnexpectedRoot = @(
  "CHANGELOG_PAPER4_APPRE_v0.1.1.md",
  "PAPER_INDEX_APPEND_PAPER4.md",
  "README_PAPER4_RELEASE_v0.1.1.md",
  "RELEASE_CLEANUP_NOTE_PAPER4_APPRE_v0.1.1.md",
  "PAPER4_FINAL_BUNDLE_UPDATE_NOTE_2026-06-17.md",
  "BUNDLE_CONTENTS_PAPER4_APPRE_v0.1.1_FINAL.md",
  "SHA256SUMS_PAPER4_APPRE_v0.1.1.txt",
  "MANIFEST_SHA256.txt"
)

$Bad = @()
foreach ($Path in $UnexpectedRoot) {
  if (Test-Path $Path) { $Bad += $Path }
}
if ($Bad.Count -gt 0) {
  Write-Host "Paper-specific files still present in root:" -ForegroundColor Red
  $Bad | ForEach-Object { Write-Host " - $_" }
  exit 1
}

$Required = @(
  "README.md",
  "PAPER_INDEX.md",
  "REPO_MAP.md",
  "releases/paper4/final/metadata/CHANGELOG_PAPER4_APPRE_v0.1.1.md",
  "releases/paper4/final/metadata/README_PAPER4_RELEASE_v0.1.1.md",
  "releases/paper4/final/metadata/BUNDLE_CONTENTS_PAPER4_APPRE_v0.1.1_FINAL.md",
  "figures/paper4/final/Figure-1_Publication-Sequence-and-APPRE-Role_v0.1.1.png",
  "figures/paper4/final/Figure-2_APPRE-Entity-Flow-Governance-and-Provenance_v0.1.1.png",
  "figures/paper4/final/Figure-3_APPRE-FHIR-Conceptual-Crosswalk_v0.1.1.png",
  "supplements/paper4/final/Paper-4_APPRE_Example-Schema_v0.1.1.json",
  "supplements/paper4/final/Paper-4_APPRE_Data-Dictionary_v0.1.1.csv",
  "supplements/paper4/final/Paper-4_APPRE_Worked-Synthetic-Cycle_v0.1.1.md"
)

$Missing = @()
foreach ($Path in $Required) {
  if (-not (Test-Path $Path)) { $Missing += $Path }
}
if ($Missing.Count -gt 0) {
  Write-Host "Missing required files:" -ForegroundColor Red
  $Missing | ForEach-Object { Write-Host " - $_" }
  exit 1
}

$Readme = Get-Content README.md -Raw
if ($Readme -match "three-part public manuscript triad") {
  Write-Host "Old README language still present." -ForegroundColor Red
  exit 1
}

Write-Host "Root dashboard cleanup verification passed." -ForegroundColor Green

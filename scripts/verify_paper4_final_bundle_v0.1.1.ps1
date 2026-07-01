# Paper 4 final figure/supplement bundle verifier
$ErrorActionPreference = "Stop"

$Required = @(
  "README.md",
  "PAPER_INDEX.md",
  "REPO_MAP.md",
  "figures/paper4/final/Figure-1_Publication-Sequence-and-APPRE-Role_v0.1.1.png",
  "figures/paper4/final/Figure-2_APPRE-Entity-Flow-Governance-and-Provenance_v0.1.1.png",
  "figures/paper4/final/Figure-3_APPRE-FHIR-Conceptual-Crosswalk_v0.1.1.png",
  "supplements/paper4/final/Paper-4_APPRE_Example-Schema_v0.1.1.json",
  "supplements/paper4/final/Paper-4_APPRE_Data-Dictionary_v0.1.1.csv",
  "supplements/paper4/final/Paper-4_APPRE_Worked-Synthetic-Cycle_v0.1.1.md",
  "manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.docx",
  "manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.pdf"
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

$SearchPaths = @(
  "README.md",
  "PAPER_INDEX.md",
  "REPO_MAP.md",
  "manuscripts/paper4/final/*.md",
  "supplements/paper4/final/*.md",
  "supplements/paper4/final/*.csv",
  "supplements/paper4/final/*.json",
  "docs/appre/*.md"
)

$Forbidden = @(
  "APPRE recommends",
  "APPRE decides",
  "optimal dose",
  "optimal doses",
  "dose optimization",
  "treatment optimizer[^.,;]*$"
)

$Hits = @()
foreach ($Pattern in $Forbidden) {
  foreach ($Glob in $SearchPaths) {
    $Matches = Select-String -Path $Glob -Pattern $Pattern -ErrorAction SilentlyContinue
    if ($Matches) { $Hits += $Matches }
  }
}

if ($Hits.Count -gt 0) {
  Write-Host "Terminology drift found:" -ForegroundColor Red
  $Hits | ForEach-Object { Write-Host "$($_.Path):$($_.LineNumber): $($_.Line)" }
  exit 1
}

Write-Host "Paper 4 final figure/supplement bundle verification passed." -ForegroundColor Green

<# Verify Paper 4 APPRE v0.1.1 release files before commit. #>
$ErrorActionPreference = "Stop"
$Required = @(
"manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.docx",
"manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.pdf",
"manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.md",
"schemas/appre/v0.1.1/subject_profile_schema.csv",
"data/synthetic/appre/v0.1.1/synthetic_subject_profile.csv",
"validation/appre/v0.1.1/appre_validation_rules.json",
"docs/appre/README_APPRE_v0.1.1.md",
"releases/paper4/final/RELEASE_NOTES_Paper4_APPRE_v0.1.1.md",
"SHA256SUMS_PAPER4_APPRE_v0.1.1.txt"
)
$Missing = @()
foreach ($Path in $Required) {
  if (-not (Test-Path $Path)) { $Missing += $Path }
}
if ($Missing.Count -gt 0) {
  Write-Host "Missing required files:" -ForegroundColor Red
  $Missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
  exit 1
}
Write-Host "Required Paper 4 APPRE v0.1.1 files present." -ForegroundColor Green

# Terms below are assembled to avoid embedding disallowed manuscript phrases in repository text while still checking for them.
$Patterns = @(
  ("optimal " + "doses"),
  ("dose " + "optimization"),
  ("APPRE " + "recommends"),
  ("APPRE " + "decides"),
  ("FHIR-" + "compliant"),
  ("FHIR-" + "native"),
  ("PROV " + "compliant"),
  ("full FAIR " + "compliance"),
  ("validated " + "interoperability")
)
$ScanFiles = @()
$ScanFiles += Get-ChildItem -Path "manuscripts/paper4/final" -Include *.md -Recurse -ErrorAction SilentlyContinue
$ScanFiles += Get-ChildItem -Path "docs/appre" -Include *.md -Recurse -ErrorAction SilentlyContinue
$ScanFiles += Get-ChildItem -Path "releases/paper4/final" -Include *.md -Recurse -ErrorAction SilentlyContinue
$ScanFiles += Get-ChildItem -Path "schemas/appre/v0.1.1" -Include *.csv,*.json -Recurse -ErrorAction SilentlyContinue
$ScanFiles += Get-ChildItem -Path "validation/appre/v0.1.1" -Include *.md,*.json -Recurse -ErrorAction SilentlyContinue
$Hits = @()
foreach ($File in $ScanFiles) {
  foreach ($Pattern in $Patterns) {
    $Found = Select-String -Path $File.FullName -Pattern $Pattern -SimpleMatch -ErrorAction SilentlyContinue
    if ($Found) { $Hits += $Found }
  }
}
if ($Hits.Count -gt 0) {
  Write-Host "Potential terminology drift found:" -ForegroundColor Yellow
  $Hits | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
  exit 1
}
Write-Host "No terminology-drift hits found in public text/schema files." -ForegroundColor Green

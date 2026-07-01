# Run from canonical repo root after extracting the release bundle into the repo.
$Tag = "v2.5-paper4-appre-v1.0.0-figure-integrated"
$Repo = "onlygreentrades/ray-vasc-regenerative-loop"

if (-not (Test-Path ".git")) { throw "Stop: run from repo root." }
$Remote = git remote get-url origin
if ($Remote -notlike "*github.com/onlygreentrades/ray-vasc-regenerative-loop.git*") { throw "Stop: wrong remote: $Remote" }

git pull origin main

git add manuscripts/paper4/final
git add figures/paper4/final
git add releases/paper4/final/metadata

git status --short

git commit -m "Add Paper 4 APPRE v1.0.0 figure-integrated manuscript"
git tag -a $Tag -m "RAY-VASC Paper 4 APPRE v1.0.0 figure-integrated public release"
git push origin HEAD
git push origin $Tag

gh release create $Tag `
  -R $Repo `
  --title "RAY-VASC v2.5 — Paper 4 APPRE v1.0.0 Figure-Integrated Release" `
  --notes "Adds the Paper 4 APPRE v1.0.0 figure-integrated public manuscript, 8 core architecture figures, alt-text metadata, release notes, and checksum manifest. APPRE is a schema-and-rules documentation framework; not AI, not CDS, not SaMD, not a treatment optimizer. Not medical advice. Not legal advice." `
  --latest

# Repository Map

This repository is intentionally organized around manuscripts first, then reusable research artifacts.

## Root dashboard

Root files should stay limited to program-level navigation and governance:

```text
README.md
PAPER_INDEX.md
REPO_MAP.md
CHANGELOG.md
CITATION.cff
LICENSE-DOCS-CC-BY-4.0.txt
ATTRIBUTION.md
PRIVACY.md
REGULATORY_BOUNDARY.md
```

Paper-specific release notes, checksums, cleanup notes, appendices, and bundle notes belong under the relevant paper release tree, not the root dashboard.

## Paper 1 v1.1.0 Figure-Enhanced File Map

| Path | Purpose |
|---|---|
| manuscripts/paper1/final/Paper-1_The-Brain-That-Remains_v1.1.0_Figure-Enhanced.docx | Editable figure-enhanced manuscript |
| manuscripts/paper1/final/Paper-1_The-Brain-That-Remains_v1.1.0_Figure-Enhanced.pdf | Rendered public manuscript |
| manuscripts/paper1/final/Paper-1_v1.1.0_Figure-Caption-AltText-Bank.csv | Figure caption and accessibility metadata |
| manuscripts/paper1/final/Paper-1_v1.1.0_A11Y_Audit.json | Accessibility audit report |
| figures/paper1/final/ | Final Paper 1 figure PNG assets |
| releases/paper1/v1.1.0/ | Release package and SHA256 manifest |

## Public DOI Ledger

| Artifact | Record | DOI / URL |
|---|---|---|
| Paper 1 Zenodo preprint | Version DOI | https://doi.org/10.5281/zenodo.20832833 |
| Paper 1 Zenodo preprint | All-versions DOI | https://doi.org/10.5281/zenodo.20832832 |
| Paper 2 OSF registration | OSF DOI | https://doi.org/10.17605/OSF.IO/WESZY |
| Paper 3 Zenodo preprint | Version DOI | https://doi.org/10.5281/zenodo.20834331 |
| Paper 3 Zenodo preprint | All-versions DOI | https://doi.org/10.5281/zenodo.20834330 |
| Paper 4 | Not externally deposited | No DOI assigned |

## Manuscripts

```text
manuscripts/
â”œâ”€â”€ paper1/final/
â”œâ”€â”€ paper2/final/
â”œâ”€â”€ paper3/final/
â””â”€â”€ paper4/final/
```

## Paper 4 Release Posture

Paper 4 directories are retained as local repository artifacts for continued revision. Paper 4 has not been deposited to OSF, Zenodo, or ORCID and should not be cited as DOI-backed until a future release gate is passed.

## Paper 4 APPRE

```text
figures/paper4/final/
supplements/paper4/final/
schemas/appre/v0.1.1/
data/synthetic/appre/v0.1.1/
validation/appre/v0.1.1/
analysis/appre/v0.1.1/
docs/appre/
releases/paper4/final/
releases/paper4/final/metadata/
```

## Release posture

GitHub is the working version-control mechanism. OSF is the archival/public registration layer. External prospective data collection requires separate ethics, consent, privacy, and clinical governance.


## Paper 2 Published Record Map

| Artifact | Location |
|---|---|
| Paper 2 Zenodo version DOI | https://doi.org/10.5281/zenodo.21111619 |
| Paper 2 Zenodo all-versions DOI | https://doi.org/10.5281/zenodo.21111618 |
| Paper 2 OSF registration DOI | https://doi.org/10.17605/OSF.IO/WESZY |
| Paper 2 GitHub release | releases/tag/paper2-figure-enhanced-v1.1.0 |
| Paper 2 citation note | docs/paper2/PAPER2_PUBLIC_CITATION.md |
| Paper 2 figure insertion report | docs/paper2/FIGURE_INSERTION_REPORT.md |
| Paper 2 manuscript files | manuscripts/paper2/final/ |
| Paper 2 supplemental files | supplements/paper2/final/ |

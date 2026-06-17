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

## Manuscripts

```text
manuscripts/
├── paper1/final/
├── paper2/final/
├── paper3/final/
└── paper4/final/
```

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

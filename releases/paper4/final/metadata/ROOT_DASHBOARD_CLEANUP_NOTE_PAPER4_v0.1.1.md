# Root Dashboard Cleanup Note — Paper 4 APPRE

**Date:** 2026-06-17  
**Purpose:** Move Paper 4-specific release metadata out of the GitHub root dashboard and into the Paper 4 release tree.

## Rationale

The root dashboard should be a clean public gateway. Paper-specific changelogs, release notes, checksums, cleanup notes, and appendices belong under the relevant paper release path.

## New location

`releases/paper4/final/metadata/`

## Root files preserved

- `README.md`
- `PAPER_INDEX.md`
- `REPO_MAP.md`
- `CHANGELOG.md`
- `CITATION.cff`
- `LICENSE-DOCS-CC-BY-4.0.txt`
- `ATTRIBUTION.md`
- `PRIVACY.md`
- `REGULATORY_BOUNDARY.md`

## Boundary

No manuscript content is changed by this cleanup. This is a public-facing repository organization patch.

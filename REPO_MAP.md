# Repository Map

This repository is organized around the RAY-VASC Thesis, the published manuscript sequence, and reusable research artifacts. The map reflects the actual `main` branch public tree as of 2026-07-20.

## Root Dashboard

Root files are limited to program-level navigation, citation, governance, licensing, chronology, and repository-wide integrity records.

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
MANIFEST_SHA256.txt
```

Paper-specific release notes, checksums, bundle notes, and metadata remain inside the corresponding manuscript or release lane.

## Canonical Public Tree

```text
ray-vasc-regenerative-loop/
|-- README.md
|-- PAPER_INDEX.md
|-- REPO_MAP.md
|-- CHANGELOG.md
|-- CITATION.cff
|-- LICENSE-DOCS-CC-BY-4.0.txt
|-- ATTRIBUTION.md
|-- PRIVACY.md
|-- REGULATORY_BOUNDARY.md
|-- MANIFEST_SHA256.txt
|
|-- manuscripts/
|   |-- thesis/final/
|   |-- paper1/final/
|   |-- paper2/final/
|   |-- paper3/final/
|   |   `-- figures/
|   `-- paper4/final/
|
|-- docs/
|   |-- appre/
|   |-- paper2/
|   `-- paper3/
|
|-- figures/
|   |-- thesis/final/
|   |-- paper1/final/
|   `-- paper4/final/
|
|-- supplements/
|   |-- paper2/final/
|   |   `-- figures/
|   `-- paper4/final/
|       `-- appre-v0.1.1/
|           |-- analysis/v0.1.1/
|           |-- data/synthetic/v0.1.1/
|           |-- schemas/v0.1.1/
|           `-- validation/v0.1.1/
|
|-- releases/
|   |-- paper1/final/
|   |-- paper1/v1.1.0/
|   |-- paper2/final/
|   |-- paper3/v1.1.0/
|   `-- paper4/final/
|       `-- metadata/
|
|-- scripts/
`-- archive/
```

## Thesis v1.0.0 File Map

| Path | Purpose |
|---|---|
| `manuscripts/thesis/final/RAY-VASC_Thesis_v1.0.0.pdf` | Searchable public thesis PDF |
| `manuscripts/thesis/final/RAY-VASC_Thesis_v1.0.0.docx` | Editable public thesis manuscript |
| `figures/thesis/final/THESIS_F01_Neuropathic_Repair-Remap_Hypothesis_Four-Operation_Model.png` | Full-resolution NRRH source figure embedded in the thesis |
| `figures/thesis/final/THESIS_F02_Three-Phase_Plasticity_Architecture.png` | Full-resolution Three-Phase Plasticity Architecture source figure |
| `figures/thesis/final/THESIS_F03_APPRE_Inputs_Filters_Responseome_Policy_Decision.png` | Full-resolution APPRE inputs-to-policy source figure |
| `figures/thesis/final/THESIS_FIGURE_CAPTIONS_AND_ALT_TEXT_v1.0.0.md` | Figure captions, alt text, provenance, and claim-boundary metadata |
| `figures/thesis/final/README.md` | Thesis figure-source folder orientation |

Public records:

- Zenodo DOI: https://doi.org/10.5281/zenodo.21457646
- OSF component: https://osf.io/nzawv/
- GitHub tag: `thesis-v1.0.0`

The thesis is a standalone program-level synthesis artifact. It is not Paper 5 and does not renumber the seven-paper sequence.

## Paper 1 v1.1.0 Figure-Enhanced File Map

| Path | Purpose |
|---|---|
| `manuscripts/paper1/final/Paper-1_The-Brain-That-Remains_v1.1.0_Figure-Enhanced.docx` | Editable figure-enhanced manuscript |
| `manuscripts/paper1/final/Paper-1_The-Brain-That-Remains_v1.1.0_Figure-Enhanced.pdf` | Rendered public manuscript |
| `manuscripts/paper1/final/Paper-1_v1.1.0_Figure-Caption-AltText-Bank.csv` | Figure caption and accessibility metadata |
| `manuscripts/paper1/final/Paper-1_v1.1.0_A11Y_Audit.json` | Accessibility audit report |
| `figures/paper1/final/` | Final Paper 1 figure PNG assets |
| `releases/paper1/v1.1.0/` | Versioned release package and SHA256 record |

## Paper 2 v1.1.0 Figure-Enhanced File Map

| Path | Purpose |
|---|---|
| `manuscripts/paper2/final/` | Final public Paper 2 PDF, DOCX, and README |
| `supplements/paper2/final/` | Analysis plan, schedule, EEG schedule, data dictionary, adverse-event log, checklist, and figure materials |
| `docs/paper2/PAPER2_PUBLIC_CITATION.md` | Public citation record |
| `docs/paper2/FIGURE_INSERTION_REPORT.md` | Figure integration report |
| `releases/paper2/final/` | Public release ZIP, release notes, and checksums |

## Paper 3 v1.1.0 Figure-Enhanced File Map

| Path | Purpose |
|---|---|
| `manuscripts/paper3/final/Paper-3_RAY-001-Baseline_v1.1.0_Figure-Enhanced.docx` | Editable figure-enhanced manuscript |
| `manuscripts/paper3/final/Paper-3_RAY-001-Baseline_v1.1.0_Figure-Enhanced.pdf` | Rendered public manuscript |
| `manuscripts/paper3/final/figures/` | Final Paper 3 figures |
| `docs/paper3/PAPER3_PUBLIC_CITATION.md` | Public citation record |
| `releases/paper3/v1.1.0/` | Versioned release package |

## Paper 4 v1.0.0 Figure-Integrated File Map

| Path | Purpose |
|---|---|
| `manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v1.0.0_Figure-Integrated.docx` | Editable figure-integrated manuscript |
| `manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v1.0.0_Figure-Integrated.pdf` | Rendered public manuscript |
| `figures/paper4/final/` | Paper 4 APPRE architecture figures |
| `supplements/paper4/final/` | Paper 4 data dictionary, schema examples, crosswalks, vocabularies, response-policy rules, reproducibility checklist, and worked synthetic cycle |
| `supplements/paper4/final/appre-v0.1.1/analysis/v0.1.1/` | APPRE analysis notebook templates |
| `supplements/paper4/final/appre-v0.1.1/data/synthetic/v0.1.1/` | Synthetic APPRE datasets |
| `supplements/paper4/final/appre-v0.1.1/schemas/v0.1.1/` | APPRE CSV and JSON schemas |
| `supplements/paper4/final/appre-v0.1.1/validation/v0.1.1/` | APPRE validation rules and privacy checklist |
| `docs/appre/` | APPRE implementation, governance, citation, and future software pathway notes |
| `releases/paper4/final/` | Paper 4 release ZIP, release notes, citation files, archive links, and checksums |
| `releases/paper4/final/metadata/` | Paper 4 deposit and release metadata |

Public records:

- Zenodo version DOI: https://doi.org/10.5281/zenodo.21116291
- Zenodo all-versions DOI: https://doi.org/10.5281/zenodo.21116290
- Standalone OSF archive: https://osf.io/nqybd/
- Parent-project OSF component: https://osf.io/dwr3v/
- GitHub release tag: `paper4-figure-integrated-v1.0.0`
- GitHub release: https://github.com/onlygreentrades/ray-vasc-regenerative-loop/releases/tag/paper4-figure-integrated-v1.0.0

## Public DOI and Archive Ledger

| Artifact | Current public record | DOI / URL |
|---|---|---|
| RAY-VASC Thesis v1.0.0 | Zenodo working paper | https://doi.org/10.5281/zenodo.21457646 |
| RAY-VASC Thesis | OSF component | https://osf.io/nzawv/ |
| Paper 1 v1.1.0 | Zenodo version DOI | https://doi.org/10.5281/zenodo.21109062 |
| Paper 1 | Zenodo all-versions DOI | https://doi.org/10.5281/zenodo.20832832 |
| Paper 1 | OSF component | https://osf.io/mxepj/ |
| Paper 2 v1.1.0 | Zenodo version DOI | https://doi.org/10.5281/zenodo.21111619 |
| Paper 2 | Zenodo all-versions DOI | https://doi.org/10.5281/zenodo.21111618 |
| Paper 2 | OSF registration DOI | https://doi.org/10.17605/OSF.IO/WESZY |
| Paper 3 v1.1.0 | Zenodo version DOI | https://doi.org/10.5281/zenodo.21113371 |
| Paper 3 | Zenodo all-versions DOI | https://doi.org/10.5281/zenodo.20834330 |
| Paper 3 | OSF component | https://osf.io/k8jhz/ |
| Paper 4 v1.0.0 | Zenodo version DOI | https://doi.org/10.5281/zenodo.21116291 |
| Paper 4 | Zenodo all-versions DOI | https://doi.org/10.5281/zenodo.21116290 |
| Paper 4 | Standalone OSF archive | https://osf.io/nqybd/ |
| Paper 4 | Parent-project OSF component | https://osf.io/dwr3v/ |

## Repository Synchronization Tag

- Current synchronized repository tag: `v2.4.1`
- Scope: thesis, Papers 1–4 public records, repository map, publication index, citation metadata, attribution, chronology, and repository-wide SHA256 manifest

## Release and Governance Posture

GitHub is the version-control and public source tree. Zenodo provides version-specific DOI preservation. OSF provides project, component, and registration records.

External prospective participant data collection requires separate ethics, consent, privacy, and clinical-governance review. Public repository materials remain de-identified and publication-safe.

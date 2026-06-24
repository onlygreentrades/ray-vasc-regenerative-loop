# RAY-VASC Regenerative Loop

**Public research repository for the RAY-VASC Regenerative Loop manuscript series**  
**Originating researcher:** Logan Henderson  
**Affiliation:** Independent Researcher, Houston, Texas, United States  
**Repository:** https://github.com/onlygreentrades/ray-vasc-regenerative-loop  
**OSF parent project:** https://osf.io/y2h79/  
**Paper 2 OSF registration DOI:** https://doi.org/10.17605/OSF.IO/WESZY  
**Paper 1 Zenodo DOI:** https://doi.org/10.5281/zenodo.20832833  
**Paper 3 Zenodo DOI:** https://doi.org/10.5281/zenodo.20834331

## Public DOI Ledger â€” Papers 1â€“3

| Paper | Public record | DOI | Status |
|---|---|---|---|
| Paper 1 | Zenodo preprint | [10.5281/zenodo.20832833](https://doi.org/10.5281/zenodo.20832833) | Public, archived, citable |
| Paper 2 | OSF registration | [10.17605/OSF.IO/WESZY](https://doi.org/10.17605/OSF.IO/WESZY) | Public, registered, citable |
| Paper 3 | Zenodo preprint | [10.5281/zenodo.20834331](https://doi.org/10.5281/zenodo.20834331) | Public, archived, citable |
| Paper 4 | Not yet deposited | Not assigned | GitHub release only; no OSF, Zenodo, ORCID, or DOI record assigned; pending rewrite and formatting cohesion before DOI-backed external deposit |

Concept DOIs, where applicable:

- Paper 1 all-versions DOI: https://doi.org/10.5281/zenodo.20832832
- Paper 3 all-versions DOI: https://doi.org/10.5281/zenodo.20834330

## Purpose

RAY-VASC Regenerative Loop is a publication-only open research program for studying residual adaptive capacity, longitudinal measurement, confounder tracking, adverse-event documentation, missingness handling, and reproducible protocol design in complex neurovascular and mixed neurodegenerative-vascular disease.

This repository is organized as a manuscript series with supporting schemas, figures, synthetic data, validation rules, and governance documents. GitHub is the working version-control mechanism. OSF is the archival/public registration layer.

## Public Boundary

This repository is for research planning, documentation, protocol design, reproducibility, and open scientific review.

It does not provide medical advice, legal advice, clinical directives, treatment claims, supplement marketing, disease cure or reversal claims, brain repair claims, recovery guarantees, raw identifiable medical records, or controlled-substance how-to content.

Controlled-substance exposure, if present in future lawful research implementations, is documented only as as-administered observational data under separate lawful, clinician-governed, ethics-approved oversight. APPRE does not recommend, adjust, tune, or optimize controlled-substance exposure.

## Manuscript Series

| Paper | Title | Role | Primary path |
|---|---|---|---|
| Paper 1 | *The Brain That Remains: A Framework for Neuroplasticity, Residual Capacity, and Open-Source Protocol Design in Complex Neurodegenerative Disease* | Framework / hypothesis paper | `manuscripts/paper1/final/` |
| Paper 2 | *RAY-VASC: A Multidomain N-of-1 and Small-Series Protocol for Complex Neurovascular Disease* | Protocol paper | `manuscripts/paper2/final/` |
| Paper 3 | *RAY-001 Baseline Characterization in a Complex Neurovascular Parkinsonian Phenotype: Documenting Pre-Intervention Architecture and Measurement Feasibility for Future Neuroplasticity Research* | Baseline / feasibility paper | `manuscripts/paper3/final/` |
| Paper 4 | *APPRE: A Schema-and-Rules Framework for Adaptive Measurement, Confounder Annotation, and Response-Policy Documentation in Complex Neurovascular Disease* | Methods / data architecture paper | `manuscripts/paper4/final/` |

## Paper 4 Current Release Posture

Paper 4 APPRE materials exist in the repository and GitHub release tree as public-clean draft/package artifacts. As of 2026-06-24, Paper 4 has not been deposited to OSF, Zenodo, or ORCID and has no public DOI. Paper 4 remains pending rewrite, formatting normalization, and cohesion review before DOI-backed external release.

## Paper 4 APPRE Package

Paper 4 publishes APPRE as a schema-and-rules research documentation framework for repeated measures, confounder annotation, adverse-event capture, missingness handling, provenance, synthetic-data testing, validation rules, and versioned response-policy documentation.

APPRE is not validated artificial intelligence, not clinical decision support, not Software as a Medical Device, not a treatment optimizer, and not a longevity product.

Primary Paper 4 materials:

```text
manuscripts/paper4/final/
figures/paper4/final/
supplements/paper4/final/
schemas/appre/v0.1.1/
data/synthetic/appre/v0.1.1/
validation/appre/v0.1.1/
analysis/appre/v0.1.1/
docs/appre/
releases/paper4/final/
```

## Clean Repository Map

```text
ray-vasc-regenerative-loop/
â”œâ”€â”€ README.md
â”œâ”€â”€ PAPER_INDEX.md
â”œâ”€â”€ REPO_MAP.md
â”œâ”€â”€ CHANGELOG.md
â”œâ”€â”€ CITATION.cff
â”œâ”€â”€ LICENSE-DOCS-CC-BY-4.0.txt
â”œâ”€â”€ ATTRIBUTION.md
â”œâ”€â”€ PRIVACY.md
â”œâ”€â”€ REGULATORY_BOUNDARY.md
â”œâ”€â”€ manuscripts/
â”‚   â”œâ”€â”€ paper1/final/
â”‚   â”œâ”€â”€ paper2/final/
â”‚   â”œâ”€â”€ paper3/final/
â”‚   â””â”€â”€ paper4/final/
â”œâ”€â”€ figures/
â”‚   â””â”€â”€ paper4/final/
â”œâ”€â”€ supplements/
â”‚   â”œâ”€â”€ paper2/final/
â”‚   â””â”€â”€ paper4/final/
â”œâ”€â”€ schemas/
â”‚   â””â”€â”€ appre/v0.1.1/
â”œâ”€â”€ data/
â”‚   â””â”€â”€ synthetic/appre/v0.1.1/
â”œâ”€â”€ validation/
â”‚   â””â”€â”€ appre/v0.1.1/
â”œâ”€â”€ analysis/
â”‚   â””â”€â”€ appre/v0.1.1/
â”œâ”€â”€ docs/
â”‚   â””â”€â”€ appre/
â”œâ”€â”€ releases/
â”‚   â”œâ”€â”€ paper1/final/
â”‚   â”œâ”€â”€ paper2/final/
â”‚   â”œâ”€â”€ paper3/final/
â”‚   â””â”€â”€ paper4/final/
â””â”€â”€ archive/
```

## Navigation

- Manuscript index: `PAPER_INDEX.md`
- Repository map: `REPO_MAP.md`
- Attribution: `ATTRIBUTION.md`
- Privacy boundary: `PRIVACY.md`
- Regulatory boundary: `REGULATORY_BOUNDARY.md`
- APPRE documentation: `docs/appre/`
- Paper 4 release package: `releases/paper4/final/`

## Citation

Use the specific manuscript, OSF registration, or GitHub release citation associated with the paper or release being referenced. Paper 2 has an OSF DOI: https://doi.org/10.17605/OSF.IO/WESZY


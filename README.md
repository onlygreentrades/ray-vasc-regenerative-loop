# RAY-VASC Regenerative Loop

**Current Git working release:** v2.3.1 public-clean Paper 4 release plus final Paper 4 figure/supplement bundle  
**Author:** Logan Henderson  
**Affiliation:** Independent Researcher, Houston, Texas, United States  
**Repository:** https://github.com/onlygreentrades/ray-vasc-regenerative-loop  
**OSF parent project:** https://osf.io/y2h79/  
**Paper 2 OSF registration DOI:** https://doi.org/10.17605/OSF.IO/WESZY  

## Overview

RAY-VASC Regenerative Loop is a publication-only open research program for studying residual adaptive capacity, longitudinal measurement, confounder tracking, adverse-event documentation, missingness handling, and protocol design in complex neurovascular and mixed neurodegenerative-vascular disease.

This repository contains manuscripts, protocol materials, schemas, synthetic datasets, figures, validation rules, reproducibility checklists, and governance files. It is designed so qualified external teams can review and implement the documentation architecture under appropriate clinical, ethics, privacy, and regulatory governance.

## Public Boundary

This repository is for research planning, documentation, protocol design, reproducibility, and open scientific review.

It does not provide medical advice, legal advice, clinical directives, treatment claims, supplement marketing, disease cure or reversal claims, or controlled-substance how-to content.

Controlled-substance exposure, if present in future lawful research implementations, is documented only as as-administered observational data under separate lawful, clinician-governed, ethics-approved oversight. APPRE does not recommend, adjust, tune, or optimize controlled-substance exposure.

## Publication Series

| Paper | Public title | Function | Repository path |
|---|---|---|---|
| Paper 1 | *The Brain That Remains: A Framework for Neuroplasticity, Residual Capacity, and Open-Source Protocol Design in Complex Neurodegenerative Disease* | Framework / hypothesis paper | `manuscripts/paper1/final/` |
| Paper 2 | *RAY-VASC: A Multidomain N-of-1 and Small-Series Protocol for Complex Neurovascular Disease* | Protocol paper | `manuscripts/paper2/final/` |
| Paper 3 | *RAY-001 Baseline Characterization in a Complex Neurovascular Parkinsonian Phenotype: Documenting Pre-Intervention Architecture and Measurement Feasibility for Future Neuroplasticity Research* | Baseline / feasibility paper | `manuscripts/paper3/final/` |
| Paper 4 | *APPRE: A Schema-and-Rules Framework for Adaptive Measurement, Confounder Annotation, and Response-Policy Documentation in Complex Neurovascular Disease* | Methods / data-architecture paper | `manuscripts/paper4/final/` |

## Current Paper 4 Release Package

Paper 4 publishes APPRE as a schema-and-rules research documentation framework for repeated measures, confounder annotation, adverse-event capture, missingness handling, provenance, synthetic-data testing, validation rules, and versioned response-policy documentation.

APPRE is not validated artificial intelligence, not clinical decision support, not Software as a Medical Device, not a treatment optimizer, and not a longevity product.

### Paper 4 core manuscript files

- `manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.docx`
- `manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.pdf`
- `manuscripts/paper4/final/Paper-4_APPRE_Schema-and-Rules-Framework_Complex-Neurovascular-Disease_v0.1.1.md`

### Paper 4 figures

- `figures/paper4/final/Figure-1_Publication-Sequence-and-APPRE-Role_v0.1.1.png`
- `figures/paper4/final/Figure-2_APPRE-Entity-Flow-Governance-and-Provenance_v0.1.1.png`
- `figures/paper4/final/Figure-3_APPRE-FHIR-Conceptual-Crosswalk_v0.1.1.png`

### Paper 4 supplements

- `supplements/paper4/final/Paper-4_APPRE_Example-Schema_v0.1.1.json`
- `supplements/paper4/final/Paper-4_APPRE_Data-Dictionary_v0.1.1.csv`
- `supplements/paper4/final/Paper-4_APPRE_Worked-Synthetic-Cycle_v0.1.1.md`
- `supplements/paper4/final/Paper-4_APPRE_FHIR-Crosswalk_v0.1.1.csv`
- `supplements/paper4/final/Paper-4_APPRE_Missingness-Confounder-AE-Vocabularies_v0.1.1.csv`
- `supplements/paper4/final/Paper-4_APPRE_Reproducibility-Checklist_v0.1.1.md`
- `supplements/paper4/final/Paper-4_APPRE_Response-Policy-Rules_v0.1.1.csv`
- `supplements/paper4/final/Paper-4_APPRE_Schema-Dictionary_v0.1.1.csv`

### Paper 4 machine-readable and reproducibility assets

- `schemas/appre/v0.1.1/`
- `data/synthetic/appre/v0.1.1/`
- `validation/appre/v0.1.1/`
- `analysis/appre/v0.1.1/`
- `docs/appre/`
- `releases/paper4/final/`

## Repository Structure

```text
ray-vasc-regenerative-loop/
├── README.md
├── PAPER_INDEX.md
├── REPO_MAP.md
├── ATTRIBUTION.md
├── PRIVACY.md
├── REGULATORY_BOUNDARY.md
├── CITATION.cff
├── CHANGELOG.md
├── manuscripts/
│   ├── paper1/final/
│   ├── paper2/final/
│   ├── paper3/final/
│   └── paper4/final/
├── supplements/
│   ├── paper2/final/
│   └── paper4/final/
├── figures/
│   └── paper4/final/
├── schemas/
│   └── appre/v0.1.1/
├── data/
│   └── synthetic/appre/v0.1.1/
├── validation/
│   └── appre/v0.1.1/
├── analysis/
│   └── appre/v0.1.1/
├── docs/
│   └── appre/
├── releases/
│   ├── paper1/final/
│   ├── paper2/final/
│   ├── paper3/final/
│   └── paper4/final/
└── archive/
```

## Governance

Core rule: protocol before claims; measurement before interpretation; safety before signal; governance before implementation.

External prospective use requires appropriate consent, privacy review, clinical governance, and IRB or ethics review where applicable. Public repository materials are limited to manuscripts, protocols, schemas, forms, synthetic data, validation rules, reproducibility materials, and governance documents.

## Attribution

Originating researcher: Logan Henderson.  
Human origin of the RAY-VASC work: Raymond A. Hornsby, acknowledged where authorization permits.

## Citation

Use the specific manuscript, OSF registration, or GitHub release citation associated with the paper or release being referenced. Paper 2 has an OSF DOI: https://doi.org/10.17605/OSF.IO/WESZY

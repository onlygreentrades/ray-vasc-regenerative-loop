<!--
Paper 4 APPRE v0.1.1 public-facing markdown export.
Generated from the release DOCX for repository readability.
DOCX/PDF remain canonical manuscript artifacts for upload.
-->

APPRE: A Schema-and-Rules Framework for Adaptive Measurement, Confounder Annotation, and Response-Policy Documentation in Complex Neurovascular Disease

Logan Henderson

Independent Researcher, Houston, Texas, United States

Correspondence: Logan Henderson

Version: v0.1.1

Date: 2026-06-15

Article type: Methods / Data Architecture / Open-Science Framework Paper

Program: RAY-VASC Regenerative Loop Research Program

Status: Public-facing final manuscript for OSF/Git release and journal-target adaptation

Changelog: v0.1.1 incorporates a worked synthetic APPRE cycle, RAY-VASC implementation cadence, interpretable-window defaults, small-series aggregation logic, minimal FAIR profile, security/privacy safeguards, behaviorome-to-responseome framing, synthetic-data release mechanics, signal-plot boundaries, future APPRE software/AI pathway, and downstream longevity-stack positioning while preserving APPRE as a research-data architecture rather than validated artificial intelligence, clinical decision support, a medical device, or a treatment optimizer.


# Abstract

Background: Complex neurovascular and mixed neurodegenerative-vascular phenotypes rarely behave as single-diagnosis conditions. Progressive supranuclear palsy-spectrum syndromes, vascular cognitive impairment, vascular Parkinsonism, post-stroke cognitive or Parkinsonian syndromes, traumatic brain injury burden, sleep disruption, respiratory limitation, dysphagia, metabolic instability, mood burden, fall risk, medication complexity, caregiver dependence, and recurrent acute illness can interact as one coupled biological and operational system. Conventional low-frequency clinical follow-up is often too coarse to document within-person fluctuations, confounder windows, adverse events, missingness, caregiver or proxy mode shifts, and versioned changes in protocol posture.

Objective: This manuscript introduces APPRE as a transparent schema-and-rules framework for adaptive measurement, confounder annotation, adverse-event capture, missingness handling, provenance, synthetic-data release, and response-policy documentation in complex neurovascular research. The objective is to publish the documentation architecture required for external implementation, auditability, reproducibility, and future software development without claiming that APPRE is validated artificial intelligence, clinical decision support, a medical device, or a treatment optimizer.

Methods: APPRE maps repeated observations through the loop: Subject Profile -> Candidate Inputs -> Outcomes -> Confounders / Adverse Events / Missingness -> Updated Response Policy -> Version Log. The framework is aligned conceptually with FAIR data principles, uses W3C PROV-style provenance logic, maps to selected HL7 FHIR resource analogues, and is compatible with REDCap or other structured capture substrates. APPRE remains platform-agnostic and usable with paper forms, secure spreadsheets, electronic patient-reported outcome systems, or future software layers. The manuscript specifies schema families, validation rules, interpretable-window defaults, confounder logic, adverse-event structure, response-policy versioning, RAY-VASC implementation cadence, small-series aggregation, synthetic dataset requirements, security/privacy safeguards, and open-science release mechanics.

Results: No clinical outcomes are reported. The result is a methods/data-architecture manuscript defining APPRE v0.1.1 as a reproducible documentation layer for N-of-1 and small-series neurovascular protocols. APPRE also introduces a behaviorome-inspired responseome framing: high-frequency human measures such as sleep, activity, gait, cognition, mood, respiratory burden, EEG, biomarkers, safety events, wearable signals, and caregiver-supported reports are treated as longitudinal state signals rather than anecdotal notes. A worked synthetic APPRE cycle illustrates how a clean baseline, sleep-collapse week, fall event, medication-change confounder, and response-policy update are captured as structured records.

Conclusions: APPRE provides a schema-and-rules infrastructure for making adaptive neurovascular protocols more auditable, reproducible, and externally implementable. Its contribution is methodological, not clinical. APPRE does not diagnose, prescribe, predict recovery, claim efficacy, optimize treatment, optimize controlled-substance exposure, or replace clinician judgment. Future APPRE software, AI-assisted tools, dashboards, or longevity-platform layers may build on this architecture only after separate intended-use definition, validation, privacy/cybersecurity review, regulatory assessment, and prospective evaluation.

Keywords: APPRE; RAY-VASC; N-of-1; small series; data architecture; neurovascular disease; vascular cognitive impairment; progressive supranuclear palsy; response policy; confounders; adverse events; missingness; FAIR; W3C PROV; FHIR; REDCap; behaviorome; responseome; open science; reproducibility.


# 1. Introduction

Complex neurovascular disease is not operationally simple. A participant with vascular cognitive impairment, PSP-spectrum features, post-stroke injury, Parkinsonian motor burden, sleep fragmentation, respiratory disease, dysphagia, mood symptoms, polypharmacy, fall risk, caregiver dependence, and recurrent acute illness events does not live inside separate diagnostic compartments. Cognition changes with sleep, respiratory status, medication timing, infection, fatigue, caregiver stability, and stress load. Gait changes with oxygenation, bradykinesia, fear of falling, recent injury, exertion tolerance, environmental hazards, and sleep debt. Mood changes with isolation, functional loss, respiratory burden, pain, uncertainty, and caregiver dynamics. Swallowing safety changes oral-input adherence, nutrition, aspiration risk, hydration, and hospitalization risk. A protocol that treats these domains as independent risks confusing signal with noise.

The practical problem is not only that complex phenotypes produce many measurements. The practical problem is that context is often unstructured. A daily log, wearable export, EEG session, biomarker draw, cognitive assessment, fall report, or caregiver note becomes interpretable only when its timing, reporter, missingness, safety context, medication context, and confounder window are preserved. Was the participant acutely ill? Was there a medication change? Was the device worn long enough? Was the weekly functional test completed by the same assessor? Was sleep unusually poor? Did the caregiver complete the entry because the participant could not? Was the protocol paused because of fall risk? Was the observed change inside a confounded window?

Without structured confounder annotation, adverse-event capture, missingness coding, and response-policy versioning, adaptive N-of-1 and small-series protocols can drift into narrative interpretation. Apparent improvement may reflect recovery from infection, practice effects, medication timing, reduced burden, caregiver-report differences, or regression to the mean. Apparent deterioration may reflect sleep collapse, device failure, dehydration, respiratory exacerbation, acute illness, a fall, medication effects, or transition in care setting. In either direction, signal without context is not evidence.

APPRE is introduced here to address that gap. APPRE is a schema-and-rules framework for organizing repeated multidomain measurements, confounders, adverse events, missingness, provenance, and response-policy documentation in complex neurovascular research. It is a documentation architecture, not an autonomous inference system. It is designed to help qualified teams record what was measured, when it was measured, who reported it, what was missing, what may have confounded it, what safety events occurred, what rule version was active, and why a response-policy update was documented.

This manuscript is Paper 4 in the RAY-VASC Regenerative Loop series. Paper 1 established the residual-capacity and open-source protocol framework. Paper 2 translated that framework into a prospective N-of-1 and small-series protocol. Paper 3 documented the baseline characterization and timing-window problem that occurs when a complex neurovascular phenotype is richly characterized but prospective baseline capture begins too late. Paper 4 publishes the data architecture needed to prevent that failure from repeating.

This manuscript reports no clinical outcomes. It does not test whether any intervention improves cognition, mobility, mood, sleep, respiratory function, dysphagia, EEG, biomarkers, caregiver burden, or function. It does not claim that APPRE predicts disease trajectory, optimizes treatment, validates AI, or generates clinical recommendations. The contribution is narrower and foundational: APPRE defines the reusable schema, validation rules, provenance logic, privacy posture, and reproducibility package required before future adaptive analytics, external validation, or software implementation can responsibly occur.


# 2. Position in the RAY-VASC Publication Series

APPRE sits inside the RAY-VASC publication sequence as the data-architecture paper. The sequence moves from framework to protocol, baseline feasibility, schema architecture, theory expansion, evidence mapping, and future staged testing.

Paper 1, The Brain That Remains, established the residual-capacity hypothesis and Regenerative Loop framework. It proposed that complex neurodegenerative and vascular phenotypes may retain state-dependent functional variation even when structural disease is substantial. It did not claim repair, cure, recovery, reversal, or treatment efficacy.

Paper 2, RAY-VASC: A Multidomain N-of-1 and Small-Series Protocol for Complex Neurovascular Disease, operationalized the framework as a 52-week longitudinal N-of-1 and small-series protocol. It specified a two-cycle, three-phase architecture; Tier 1 caregiver-supported measurement; Tier 2 EEG and biomarker layers; adverse-event logs; confounder capture; privacy governance; OSF/GitHub release discipline; and APPRE as a transparent schema-and-rules layer.

Paper 3, RAY-001 Baseline Characterization in a Complex Neurovascular Parkinsonian Phenotype, documented the originating baseline context and showed that missingness can be an operational signal. It demonstrated that a protocol may become scientifically ready after the clinical window for clean baseline capture has already narrowed. It therefore created the operational need for a reusable APPRE architecture.

Paper 4, the present manuscript, publishes APPRE itself. Its purpose is not to report outcomes but to make the measurement logic, data objects, response-policy rules, security posture, synthetic examples, and open-science release structure externally inspectable.

Table 1. RAY-VASC publication sequence and APPRE role


| Paper | Primary function | APPRE relationship |
| --- | --- | --- |
| Paper 1: The Brain That Remains | Framework / hypothesis and theory | Defines need for adaptive longitudinal measurement without efficacy claims |
| Paper 2: RAY-VASC Protocol | Prospective N-of-1 and small-series protocol | Introduces APPRE as schema-and-rules support for data integrity and response-policy documentation |
| Paper 3: RAY-001 Baseline Characterization | Baseline case / feasibility / timing-window analysis | Demonstrates why structured missingness, confounder, and feasibility architecture is needed |
| Paper 4: APPRE methods/data architecture | Present manuscript | Publishes schemas, rules, provenance, synthetic data, implementation workflow, and reproducibility package |
| Papers 5-7 | Theory, evidence map, and staged protocol expansion | Use APPRE as downstream measurement and documentation infrastructure |


# 3. Design Objectives and Claim Boundary

APPRE has six design objectives.

First, APPRE must organize repeated measures across domains that interact in complex neurovascular phenotypes: cognition, mobility, falls, mood, sleep, respiratory burden, dysphagia, caregiver support, medication context, adherence, adverse events, EEG, biomarkers, and wearable signals.

Second, APPRE must preserve context. Missingness, confounders, adverse events, protocol deviations, proxy reporting, device failure, care-transition events, and timing irregularities must be structured as data rather than buried in narrative notes.

Third, APPRE must support versioned response-policy documentation. A response policy is not an automated treatment recommendation. It is a documented protocol posture: continue, pause, simplify, repeat, exclude, review, escalate, amend, or update. Every material change must be linked to a triggering event, prior version, rationale, reviewer role, and effective date.

Fourth, APPRE must be implementation-agnostic. It should work with paper forms, secure spreadsheets, REDCap, electronic patient-reported outcome platforms, wearable exports, EEG metadata, biomarker data, custom dashboards, or future software tools.

Fifth, APPRE must be open-science compatible. Public releases should include manuscripts, schemas, data dictionaries, validation rules, synthetic datasets, analysis templates, release notes, and reproducibility checklists while excluding raw identifiable clinical data unless separate consent and ethics governance authorize sharing.

Sixth, APPRE must remain clearly separated from future AI or clinical software claims. Future APPRE software may build on this architecture, but this manuscript does not validate APPRE as software, artificial intelligence, clinical decision support, Software as a Medical Device, or a treatment optimizer.


## 3.1 Locked Claim Boundary

APPRE is not validated artificial intelligence, not clinical decision support, not a medical device, not Software as a Medical Device, and not a treatment optimizer. APPRE is a transparent schema-and-rules framework for organizing repeated measures, confounders, adverse events, missingness, provenance, and versioned response-policy documentation.

APPRE may document controlled-substance exposure only as an as-administered observational field under lawful, clinician-governed, ethics-approved research. APPRE does not recommend, adjust, tune, optimize, select, increase, decrease, cycle, or personalize controlled-substance exposure.

For clarity, candidate inputs in this manuscript refers to structured, observable, non-controlled protocol variables such as sleep-timing changes, exertion scheduling, light-exposure routines, caregiver-support patterns, hydration/nutrition logging, device-adherence patterns, and legal non-controlled inputs where applicable under local governance. The phrase does not refer to controlled-substance selection, adjustment, personalization, or optimization.


# 4. APPRE Conceptual Model

APPRE maps repeated observation into structured documentation.

The core loop is: Subject Profile -> Candidate Inputs -> Outcomes -> Confounders / Adverse Events / Missingness -> Updated Response Policy -> Version Log.

This loop is not an autonomous control system. It is a traceability structure. Its purpose is to ensure that a future reviewer can reconstruct what was known, what was measured, what changed, what was missing, what was confounded, what safety events occurred, what rule version was active, and why a policy update was recorded.

APPRE inherits its acronym from early internal project language, but public use in this manuscript defines APPRE strictly as a schema-and-rules framework. The framework is algorithmic only in the sense that it uses explicit rules, validation checks, and versioning logic. It is not validated machine learning, not an AI product, and not clinical decision support.

Table 2. APPRE object model


| APPRE object | Function | Example records |
| --- | --- | --- |
| Subject Profile | Baseline interpretive context | Diagnosis category, proxy status, care setting, safety flags, measurement tier |
| Candidate Inputs | Structured non-controlled exposures or protocol variables | Sleep timing, activity, light exposure, caregiver support, adherence variables |
| Outcomes | Repeated measures | MoCA, TUG, PHQ-9, GAD-7, SpO2, EEG, biomarkers, ADL/IADL |
| Confounders | Interpretation threats | Infection, medication change, fall, sleep collapse, device failure |
| Adverse Events | Harm and near-harm documentation | Fall injury, severe confusion, respiratory worsening, allergic reaction |
| Missingness | Expected data not captured | Participant unable, caregiver unavailable, device not worn, burden reduction |
| Response Policy | Versioned protocol posture | Continue, pause, review, simplify, exclude, repeat, amend |
| Version Log | Audit trail | Schema update, repository release, response-policy version change |


# 5. Behaviorome-Inspired Longitudinal Signal Architecture

APPRE adopts a behaviorome-inspired logic for complex human neurovascular protocols. The aim is not to classify a static disease state from a single assessment, but to detect interpretable within-person trajectories from repeated behavioral, physiological, cognitive, sleep, safety, and biomarker data. Recent vertebrate aging work in African turquoise killifish demonstrates the methodological value of continuous behavior capture: movement, rest, sleep timing, posture, and short behavioral motifs can form a high-resolution longitudinal signature capable of estimating biological stage and classifying future lifespan trajectory (Bedbrook et al., 2026). APPRE translates this logic into a human research architecture by treating daily-life measures as structured response signals rather than anecdotal logs.

In APPRE, the human analogue of a behaviorome is a multidomain responseome: sleep timing and quality, exertion dose, gait and falls, cognition, mood, respiratory burden, adherence, adverse events, wearable signals, EEG features, and biomarker trajectories. These data streams are mapped to subject profile, candidate inputs, confounder annotations, and updated response policies. The objective is not to prove treatment efficacy from uncontrolled data. The objective is to create a reproducible, auditable system for documenting when a subject trajectory appears stable, shifting, improving, deteriorating, unsafe, missing, or confounded.

This framing strengthens APPRE because it moves the system beyond simple response tracking. APPRE becomes a longitudinal state-documentation architecture: a transparent framework for converting repeated measurements into interpretable policy updates. Early-stage implementation remains rules-based: baseline variance estimation, missingness checks, adverse-event gates, confounder windows, one-variable-at-a-time candidate-input changes, and pre-specified exploratory signal thresholds. Machine learning may be introduced later only after sufficient longitudinal data density, external implementation, validation, governance review, and intended-use assessment.

The APPRE framework extends behaviorome logic to human-level protocol design and future software development. In contrast to a single-species experimental platform, APPRE is built for complex human neurovascular phenotypes, integrates caregiver-supported reporting, and is designed from the outset to meet ethics, privacy, provenance, and data-governance requirements. At the current stage, APPRE operates as a schema-and-rules architecture that allows human behaviorome-like data streams - sleep, activity, gait, cognition, mood, respiratory burden, EEG, biomarkers, safety events, and confounders - to be captured, annotated, and audited in a consistent way. Future work may implement APPRE as software or AI-assisted tools, but those implementations remain downstream of this methods paper and require independent validation and regulatory assessment before any decision-support or clinical claims are made.

Human behaviorome-style data are noisier and more heterogeneous than continuous video capture in a controlled vertebrate model. Human data streams may be affected by caregiver availability, device nonadherence, inconsistent sleep environments, medication changes, acute illness, injury, cognitive impairment, reporting burden, and social context. APPRE therefore extends behaviorome logic by pairing repeated measures with explicit missingness coding, confounder windows, adverse-event gates, proxy-report status, and versioned response-policy documentation. The goal is not to translate animal lifespan forecasting directly into human prediction. The goal is to preserve enough context that human within-person trajectories can be reviewed without collapsing high-frequency observations into anecdotal impressions.

The compliant APPRE claim is narrow: vertebrate behaviorome research supports the methodological premise that high-frequency behavioral data can reveal latent biological trajectory. APPRE adapts that logic as a human research-data architecture for N-of-1 neurovascular protocols, using repeated sleep, activity, cognition, motor, mood, respiratory, EEG, biomarker, safety, and confounder data to document within-person trajectories without making efficacy, lifespan, diagnostic, or treatment-response predictions.

Table 3. Behaviorome-to-responseome translation


| APPRE layer | Killifish behaviorome analogue | Human APPRE translation |
| --- | --- | --- |
| Continuous behavior | Continuous video behavior: posture, speed, movement, rest | Wearables, daily logs, gait and falls, sleep, activity metrics |
| Behavioral units | Behavioral motifs or syllables assembled from short actions | Recurrent human state patterns: sleep collapse, exertion tolerance, gait instability, mood deterioration |
| Trajectory clock | Behavioral clock estimating age and aging stage | Within-person trajectory clock: stable, improving, declining, unsafe, missing, or confounded periods |
| Forecast layer | Short- versus long-lifespan trajectory classification in a vertebrate model | Descriptive trajectory categories; not clinical labels |
| Stage transitions | Stepwise behavioral stages across adulthood | Protocol phase and state shifts: baseline, pre-load, governed window, sustain, regression |
| Intervention testing | Future diet or gene-manipulation experiments | Candidate-input configuration review, sleep/exertion/support policy updates under safety and governance rules |


# 6. System Requirements

APPRE is designed for implementation across low-resource and higher-resource settings. A minimum viable implementation may use paper forms and secure spreadsheets. A higher-resource implementation may use REDCap, electronic patient-reported outcome systems, wearable exports, EEG metadata, biomarker data, FHIR-compatible mapping, or future dashboards.

APPRE remains platform-agnostic. It does not require a FHIR server, REDCap instance, proprietary dashboard, or future software product to be implementable. The first test is whether a qualified team can run the minimum layer reliably without breaking privacy, safety, or documentation integrity.

Table 4. APPRE system requirements


| Requirement | Minimum expectation |
| --- | --- |
| Paper-capable capture | Tier 1 daily and weekly forms must be usable on paper and map to digital schemas |
| Digital-capable capture | Secure spreadsheet, REDCap, ePRO, or custom structured-data implementation |
| Proxy compatibility | Reporter role documented for participant, caregiver, proxy, clinician, assessor, technician, or mixed reporter |
| Missingness coding | Expected but absent data require a coded reason |
| Confounder annotation | Infection, medication changes, falls, sleep collapse, respiratory events, device failure, and caregiver disruption are structured |
| Adverse-event capture | Harm and near-harm events are logged with severity, seriousness, action, outcome, and review status |
| Response-policy versioning | Every material policy update records version, date, trigger, rationale, reviewer role, and affected domains |
| Platform independence | APPRE is not locked to a specific vendor or software platform |
| De-identification readiness | Public schemas use study IDs, subject IDs, assessment IDs, and event IDs rather than direct identifiers |
| Reproducibility package | Public release includes schemas, synthetic data, validation rules, notebooks, release notes, and checklist |


# 7. Schema Architecture

APPRE v0.1.1 specifies twelve core schema families. Each schema should be released as CSV and JSON-compatible dictionaries in the public repository.

Recommended repository paths are: schemas/appre/v0.1.1/subject_profile_schema.csv; schemas/appre/v0.1.1/daily_inputs_schema.csv; schemas/appre/v0.1.1/weekly_outcomes_schema.csv; schemas/appre/v0.1.1/monthly_quarterly_measures_schema.csv; schemas/appre/v0.1.1/biomarker_schema.csv; schemas/appre/v0.1.1/eeg_schema.csv; schemas/appre/v0.1.1/wearables_schema.csv; schemas/appre/v0.1.1/confounder_schema.csv; schemas/appre/v0.1.1/adverse_event_schema.csv; schemas/appre/v0.1.1/protocol_deviation_schema.csv; schemas/appre/v0.1.1/response_policy_schema.csv; and schemas/appre/v0.1.1/version_log_schema.csv.

The subject profile is the baseline interpretive layer. It includes subject identifier, study identifier, site identifier, consent status, proxy availability, age band, sex at birth, diagnosis category, phenotype tags, baseline cognitive status, baseline functional status, care setting, caregiver availability, measurement tier, fall risk, dysphagia status, respiratory status, sleep status, renal/hepatic risk, major safety flags, medication-list hash, and baseline window dates.

The daily inputs schema captures high-frequency operational signals: sleep, light, exertion, activity, social engagement, medication adherence, candidate-input changes, respiratory burden, vital signs, free-text note presence, adverse-event presence, confounder flags, reporter role, and record status. The daily schema must be short enough for caregiver completion in less than five minutes.

Weekly outcomes capture repeated functional measures without overwhelming the participant or caregiver. Recommended fields include Timed Up and Go, 10-meter walk, falls, near-falls, PHQ-9 or PHQ-4 where appropriate, GAD-7, mMRC, sleep averages, sleep-device use, activity minutes, ADL/IADL status, caregiver burden, adherence, adverse events, clinician contacts, and missingness flags.

Monthly and quarterly assessments capture standardized measures that are too burdensome for daily or weekly completion. These may include cognitive measures, sleep questionnaires, COPD measures, dysphagia measures, PSP/Parkinsonism measures, gait/endurance assessments, biomarker panels, and assessor-quality flags.

The biomarker schema records sample metadata, assay name, result, unit, reference range, missingness reason, timing relative to EEG, acute illness context, medication context, fasting status, and record status. Biomarker interpretation requires strict timing and confounder annotation.

The EEG schema records session metadata, device class, channel count, resting-state completion, task completion, quality flags, artifact burden, sleep quality before recording, caffeine timing, medication-change window, biomarker synchronization, and file references. APPRE does not analyze EEG by itself. It preserves the metadata needed for reproducible EEG analysis.

Wearables can add continuous or semi-continuous measures of steps, sleep, heart rate, HRV, oxygenation, and activity. APPRE must record wear time and valid-wear-day status so missingness and device nonadherence do not masquerade as biological change.

The confounder schema records start date, end date, category, description, severity, expected direction of bias, affected domains, whether exclusion or sensitivity analysis is required, source of detection, reviewer role, and resolution status.

The adverse-event schema records harmful events and near-harm events. Every adverse event should be linked to action taken, escalation status, outcome, protocol pause, and whether a response-policy update was triggered.

Protocol deviations include missed assessments, altered procedures, assessor changes, timing deviations, device failures, form-completion errors, unscheduled changes, and clinician-directed changes. Deviations should be classified as major or minor based on interpretability and safety implications.

The response-policy schema is the central APPRE artifact. It records active protocol posture. It includes policy version, effective date, trigger type, trigger event, policy domain, prior policy summary, updated policy summary, rationale, safety override flag, clinician-review flag, candidate-input rule status, burden-reduction status, missingness-rule status, reviewer role, and record status.

The version log records artifact type, artifact name, prior version, new version, change type, change summary, reason for change, affected schemas, affected scripts, affected repository paths, and whether an OSF or repository update is required.

Table 5. APPRE schema family


| Schema | Purpose | Key fields |
| --- | --- | --- |
| Subject Profile | Baseline phenotype and implementation context | subject_id, study_id, diagnosis_category, proxy_available, care_setting, tier_level, safety_flags |
| Daily Inputs | High-frequency daily context | study_day, phase, sleep_hours, exertion_minutes, medication_change, candidate_input_change, SpO2, BP, HR |
| Weekly Outcomes | Burden-limited functional tracking | TUG, 10m walk, falls, PHQ-9, GAD-7, mMRC, sleep average, adherence |
| Monthly / Quarterly Measures | Standardized outcome windows | MoCA, Trail Making, PSQI, CAT, EAT-10, MDS-UPDRS III, mPSPRS-15 |
| Biomarkers | Specimen-linked laboratory data | sample_id, assay_name, result_value, unit, reference_range, data_absent_reason |
| EEG | Neurophysiology metadata and file references | eeg_session_id, channel_count, resting-state, P300, quality flag, file references |
| Wearables | Device-derived time-series summaries | device_class, wear_hours, steps, HR, HRV, sleep duration, SpO2 |
| Confounders | Interpretation threats | confounder_category, severity, affected_domains, exclusion flag |
| Adverse Events | Harm and near-harm documentation | event_category, severity, seriousness, relatedness, action_taken, outcome |
| Protocol Deviations | Departures from expected procedures | expected_procedure, actual_procedure, reason, affected_window |
| Response Policy | Versioned protocol posture | response_policy_version, trigger_event, prior_policy, updated_policy, rationale |
| Version Log | Repository and schema provenance | artifact_type, prior_version, new_version, change_summary, affected_files |


# 8. Validation Rules

Validation rules protect data integrity before interpretation. APPRE validation rules should be published as human-readable documentation and machine-readable JSON where possible.

Required-field rules apply across all APPRE tables. subject_id is required for subject-level tables. calendar_date or event_date is required for longitudinal records. phase is required when measurement phase affects interpretation. cycle is required for multi-cycle implementations. completed_by_role is required for participant/proxy distinction. record_status is required for all tables. data_absent_reason is required when expected scheduled data are missing. response_policy_version is required when a record is used for response-policy review.

Range rules protect data integrity. Zero-to-ten symptom scales must remain between 0 and 10. Percent fields must remain between 0 and 100. Dates should follow ISO 8601 format. Severity categories must use pre-specified vocabulary. Boolean fields should use consistent yes/no or true/false coding. Numeric values must preserve units.

Cross-table logic rules preserve context. An adverse event requiring protocol pause must trigger response-policy review. A medication-change flag should create or link to a confounder record. A fall or near-fall should create or link to an adverse-event or safety-event record. A missing scheduled assessment must include a missingness reason. An assessment inside an active confounder window must carry a confounder flag. A biomarker draw linked to EEG must document synchronization status. A wearable record with insufficient wear time must be marked invalid or partial.

Table 6. APPRE validation-rule classes


| Rule class | Example rule |
| --- | --- |
| Required-field rules | subject_id, date, reporter role, phase, and record status required where applicable |
| Range rules | 0-10 scales must remain within 0-10; percentages within 0-100 |
| Cross-table logic | severe adverse event triggers response-policy review |
| Missingness rules | expected but absent data require data_absent_reason |
| Confounder rules | medication change creates or links to confounder record |
| Wearable rules | insufficient wear time marks day invalid or partial |
| EEG rules | unresolved EEG confounder flags exclude session from primary interpretation |
| Biomarker rules | EEG-biomarker synchronization requires documented time window |
| Response-policy rules | material protocol-posture change increments policy version |
| Controlled-substance boundary | exposure, if present, is as-administered observational documentation only |


## 8.1 Recommended Minimum Interpretable-Window Thresholds

APPRE v0.1.1 does not impose universal validity thresholds because implementation settings differ in participant burden, caregiver availability, device access, measurement tier, disease severity, and site capability. However, early adopters should pre-specify minimum interpretable-window rules before prospective data collection.

As a default example, a Tier 1 observation window may be considered interpretable for primary descriptive review if all of the following conditions are met: a baseline window is defined before candidate-input review; at least 70% of expected daily Tier 1 fields are complete; at least 70% of expected weekly outcome fields are complete; reporter role is documented for each completed record; measurement method is comparable across windows; active confounders are reviewed and classified; missingness reasons are documented for expected but absent data; no unresolved severe adverse event is active during the primary interpretation window; any medication change, acute infection, fall, emergency-care event, major sleep disruption, or caregiver disruption is either outside the window or explicitly marked as a confounder; and the active response-policy version is documented.

A window that fails these thresholds may still be valuable for feasibility, burden, missingness, and safety reporting. It should not be used for primary candidate-signal interpretation unless the limitation is explicitly documented. The 70% threshold is an implementation default, not a validated psychometric cutoff. External teams should justify alternative thresholds based on protocol burden, participant population, measurement tier, and ethics review.


## 8.2 Controlled-Substance Boundary Rule

If controlled-substance exposure appears in a dataset, it must be recorded only as an as-administered observational field under separate lawful clinician-governed and ethics-approved research documentation. APPRE does not recommend, adjust, tune, optimize, select, increase, decrease, cycle, or personalize controlled-substance exposure.


# 9. Missingness Model

Missingness is a primary feasibility and interpretability outcome. In complex neurovascular protocols, missing data often reflect disease burden, caregiver burden, access barriers, acute illness, technical limitations, safety pauses, or care transitions. Treating missingness as random can mislead interpretation. APPRE records missingness at both event and window levels.

Each measurement window should be classified as clean, partial, confounded, missing, or uninterpretable. A clean window meets completion thresholds, has no unresolved severe adverse event, and has no high-severity confounder affecting the primary domain. A partial window has enough data for feasibility reporting but not enough for primary signal interpretation. A confounded window contains data but requires exclusion, sensitivity analysis, or caution. A missing window contains expected data gaps with documented missingness reason. An uninterpretable window lacks sufficient integrity for analysis.

Missingness density, missingness reason, and missingness timing should be summarized in every implementation report.

Table 7. APPRE missingness categories


| Missingness category | Interpretation |
| --- | --- |
| participant_unable | Participant could not complete due to symptoms, cognition, fatigue, distress, illness, or functional limitation |
| caregiver_unavailable | Proxy or caregiver was unavailable |
| technical_failure | Device, software, form, or upload problem |
| device_not_worn | Wearable or sensor not worn long enough |
| acute_illness | Infection, respiratory exacerbation, hospitalization, or acute medical issue |
| safety_pause | Protocol paused for safety |
| clinician_directed_hold | Clinician or governance team directed hold |
| burden_reduction | Measurement intentionally simplified to preserve feasibility |
| protocol_deviation | Expected procedure not completed as planned |
| not_scheduled | No data expected for that date/window |
| unknown | Reason unavailable |

Table 8. Interpretable-window status


| Status | Definition |
| --- | --- |
| Clean | Meets completion thresholds, no unresolved severe adverse event, no high-severity confounder affecting primary domain |
| Partial | Enough data for feasibility reporting but not enough for primary signal interpretation |
| Confounded | Data exist but require exclusion, sensitivity analysis, or caution |
| Missing | Expected data absent with missingness reason documented |
| Uninterpretable | Insufficient integrity for analysis |


# 10. Confounder Annotation

Confounders are expected in complex neurovascular protocols. APPRE does not attempt to eliminate them. It makes them visible.

Confounder categories include acute infection; medication start, stop, timing change, or adherence disruption; fall, near-fall, or head injury; sleep collapse; respiratory exacerbation; dysphagia or nutrition change; caregiver disruption; device failure; testing irregularity; and hospitalization or emergency-care visit.

Confounder annotation does not delete data. It marks interpretation risk. A confounded window may still be used for feasibility, safety, missingness, and burden analysis while being excluded from primary candidate-signal interpretation.

Table 9. Confounder categories and default window logic


| Confounder category | Example events | Default interpretive handling |
| --- | --- | --- |
| Acute infection | respiratory infection, urinary symptoms, fever | mark active window; exclude or sensitivity-test primary signal |
| Medication change | start, stop, timing change, adherence disruption | 14-day default confounder window unless protocol specifies otherwise |
| Fall or injury | fall, near-fall, head injury | 7-30-day motor/gait confounder window depending severity |
| Sleep collapse | severe sleep reduction or sleep-quality drop | mark cognition, mood, motor, EEG interpretation risk |
| Respiratory exacerbation | breathlessness, oxygenation concern, pulmonary flare | mark cognition, gait, sleep, mood, EEG, safety domains |
| Dysphagia/nutrition | aspiration concern, nutrition change, route change | mark adherence, safety, weight, function |
| Caregiver disruption | caregiver absence, care-transition instability | mark missingness, proxy-report, burden, adherence |
| Device failure | wearable/EEG/export failure | mark technical missingness or invalid data |
| Testing irregularity | assessor change, timing deviation, incomplete test | mark measurement comparability issue |
| Hospital/ER visit | urgent care, emergency care, hospitalization | safety review; likely confounded window |


# 11. Adverse-Event Structure

APPRE treats adverse-event documentation as a first-class schema layer. Safety records should not be buried in free text.

Each adverse-event record should capture subject_id, ae_id, event date and time, event category, event description, severity grade, seriousness, expectedness, relatedness assessment, suspected related input, action taken, clinician contact, urgent-care or emergency-care status, outcome status, resolution date, protocol pause, response-policy version triggered, reporter role, reviewer role, created-at timestamp, and record status.

Safety overrides candidate signal. A positive trend in cognition, mood, gait, sleep, respiratory status, EEG, or biomarkers does not justify continuation of a configuration that creates unacceptable safety risk.

Table 10. Minimum adverse-event fields


| Field | Required content |
| --- | --- |
| subject_id | Pseudonymous subject identifier |
| ae_id | Unique adverse-event identifier |
| event_date / event_time | Timing of event |
| event_category | Fall, respiratory, psychiatric, GI, allergic, cardiovascular, neurologic, swallowing, other |
| event_description | Short structured description |
| severity_grade | Pre-specified severity category |
| serious_yes_no | Seriousness flag |
| expected_yes_no | Expectedness flag |
| relatedness_assessment | Unrelated, unlikely, possible, probable, unknown |
| suspected_related_input | Candidate input or context variable, if applicable |
| action_taken | Continue, pause, simplify, clinician review, emergency care, other |
| clinician_contacted_yes_no | Escalation status |
| urgent_care_or_er_yes_no | Emergency-care status |
| outcome_status | Ongoing, resolved, resolved with sequelae, unknown |
| protocol_pause_required_yes_no | Safety pause flag |
| response_policy_version_triggered | Linked policy version |
| reported_by_role | Participant, caregiver, clinician, assessor, other |
| reviewed_by_role | Reviewer role |
| record_status | Draft, reviewed, locked, amended |


# 12. Response-Policy Versioning

The response-policy layer is the defining APPRE feature. It converts repeated measurement and context into auditable documentation of protocol posture.

A response-policy update may document that the protocol team continued the current measurement schedule; simplified burden; paused a candidate input under clinician or protocol review where applicable; repeated a measurement window; excluded a confounded period from candidate-signal interpretation; escalated to clinician review; triggered adverse-event review; updated missingness rules; updated confounder-window rules; amended schema version; or updated repository documentation.

A response-policy update is not a treatment order. It is not a clinical directive. It is not an autonomous decision. It is a versioned documentation artifact.

Any change that affects interpretation must increment the response-policy version. Each response-policy version should include prior policy summary, updated policy summary, rationale, triggering event, reviewer role, effective date, affected domains, safety override flag, clinician-review requirement, repository or OSF update status, and version-log linkage.

Table 11. Response-policy triggers and actions


| Trigger | Documentation action |
| --- | --- |
| Severe adverse event | Safety override; clinician review; response-policy increment |
| Repeated moderate worsening | Review window; assess confounders; consider burden simplification |
| Severe missingness | Mark window partial/missing; adjust burden if needed |
| Medication change | Create confounder; mark affected window |
| Caregiver burden threshold | Simplify data capture; document burden-reduction policy |
| Confounder density threshold | Mark window confounded; repeat window if feasible |
| Candidate signal after clean window | Document candidate-signal review; avoid efficacy claim |
| Schema update | Increment version log and affected files |
| Public repository release | Record release version, manifest, changelog, and OSF status |


# 13. FAIR, PROV, FHIR, and REDCap Alignment

APPRE is designed to be compatible with existing data-governance standards without claiming full conformance to any specific implementation profile.

The FAIR Guiding Principles emphasize that research objects should be findable, accessible, interoperable, and reusable (Wilkinson et al., 2016). APPRE supports conceptual FAIR alignment by publishing stable schema files, data dictionaries, validation rules, synthetic datasets, versioned release notes, repository paths, and governance documents. APPRE also separates public reusable documentation from restricted or private clinical data. APPRE is FAIR-compatible in intent, not automatically FAIR-complete. Full FAIR implementation requires persistent identifiers, metadata, access policies, machine-readable vocabularies, and long-term repository stewardship.

W3C PROV defines provenance around entities, activities, and agents involved in producing data or things (World Wide Web Consortium, 2013a, 2013b). APPRE maps naturally to this model. Entities include forms, datasets, EEG files, biomarker results, and response-policy records. Activities include assessment completion, data entry, validation, review, policy update, and repository release. Agents include participants, caregivers, assessors, clinicians, reviewers, and repository maintainers. APPRE uses PROV-style provenance logic; it does not claim formal PROV compliance in v0.1.1.

APPRE is not a FHIR implementation guide in v0.1.1. However, selected HL7 FHIR resources provide useful mapping analogues. Questionnaire maps to structured instrument definitions; QuestionnaireResponse maps to completed or partial responses; Observation maps to vitals, biomarkers, symptom scores, and other measurements; AdverseEvent maps to harm or near-harm event structure; Provenance maps to actor, timestamp, activity, source entity, and derived artifact; Device maps to wearable or device metadata; and Specimen maps to biological sample context. FHIR mapping in v0.1.1 is partial and conceptual.

REDCap is one compatible environment for implementing APPRE forms and longitudinal records. APPRE can be implemented in REDCap using instruments for subject profile, daily logs, weekly check-ins, adverse events, confounders, protocol deviations, response-policy review, and version logs (Harris et al., 2009). REDCap is not required. APPRE is platform-agnostic.

Table 12. Minimal FAIR-aligned APPRE profile for early adopters


| FAIR element | APPRE minimum |
| --- | --- |
| Findable | OSF/GitHub release, versioned filenames, citation metadata, ORCID where available |
| Accessible | Public schemas, synthetic data, validation rules, and manuscripts; restricted private clinical data |
| Interoperable | CSV/JSON schemas, controlled vocabularies, optional FHIR crosswalk |
| Reusable | License files, data dictionary, changelog, release notes, synthetic examples |
| Persistent release metadata | APPRE version, release date, maintainer, license, repository path, contact |
| Pseudonymous identifiers | subject_id, assessment_id, event_id, sample_id, eeg_session_id |
| Integrity | checksum or manifest file for public release artifacts |

Table 13. APPRE-to-PROV mapping


| PROV element | APPRE analogue |
| --- | --- |
| Entity | form, dataset, EEG file, biomarker result, response-policy record |
| Activity | assessment completion, data entry, validation, review, policy update, repository release |
| Agent | participant, caregiver, assessor, clinician, reviewer, repository maintainer |
| Derivation | new schema version derived from prior schema |
| Attribution | record or release attributed to reviewer/maintainer role |
| Generation | response-policy version generated by review activity |
| Invalidation | obsolete schema or superseded policy version |

Table 14. APPRE-to-FHIR conceptual crosswalk


| APPRE layer | FHIR analogue | Rationale |
| --- | --- | --- |
| Daily / weekly forms | Questionnaire | Structured instrument definition |
| Completed forms | QuestionnaireResponse | Complete or partial responses to structured instruments |
| Vitals / biomarkers / symptom scores | Observation | Measurements, assertions, coded results |
| Missing expected result | Observation.dataAbsentReason | Structured reason for absent data |
| Adverse events | AdverseEvent | Harm, near-harm, causality, outcome, contributing factors |
| Response-policy update | Provenance / PlanDefinition analogue | Traceable activity and policy context |
| Version log | Provenance | Actor, timestamp, source entity, activity, derived artifact |
| Wearable metadata | Device | Device or software source of data |
| Sample metadata | Specimen | Biological sample context for laboratory results |


# 14. Synthetic Dataset and Reproducibility Package

APPRE v0.1.1 should ship with a synthetic dataset. Synthetic data allow reviewers, collaborators, and external teams to inspect schemas, run validation rules, test analysis notebooks, and understand response-policy versioning without exposing real participant data.

The synthetic dataset should include at least one synthetic subject profile, at least 90 synthetic daily rows, at least 12 synthetic weekly rows, at least three synthetic monthly/quarterly records, at least two synthetic biomarker records, at least two synthetic EEG records, at least three confounder events, at least one adverse event, at least one protocol deviation, at least two response-policy versions, at least one version-log record, and at least one missingness pattern.

The synthetic dataset should model a clean baseline window, medication-change confounder, sleep-collapse week, fall or near-fall adverse event, missing wearable-data period, candidate-input configuration change, response-policy update after safety review, response-policy update after clean interpretable signal, confounded window excluded from candidate-signal interpretation, and public repository version update.

Recommended distribution paths include schemas/appre/v0.1.1/*.csv, schemas/appre/v0.1.1/*.json, data/synthetic/appre/v0.1.1/*.csv, validation/appre/v0.1.1/*.json, analysis/appre/v0.1.1/*.ipynb, and docs/appre/*.md.

The synthetic dataset should preserve edge cases that matter for validation, including falls, adverse events, medication-change confounders, infection windows, missing wearable data, proxy-reported entries, response-policy version increments, and protocol deviations. Synthetic data must not be derived from, linked to, or structured to mimic any real identifiable individual. Its purpose is to test schema behavior, validation rules, visualizations, and audit logic without exposing private clinical information.


# 15. Signal Detection Logic

APPRE includes exploratory signal-detection rules only as descriptive documentation aids.

A candidate signal is not a treatment effect. A candidate signal is an observed within-person directional change that meets pre-specified descriptive criteria inside an interpretable window.

Recommended minimum criteria include a defined baseline window, baseline variance estimate, sufficient data completion, reviewed active confounders, reviewed missingness, reviewed adverse events, comparable measurement methods, active response-policy version, and sensitivity analysis where needed.

The 0.3 standard-deviation threshold used in RAY-VASC should be described as an exploratory signal heuristic, not a validated clinical responder criterion. It may help flag windows for review but does not establish efficacy.

APPRE v0.1.1 does not specify formal hypothesis tests. Its signal rules are descriptive and intended for audit, visualization, and candidate-window review only. Any inferential statistics, model-based estimation, predictive analytics, or causal claims belong in future analytic manuscripts with separately defined hypotheses, power considerations, validation procedures, and statistical analysis plans.

Acceptable descriptive outputs for APPRE v0.1.1 include run charts, line plots, missingness heatmaps, confounder-window overlays, adverse-event timelines, per-subject spaghetti plots, baseline-versus-follow-up descriptive summaries, and response-policy version timelines. These outputs are designed to make trajectories inspectable, not to prove efficacy.

Table 15. APPRE descriptive output types


| Output | Purpose | Claim boundary |
| --- | --- | --- |
| Run chart | Inspect within-person trajectory | Descriptive only |
| Line plot | Visualize repeated outcome over time | No causal claim |
| Missingness heatmap | Identify feasibility and data-quality gaps | Feasibility signal |
| Confounder overlay | Mark interpretation-risk windows | Contextualizes signal |
| Adverse-event timeline | Preserve safety chronology | Safety documentation |
| Spaghetti plot | Compare multiple subjects without erasing individuality | Small-series visualization |
| Response-policy timeline | Show versioned protocol posture | Audit record |


# 16. Implementation Workflow

APPRE can be implemented in stages. The minimum viable implementation uses paper forms and spreadsheets. Intermediate implementation may use REDCap or electronic forms. Advanced implementation may include wearable exports, EEG metadata, biomarker imports, automated provenance, and future software layers. Across all implementations, APPRE should be used as a documentation system rather than an autonomous decision system.

At enrollment, the implementation team initializes the APPRE Subject Profile, baseline safety flags, reporter-role fields, measurement-tier designation, medication-context fields, and version-log record. The active response-policy version begins at v0.1.1 or the locally approved protocol version. No candidate-signal interpretation should occur until the baseline window is defined and minimum completion rules are specified.

During Weeks 0-4, staff or caregivers complete daily logs and weekly outcome packets according to the Tier 1 schedule. The APPRE reviewer checks completion rate, missingness reasons, confounder events, adverse events, medication changes, and caregiver burden at least weekly. If no major safety issue is present, the response-policy record may document continuation of the baseline or pre-load window. If a confounder or safety event occurs, the affected window is labeled before any interpretation is attempted.

At a phase transition, APPRE is used to generate a structured phase-transition summary. This summary should include completion percentage, missingness pattern, adverse-event count, confounder density, measurement comparability, active response-policy version, safety review status, and whether the next phase may proceed, pause, simplify, or repeat a window. The summary is a documentation artifact and does not replace clinician judgment or ethics oversight.

A minimum viable implementation includes paper daily log, paper weekly check-in, spreadsheet or CSV schema, adverse-event form, confounder log, missingness log, response-policy version log, synthetic dataset, validation checklist, and repository release notes.

An intermediate implementation may include REDCap or electronic form capture, validation rules at data entry, longitudinal dashboards, wearable exports, EEG metadata files, biomarker imports, structured adverse-event review, automated missingness report, and response-policy audit notebook.

An advanced implementation may include FHIR-compatible exports, automated provenance tracking, longitudinal feature extraction, external-site implementation fidelity tracking, multi-subject small-series aggregation, privacy-preserving analysis pipelines, and future rules engine or software dashboard. Advanced implementation remains separate from AI validation. Machine learning requires additional governance, dataset sufficiency, validation, and intended-use review.


## 16.1 Illustrative APPRE Cycle

A synthetic example illustrates the APPRE loop. During a 14-day baseline window, a participant daily logs and weekly outcomes reach 80% completion without major confounders, and no adverse events are recorded. The active response-policy version documents continuation of the baseline measurement window.

In Week 3, a respiratory infection is documented, sleep quality scores drop from 7/10 to 3/10, and a fall without injury occurs. APPRE records an acute-infection confounder window, an adverse-event record, a sleep-disruption flag, and a fall event. The affected measurement window is marked as confounded rather than interpreted as deterioration or candidate-input failure.

A medication change is then documented during the same window. APPRE links the medication change to a confounder record and prevents clean interpretation of mood, cognition, gait, sleep, or EEG change during the affected period. After clinician or protocol-team review, the response-policy version is incremented to document that the team temporarily simplified daily fields, documented that a candidate input was paused under review where applicable, and planned to repeat the affected window after recovery. The event, confounder, missingness, safety review, and updated policy are captured in APPRE tables rather than narrative notes.

This example illustrates the purpose of APPRE: not to automate care, but to make the chain from observation to interpretation status to response-policy documentation auditable.

Table 16. Synthetic APPRE cycle example


| Step | Event | APPRE table(s) updated | Interpretation |
| --- | --- | --- | --- |
| 1 | 14-day clean baseline, 80% completion | Daily Inputs, Weekly Outcomes, Response Policy | Baseline interpretable |
| 2 | Respiratory infection | Confounder, Daily Inputs | Active confounder window |
| 3 | Sleep quality drops 7/10 to 3/10 | Daily Inputs, Confounder | Sleep-collapse flag |
| 4 | Fall without injury | Adverse Event, Confounder | Safety event; motor/gait window confounded |
| 5 | Medication change | Confounder, Medication Context | Candidate signal interpretation suspended |
| 6 | Review meeting | Response Policy | Version increment; simplify burden; repeat window |
| 7 | Recovery window begins | Daily Inputs, Weekly Outcomes | New candidate interpretable window only after confounder resolution |


## 16.2 Small-Series Aggregation

In small-series implementations, each participant maintains a complete APPRE object: subject profile, repeated measures, confounders, adverse events, missingness records, protocol deviations, response-policy versions, and version logs. Cross-subject summaries are generated at a higher reporting layer rather than by collapsing individual trajectories into a single pooled narrative.

A series-level meta-schema may aggregate feasibility, completion distributions, missingness reasons, confounder density, adverse-event categories, measurement-tier adherence, response-policy stability, and candidate-signal review status across participants. This preserves within-person trajectory interpretability while enabling aggregate summaries required for small-series reporting, protocol refinement, and future trial planning.

APPRE therefore supports scale by layering series-level summaries above complete per-subject objects, not by erasing individual response trajectories.

Table 17. Small-series APPRE reporting layer


| Series-level field | Purpose |
| --- | --- |
| participants_enrolled | Total number of participants |
| participants_retained_90d | 90-day retention |
| median_daily_completion | Completion distribution |
| median_weekly_completion | Weekly packet feasibility |
| confounder_density_by_domain | Common interpretation threats |
| ae_count_by_severity | Safety profile |
| response_policy_changes_per_subject | Protocol stability |
| clean_windows_per_subject | Interpretable-cycle yield |
| partial_windows_per_subject | Feasibility but not signal |
| confounded_windows_per_subject | Interpretation-risk burden |
| missing_windows_per_subject | Data-capture failure pattern |
| tier_level_completion | Implementation maturity |


# 17. Open-Source Repository Structure

APPRE v0.1.1 should be released with a clear folder structure.

The public repository should include manuscripts, schemas, synthetic data, validation rules, analysis templates, governance documents, citation metadata, changelog entries, and manifest files.

The initial APPRE release should not include production AI software. Any future APPRE software layer should be released, licensed, governed, and validated separately.

Repository tree


| Path | Purpose |
| --- | --- |
| manuscripts/paper4/final/ | Final manuscript DOCX/PDF/MD |
| supplements/paper4/final/ | Schema dictionary and crosswalk supplements |
| schemas/appre/v0.1.1/ | APPRE public schema files |
| data/synthetic/appre/v0.1.1/ | Synthetic APPRE example datasets |
| validation/appre/v0.1.1/ | Validation rules |
| analysis/appre/v0.1.1/ | Analysis templates or notebooks |
| docs/appre/ | Governance, implementation, and future software pathway docs |
| releases/paper4/final/ | Release artifacts and manifest |
| archive/ | Prior versions and release history |


# 18. Governance, Security, and Ethics

No new clinical data are reported in this manuscript. The manuscript describes a research-data architecture.

External implementation involving prospective human-subject data requires local ethics review, IRB review, or formal determination as applicable. Any sharing of identifiable clinical data requires consent, privacy review, and data-governance approval. Public release should be limited to de-identified protocols, forms, schemas, synthetic datasets, analysis notebooks, governance language, and reproducibility documents unless separate authorization exists.

Minimum technical safeguards should be specified before implementation. Identifiable APPRE datasets should use secure storage, encryption at rest where available, encryption in transit for digital systems, role-based access controls, password or institutional credential protection, audit logging for data entry and review activities, and restricted export permissions. Public repositories should not contain direct identifiers, raw medical records, screenshots of clinical portals, unredacted notes, private contact information, or identifiable dates unless appropriate de-identification, consent, and privacy review authorize release.

APPRE schemas are designed to be de-identification-friendly. Public schema examples should use study identifiers, subject identifiers, site identifiers, assessment identifiers, and event identifiers rather than names, medical record numbers, exact addresses, phone numbers, emails, or raw clinical documents. When date shifting or generalization is required for privacy protection, the method should be documented in public release notes without exposing private source data.

Publication review should occur before any public release. At minimum, review should confirm that files contain no direct identifiers, no raw protected health information, no private clinical screenshots, no unapproved individual-level outcome data, and no controlled-substance how-to content.

Controlled-substance exposure is outside APPRE's candidate-input configuration scope. If such exposure appears in a lawful clinician-governed research setting, APPRE may document it only as as-administered observational data. APPRE does not recommend, adjust, tune, optimize, select, increase, decrease, cycle, or personalize controlled-substance exposure.

Table 18. Minimum security and privacy controls


| Control | Minimum requirement |
| --- | --- |
| De-identification | No direct identifiers in public files |
| Role-based access | Restricted access to identifiable datasets |
| Secure storage | Encrypted or institutionally secured storage where available |
| Secure transmission | Encryption in transit for digital systems |
| Audit logging | Data entry, review, export, and amendment events logged |
| Export control | Restricted export permissions for identifiable data |
| Publication review | Pre-release privacy and claim-boundary review |
| Raw-document prohibition | No raw clinical documents, screenshots, or identifiable medical records in public repo |


# 19. Future APPRE Software and AI Pathway

APPRE is published in Paper 4 as a research-data architecture and schema-and-rules framework for repeated measures, confounder annotation, adverse-event capture, missingness handling, provenance, and versioned response-policy documentation. In this manuscript, APPRE is not validated artificial intelligence, not clinical decision support, not a medical device, and not a treatment optimizer.

Future work may implement APPRE as software, including a rules engine, workflow platform, dashboard, validation layer, provenance tracker, or AI-assisted research data system. Any such implementation would be a later-stage product or research software layer derived from, but distinct from, the present methods paper and open documentation release.

No future APPRE software should be described as clinical decision support, Software as a Medical Device, predictive medical software, or validated artificial intelligence unless it has a separately defined intended use, explicit user role, locked input/output specification, technical validation, human-factors review, privacy and cybersecurity review, regulatory assessment, and prospective evaluation appropriate to the setting in which it is deployed.

The current manuscript does not authorize or validate diagnosis, prescribing, treatment selection, treatment optimization, controlled-substance personalization, or replacement of clinician judgment. Controlled-substance exposure, if present in future lawful research implementations, may be documented only as an as-administered observational field under separate clinician-governed, ethics-approved oversight; APPRE does not recommend, adjust, tune, or optimize such exposure.

The compliant interpretation is therefore sequential. Paper 4 establishes the documentation architecture first: schemas, validation rules, provenance, reproducibility, and response-policy versioning. Future APPRE software may build on that architecture only after independent governance, validation, intended-use review, and regulatory assessment are complete.


# 20. APPRE Within the Broader Longevity Stack

Although APPRE is introduced here in the context of complex neurovascular disease, the underlying schema-and-rules architecture is compatible with broader longitudinal health and longevity research. Future extensions may integrate historical and continuous biomarkers, wearable signals, genetic markers, imaging metadata, environmental context, behavioral data, and repeated functional outcomes across additional chronic or preventive-health domains.

For the present v0.1.1 release, APPRE remains focused on RAY-VASC-style complex neurovascular and mixed neurodegenerative-vascular research. This narrow proof-of-work vertical is intentional. Complex neurovascular phenotypes require structured handling of cognition, gait, sleep, respiratory burden, adverse events, caregiver reporting, biomarkers, EEG, and confounders, making them a demanding test case for longitudinal data architecture.

In later work, APPRE may serve as the data spine beneath a broader longevity or health-optimization platform. That future platform may include separate analytics, simulation, risk-trajectory modeling, consumer dashboards, professional tools, or AI-assisted workflows. Those layers should be treated as distinct from APPRE v0.1.1. APPRE provides schemas, provenance, validation rules, and response-policy documentation. A future longevity engine would require separate intended-use definition, validation, governance, privacy review, regulatory assessment, and product-specific claims review.

The appropriate sequence is layered. RAY-VASC provides the first implementation vertical. APPRE provides the longitudinal data and provenance spine. Future LIME-style analytics or longevity-platform tools may build on APPRE only after additional phenotype modules, external validation, and governance pathways are defined.


# 21. Discussion

APPRE addresses a practical gap in complex neurovascular research: the gap between repeated measurement and interpretable evidence. Complex phenotypes generate many signals, but signal density without context can mislead. A participant sleep, gait, mood, breathing, cognition, falls, medication adherence, caregiver status, EEG, biomarkers, and wearable data may change together. APPRE purpose is to make those changes traceable.

The framework is deliberately conservative. It begins with schema stability, validation rules, missingness coding, adverse-event documentation, confounder annotation, privacy controls, synthetic datasets, and response-policy versioning. That foundation matters because future software, AI, dashboards, or adaptive models cannot be trustworthy if the underlying data architecture is inconsistent.

The behaviorome-to-responseome framing gives APPRE a stronger methodological identity. APPRE is not just a spreadsheet. It is a longitudinal state-documentation architecture for human protocols. It extends the principle that high-frequency behavior can reveal trajectory while adding the human-specific requirements of proxy reporting, ethics, privacy, provenance, safety review, clinical boundaries, and reproducibility.

APPRE also separates publication from productization. The public scientific artifact should remain open, inspectable, and reproducible. Future APPRE software may be developed as a distinct layer. That future layer must not be back-projected onto the current manuscript. The current paper plants the architecture, not a software claim.


# 22. Limitations

APPRE has several limitations.

First, APPRE is unvalidated as predictive software. The present manuscript does not test predictive performance, clinical utility, treatment effects, diagnostic accuracy, or patient outcomes.

Second, APPRE may improve documentation quality without improving clinical outcomes. Better schemas and provenance do not guarantee better health results.

Third, N-of-1 and small-series data remain vulnerable to expectancy effects, regression to the mean, practice effects, unmeasured confounding, missingness, and caregiver reporting bias.

Fourth, APPRE signal-detection logic is exploratory. A 0.3 standard-deviation threshold is a review heuristic, not a validated responder definition.

Fifth, APPRE depends on implementation fidelity. Poor data entry, inconsistent assessor methods, device nonadherence, incomplete adverse-event capture, or weak response-policy review can reduce interpretability.

Sixth, FHIR mapping is partial and conceptual in v0.1.1. APPRE is not presented as a formal FHIR implementation guide.

Seventh, the behaviorome analogy is methodological only. Killifish behaviorome research does not validate APPRE in humans, does not prove human lifespan prediction, and does not establish clinical response prediction.

Eighth, future software implementation may introduce new risks, including automation bias, overinterpretation, privacy exposure, cybersecurity risk, model drift, and regulatory obligations. Those risks require separate governance.

Ninth, the broader longevity-stack pathway remains downstream. The present manuscript should not be interpreted as a consumer health platform, clinical product, or optimization system.


# 23. Future Directions

Future work should proceed in staged layers.

First, APPRE v0.1.1 should be released publicly with schemas, synthetic data, validation rules, notebooks, release notes, and governance files.

Second, RAY-VASC-style implementations should test whether low-burden Tier 1 APPRE capture can achieve the default feasibility threshold of at least 70% daily and weekly completion without unacceptable participant or caregiver burden.

Third, small-series implementations should preserve complete per-subject APPRE objects while generating series-level feasibility, missingness, confounder, adverse-event, and response-policy summaries.

Fourth, future analytic manuscripts may test specific lagged hypotheses, EEG-biomarker synchrony, wearable feasibility, or domain-specific signal-detection logic. Such manuscripts require separate hypotheses and analysis plans.

Fifth, future phenotype modules may extend APPRE beyond complex neurovascular disease only after preserving backward compatibility with the core schema.

Sixth, future APPRE software or AI-assisted tools require separate intended-use definition, validation, privacy and cybersecurity review, human-factors assessment, regulatory analysis, and prospective evaluation before clinical or decision-support claims are made.


# 24. Conclusion

APPRE is a schema-and-rules framework for adaptive measurement, confounder annotation, adverse-event capture, missingness handling, provenance, and response-policy documentation in complex neurovascular research. It is designed to support N-of-1 and small-series protocols where repeated measures are valuable but difficult to interpret without context.

The contribution of APPRE v0.1.1 is not clinical efficacy, AI validation, software deployment, diagnostic prediction, or treatment optimization. The contribution is a reproducible documentation architecture that can be reviewed, implemented, versioned, stress-tested with synthetic data, and improved across sites. By preserving complete per-subject trajectories while enabling higher-level small-series summaries, APPRE creates a bridge from single-case feasibility work to externally auditable research infrastructure.

RAY-VASC remains the first proof-of-work vertical. Future longevity, analytics, software, or AI-assisted layers may build on APPRE only after separate phenotype-module expansion, intended-use definition, governance, validation, privacy/security review, and regulatory assessment. The current manuscript establishes the data-governance spine, not the downstream product.


# Data Availability Statement

No new clinical data are reported in this manuscript. Public release will include the manuscript, schemas, validation rules, synthetic datasets, analysis templates or notebooks, changelog, release notes, and governance documents through the RAY-VASC repository and OSF-linked records.

Raw identifiable clinical data will not be publicly released. Any additional sharing requires separate consent, privacy review, de-identification, and ethics governance.


# Ethics Statement

This manuscript reports methods and data architecture and does not present prospective interventional human outcomes. Any external prospective implementation intended to contribute to generalizable knowledge requires local ethics or IRB review, or formal determination, before enrollment. Public sharing is limited to de-identified materials unless separate consent and review authorize more.


# Conflict of Interest Statement

Logan Henderson is the originating researcher of APPRE and the RAY-VASC Regenerative Loop Research Program. Future APPRE software, workflow tools, dashboards, analytics systems, or AI-assisted products may be developed separately through Logan Henderson and/or SolutionNest. The present manuscript does not describe a deployed software product and does not validate APPRE as clinical decision support, artificial intelligence, Software as a Medical Device, or a treatment optimizer.


# Funding

This manuscript was prepared as part of a self-funded independent open-source research documentation program unless otherwise updated before submission. No external funding is reported for this manuscript draft.


# Author Contributions

Logan Henderson conceived the APPRE framework, developed the schema-and-rules architecture, designed the response-policy documentation model, integrated the RAY-VASC publication sequence, prepared the open-source documentation strategy, and wrote the manuscript.


# Acknowledgments

This work originates from the RAY-VASC Regenerative Loop Research Program and the family-originated research pathway inspired by Raymond A. Hornsby. Raymond A. Hornsby is acknowledged as the human origin of the RAY-VASC work where authorization permits public attribution. Christine A. Hood is acknowledged for family authorization and care coordination support where applicable. No raw medical records or individual-level clinical outcomes are reported in this manuscript.


# Licensing and Repository Governance Note

Manuscript, schemas, validation rules, synthetic datasets, and analysis templates will be released under repository governance terms specified at public release. The APPRE name, future compiled software, future proprietary dashboards, and downstream commercial platform layers may require separate trademark, licensing, governance, and regulatory treatment. This note is not legal advice and does not establish legal rights, trademark status, or software licensing terms for future software layers not included in the current manuscript artifact.


# Disclaimer

Not medical advice. Not legal advice. This manuscript is for research planning, documentation, protocol design, data architecture, and open-science implementation only. It is not clinical care, a treatment recommendation, a supplement protocol, a controlled-substance protocol, or software validation. All clinical decisions remain clinician-directed. Controlled-substance exposure, if any, requires lawful jurisdiction, ethics governance, qualified clinical oversight, informed consent, and adverse-event monitoring. No sourcing, preparation, dosing, administration, procurement, conversion, or self-use instructions are provided for controlled substances.


# References

Bedbrook, C. N., Nath, R. D., Zhang, L., Linderman, S. W., Brunet, A., & Deisseroth, K. (2026). Lifelong behavioral screen reveals an architecture of vertebrate aging. Science, 391(6790), eaea9795. https://doi.org/10.1126/science.aea9795

Calvert, M., Kyte, D., Mercieca-Bebber, R., Slade, A., Chan, A.-W., King, M. T., Hunn, A., Bottomley, A., Regnault, A., & the SPIRIT-PRO Group. (2018). Guidelines for inclusion of patient-reported outcomes in clinical trial protocols: The SPIRIT-PRO extension. JAMA, 319(5), 483-494. https://doi.org/10.1001/jama.2017.21903

Harris, P. A., Taylor, R., Thielke, R., Payne, J., Gonzalez, N., & Conde, J. G. (2009). Research electronic data capture (REDCap): A metadata-driven methodology and workflow process for providing translational research informatics support. Journal of Biomedical Informatics, 42(2), 377-381. https://doi.org/10.1016/j.jbi.2008.08.010

Health Level Seven International. (2024a). FHIR R4: AdverseEvent. https://hl7.org/fhir/R4/adverseevent.html

Health Level Seven International. (2024b). FHIR R4: Device. https://hl7.org/fhir/R4/device.html

Health Level Seven International. (2024c). FHIR R4: Observation. https://hl7.org/fhir/R4/observation.html

Health Level Seven International. (2024d). FHIR R4: Provenance. https://hl7.org/fhir/R4/provenance.html

Health Level Seven International. (2024e). FHIR R4: Questionnaire. https://hl7.org/fhir/R4/questionnaire.html

Health Level Seven International. (2024f). FHIR R4: QuestionnaireResponse. https://hl7.org/fhir/R4/questionnaireresponse.html

Health Level Seven International. (2024g). FHIR R4: Specimen. https://hl7.org/fhir/R4/specimen.html

Henderson, L. (2026a). The Brain That Remains: A framework for neuroplasticity, residual capacity, and open-source protocol design in complex neurodegenerative disease. RAY-VASC Regenerative Loop Research Program.

Henderson, L. (2026b). RAY-VASC: A multidomain N-of-1 and small-series protocol for complex neurovascular disease. OSF. https://doi.org/10.17605/OSF.IO/WESZY

Henderson, L. (2026c). RAY-001 baseline characterization in a complex neurovascular Parkinsonian phenotype: Documenting pre-intervention architecture and measurement feasibility for future neuroplasticity research. RAY-VASC Regenerative Loop Research Program.

Porcino, A. J., Shamseer, L., Chan, A.-W., Kravitz, R. L., Orkin, A., Punja, S., Ravaud, P., Schmid, C. H., & Vohra, S. (2020). SPIRIT extension and elaboration for N-of-1 trials: SPENT 2019 checklist. BMJ, 368, m122. https://doi.org/10.1136/bmj.m122

Shamseer, L., Sampson, M., Bukutu, C., Schmid, C. H., Nikles, J., Tate, R., Johnston, B. C., Zucker, D., Shadish, W. R., Kravitz, R., Guyatt, G., Altman, D. G., Moher, D., & Vohra, S. (2015). CONSORT extension for reporting N-of-1 trials (CENT) 2015: Explanation and elaboration. BMJ, 350, h1793. https://doi.org/10.1136/bmj.h1793

Vohra, S., Shamseer, L., Sampson, M., Bukutu, C., Schmid, C. H., Tate, R., Nikles, J., Zucker, D., Kravitz, R., Guyatt, G., Altman, D. G., Moher, D., & CENT Group. (2015). CONSORT extension for reporting N-of-1 trials (CENT) 2015 statement. BMJ, 350, h1738. https://doi.org/10.1136/bmj.h1738

Wilkinson, M. D., Dumontier, M., Aalbersberg, I. J. J., Appleton, G., Axton, M., Baak, A., Blomberg, N., Boiten, J.-W., da Silva Santos, L. B., Bourne, P. E., Bouwman, J., Brookes, A. J., Clark, T., Crosas, M., Dillo, I., Dumon, O., Edmunds, S., Evelo, C. T., Finkers, R., ... Mons, B. (2016). The FAIR Guiding Principles for scientific data management and stewardship. Scientific Data, 3, 160018. https://doi.org/10.1038/sdata.2016.18

World Wide Web Consortium. (2013a). PROV-DM: The PROV Data Model. W3C Recommendation. https://www.w3.org/TR/prov-dm/

World Wide Web Consortium. (2013b). PROV-O: The PROV Ontology. W3C Recommendation. https://www.w3.org/TR/prov-o/

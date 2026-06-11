# RAY-VASC Analysis Plan v0.1

**Project:** RAY-VASC Regenerative Loop Research Program  
**Registration:** RAY-VASC: A Multidomain N-of-1 and Small-Series Protocol for Complex Neurovascular Disease  
**Document type:** Standalone analysis-plan support file  
**Version:** 0.1  
**Date:** 2026-06-11  
**Prepared by:** Logan Henderson, Independent Researcher / Research Architect  
**Status:** OSF preregistration support file  
**Changelog:** v0.1 created as a standalone analysis-plan file to support the OSF Paper 2 preregistration.

---

## 1. Purpose

This analysis plan supports the RAY-VASC Paper 2 OSF preregistration. RAY-VASC is a prospective, longitudinal, observational N-of-1 protocol with a small-series expansion pathway. The analysis plan is designed to evaluate feasibility, measurement integrity, longitudinal trajectory interpretability, adverse-event documentation, confounder annotation, missingness, caregiver/proxy reporting, and exploratory signal-detection readiness.

The protocol is not designed or powered to test treatment efficacy, causal effects, disease modification, vascular lesion repair, brain repair, PSP reversal, dementia reversal, receptor reconnection, or recovery. All analyses are observational, descriptive, feasibility-focused, and hypothesis-generating unless otherwise specified in a future ethics-reviewed and separately preregistered protocol.

---

## 2. Primary Unit of Analysis

The primary unit of analysis is the individual participant measured repeatedly over time. In the minimum viable N-of-1 implementation, the analysis focuses on one participant’s repeated measures across baseline, follow-up, and phase-labeled observation windows. In a small-series implementation, each participant is analyzed first as an independent within-person trajectory. Cross-participant summaries are descriptive and focus on feasibility, transferability, missingness, variance, burden, adverse events, and confounder density across parallel N-of-1 trajectories.

Participants are not pooled as if they were randomized treatment-arm observations.

---

## 3. Primary Feasibility Endpoints

Primary feasibility endpoints include:

1. Daily Tier 1 log completion proportion.
2. Weekly Tier 1 packet completion proportion.
3. 90-day retention.
4. 52-week retention.
5. Missingness rate.
6. Interpretable-cycle proportion.
7. Adverse-event documentation completeness.
8. Confounder annotation completeness.
9. Caregiver/proxy reporting proportion.
10. Protocol-deviation frequency.
11. Wearable valid-day proportion where applicable.
12. EEG session completion where applicable.
13. Biomarker collection completion where applicable.
14. Participant/caregiver burden indicators.

The primary 90-day feasibility criterion is met if daily Tier 1 log completion is at least 70%, weekly Tier 1 packet completion is at least 70%, retention is maintained through 90 days, adverse events are documented, and major confounders are annotated. The 52-week follow-up target is analyzed descriptively using the same completion, missingness, safety, and interpretability structure.

---

## 4. Statistical Models

RAY-VASC uses a descriptive, feasibility-first, within-person analysis framework. No primary inferential omnibus test is planned. No ANOVA, randomized group comparison, treatment-arm contrast, factorial model, or confirmatory regression model is planned for the primary analysis because the preregistered design is observational and within-person.

Primary feasibility models are descriptive. Feasibility endpoints will be summarized as proportions, counts, rates, binary indicators, medians, ranges, or visual summaries as appropriate.

Within-person trajectory analysis will use time-series visualization and descriptive longitudinal summaries. For each participant, raw and standardized trajectories may be plotted by study day, study week, assessment window, phase, and cycle. Planned trajectory domains include cognition, functional mobility/falls, mood/distress, sleep/repair, respiratory burden, dysphagia where applicable, caregiver burden, circadian regularity, medication/context stability, and modified ADL/IADL function.

Where sufficient baseline observations exist, continuous or ordinal repeated measures may be standardized against the participant’s own baseline mean and standard deviation. Standardized within-person values may be calculated as:

`standardized value = (observed value - baseline mean) / baseline standard deviation`

For measures where higher scores indicate greater impairment or burden, the sign may be reversed for directional summaries so that positive direction consistently reflects improvement or reduced burden. Raw values remain available, and sign reversals will be documented.

Any exploratory p-values, correlations, regression coefficients, or model estimates will be labeled exploratory and interpreted only as hypothesis-generating.

---

## 5. Candidate Directional Signal Rule

Candidate directional signal analysis is exploratory and heuristic. A candidate signal may be flagged when a pre-specified domain shows approximately 0.3 standard deviation change from baseline sustained across at least two consecutive interpretable cycles, with at least two domains showing directionally consistent change and no major unresolved confounder explanation.

This threshold is not a validated clinical responder criterion, not a treatment endpoint, and not evidence of efficacy. It is used only to identify whether a trajectory may warrant further study.

---

## 6. Pre-Specified Exploratory Lag Analyses

Exploratory lag analyses may be conducted if data density is sufficient.

### 6.1 Sleep-to-cognition and sleep-to-mobility

Sleep-to-cognition and sleep-to-mobility analyses may examine whether sleep duration or sleep quality over lag 0–2 days is associated with next-day cognition ratings, clarity, attention, mobility ratings, Timed Up and Go, falls, or near-falls.

### 6.2 Exertion-to-mood

Exertion-to-mood analyses may examine whether structured exertion, activity minutes, step count, or social engagement over lag 0–7 days is associated with weekly mood/distress trajectories.

### 6.3 Respiratory-context analyses

Respiratory-context analyses may examine whether breathlessness, SpO2, rescue-inhaler use, respiratory exacerbation, sleep disruption, or activity limitation corresponds with cognition, mobility, falls, mood, or fatigue trajectories.

---

## 7. EEG and Biomarker Exploratory Analyses

Where Tier 2 EEG is active, exploratory EEG analyses may examine resting-state spectral power across delta, theta, alpha, and beta bands; alpha/theta ratio; P300 amplitude and latency where implemented; connectivity measures; session-level artifact flags; and within-person change across scheduled EEG sessions. EEG outputs are interpreted as exploratory neurophysiology measures only. EEG findings will not be used to claim brain repair, neurodegeneration reversal, vascular lesion repair, or treatment efficacy.

Where Tier 2 biomarkers are collected, exploratory biomarker analyses may examine hs-CRP, IL-6, TNF-alpha, BDNF, p-tau217, NfL, HbA1c, eGFR, homocysteine, B12, vitamin D, CBC, lipid panel, or other locally approved markers. Biomarker analysis may include raw values, change from baseline, synchronization with EEG windows, and descriptive comparison with major confounder periods such as infection, medication change, acute illness, hospitalization, or respiratory exacerbation. Biomarker findings are interpreted as exploratory context and not as evidence of disease modification.

Where EEG and biomarkers are co-scheduled, an EEG/biomarker synchronization indicator may be created. A synchronized window may be marked when EEG and biomarker collection occur within approximately 72 hours of one another. Synchronization failure will be documented and may limit interpretability of EEG-biomarker comparisons.

---

## 8. Transformations

Data will be transformed only as needed for descriptive analysis, feasibility summaries, interpretability, and consistent directionality.

Dates and timestamps will be converted into study day, study week, assessment window, protocol phase, and cycle variables. Phase variables may include Baseline/Pre-Load, optional Governed Plasticity Window, Sustain/Integration, and Follow-Up. These are time-structure labels and not randomized treatment assignments.

Categorical variables will be coded transparently. Entry source may be coded as self, caregiver, proxy, legally authorized representative, or mixed entry. Adverse-event severity may be coded as none, mild, moderate, severe, serious, or site-defined equivalent. Confounder status may be coded by type, presence/absence, date, duration, and interpretation flag. Medication/context changes may be coded as none, medication change, supplement/context change, rehabilitation/care change, acute illness, hospitalization, travel, caregiver disruption, or other documented category.

Completion variables will be converted into proportions: completed observations divided by expected observations for the relevant window. Missingness will be summarized as missing expected observations divided by total expected observations. Retention will be coded at the 90-day feasibility checkpoint and 52-week follow-up target.

Continuous variables may be summarized as raw values, weekly means, monthly means, baseline means, change from baseline, standardized within-person z-scores, or standardized mean differences when sufficient observations exist. For variables where higher values indicate greater impairment or burden, signs may be reversed for summary plots so that positive direction consistently reflects improvement or reduced burden.

No missing data will be transformed into improvement or deterioration. Missing observations will remain missing and will be summarized as missingness.

---

## 9. Inference Criteria

The primary inference criteria are feasibility and interpretability criteria, not efficacy criteria. The protocol will be considered feasible at the 90-day checkpoint if daily Tier 1 log completion is at least 70%, weekly Tier 1 packet completion is at least 70%, retention is maintained through 90 days, adverse events are documented, and major confounders are annotated.

A measurement window may be considered primary-interpretable if daily Tier 1 log completion is at least 70%, weekly Tier 1 packet completion is at least 70%, adverse events are documented, and major confounders are annotated. Windows that fail these thresholds may be retained descriptively but will not be treated as primary-interpretable.

Exploratory p-values, correlations, regression coefficients, or model estimates may be reported only as hypothesis-generating. No binary efficacy conclusion will be based on p-values. No correction for multiple comparisons is planned for exploratory descriptive analyses because the protocol is not designed for confirmatory hypothesis testing.

Confounder interpretation takes priority over apparent signal. Apparent improvement or deterioration during infection, medication change, hospitalization, acute illness, major fall, travel, caregiver disruption, respiratory exacerbation, or unresolved measurement artifact will be interpreted cautiously and may be excluded from primary-interpretable windows.

---

## 10. Data Inclusion and Exclusion

All enrolled participants with any prospective data after registration and applicable governance clearance will be included in feasibility summaries unless consent is withdrawn or data use is prohibited by ethics, privacy, or governance requirements.

For within-person trajectory analyses, all available observations will be retained descriptively. Primary-interpretable analyses will include only windows with adequate completion, adverse-event documentation, and confounder annotation. Windows with less than 70% daily Tier 1 log completion or less than 70% weekly Tier 1 packet completion may be retained descriptively but not treated as primary-interpretable.

Data may be flagged, paused, excluded from primary interpretation, or retained as descriptive-only when major unresolved confounders are present. Major confounders include infection, acute illness, hospitalization, medication change, supplement/context change, respiratory exacerbation, major sleep disruption, fall injury, acute neurological event, travel, caregiver disruption, major clinical care change, or major protocol deviation.

Outliers will not be automatically deleted. Outliers will be reviewed for data-entry error, device artifact, timing inconsistency, acute illness, fall, medication change, respiratory event, hospitalization, or other documented confounder. Correctable data-entry errors may be corrected with audit documentation. Implausible or artifact-contaminated values may be flagged and excluded from primary interpretation while retained in the audit record.

For EEG or wearable data, observations may be excluded from primary interpretation if artifact, device failure, insufficient recording quality, invalid-day status, or protocol timing deviation prevents interpretation. Biomarker values may be flagged if collection timing, illness, medication change, lab-processing issue, or synchronization-window failure limits interpretability.

Participants may be excluded from small-series aggregation if they do not meet the qualifying phenotype, consent/privacy pathway, minimum data-capture feasibility, or governance requirements.

---

## 11. Missing Data

Missing data will be summarized, not imputed as improvement or deterioration. Missingness will be reported by participant, domain, measure, assessment window, and protocol phase where applicable.

Daily and weekly completion proportions will be calculated using expected observations as the denominator. A window with less than 70% daily Tier 1 log completion or less than 70% weekly Tier 1 packet completion may be retained descriptively but will not be treated as primary-interpretable.

No last-observation-carried-forward method will be used for primary interpretation. No missing value will be assumed to represent stability, improvement, or decline. If limited interpolation or smoothing is used for visualization, the visual output will be labeled as such, and raw data points will remain available in the analysis record.

Reasons for missingness will be annotated when known, including participant burden, caregiver unavailability, acute illness, hospitalization, travel, technical failure, device nonwear, clinical event, severe fatigue, or protocol pause. Missingness itself will be treated as a feasibility outcome.

---

## 12. Other Planned Analyses

Planned secondary and exploratory analyses include timeline visualization, domain trajectory plots, adverse-event summaries, confounder-density summaries, caregiver/proxy-reporting summaries, protocol-deviation summaries, and measurement-burden summaries.

Exploratory sleep-to-cognition and sleep-to-mobility analyses may examine whether sleep duration or sleep quality over lag 0–2 days is associated with next-day cognition ratings, clarity, attention, mobility ratings, Timed Up and Go, falls, or near-falls.

Exploratory exertion-to-mood analyses may examine whether activity minutes, structured exertion, step count, or social engagement over lag 0–7 days is associated with weekly mood/distress trajectories.

Exploratory respiratory analyses may examine whether breathlessness, SpO2, rescue-inhaler use, respiratory exacerbation, sleep disruption, or activity limitation corresponds with cognition, mobility, mood, falls, or fatigue trajectories.

Where Tier 2 is active, exploratory EEG analyses may examine resting-state spectral power, alpha/theta ratio, P300 amplitude/latency, connectivity measures, artifact flags, and within-person trajectory changes across scheduled EEG sessions. EEG findings will be interpreted as exploratory neurophysiology signals only.

Where Tier 2 biomarkers are collected, exploratory biomarker analyses may examine hs-CRP, IL-6, TNF-alpha, BDNF, p-tau217, NfL, HbA1c, eGFR, homocysteine, B12, vitamin D, CBC, lipid panel, or other locally approved markers. Biomarker findings will be interpreted as exploratory context and not as evidence of disease modification.

APPRE-related analysis will evaluate auditability only: whether required fields are complete, time-stamped, versioned, confounder-annotated, and usable for response-policy review. APPRE will not be analyzed as validated artificial intelligence, clinical decision support, a medical device, a prescribing tool, or a controlled-substance optimization system.

All secondary and exploratory analyses remain hypothesis-generating.

---

## 13. Public Boundary

This analysis plan is publication-only research documentation. It does not provide medical advice, legal advice, treatment claims, clinical services, controlled-substance sourcing, preparation, dosing, administration, conversion, procurement, or self-use instructions.


# APPRE Validation Rules v0.1.1

APPRE validation rules are documentation and audit checks only. They are not clinical decision support, not AI validation, and not medical-device rules.

## Default interpretable-window criteria

A Tier 1 window may be considered interpretable for primary descriptive review if:

1. Baseline window is defined.
2. >=70% expected daily Tier 1 fields are complete.
3. >=70% expected weekly outcome fields are complete.
4. Reporter role is documented.
5. Measurement method is comparable.
6. Confounders are reviewed.
7. Missingness reasons are documented.
8. No unresolved severe adverse event is active.
9. Medication change, acute infection, fall, emergency-care event, major sleep disruption, or caregiver disruption is documented and handled as confounder if present.
10. Active response-policy version is documented.

The 70% threshold is an implementation default, not a validated clinical cutoff.

## Rules

- **R1 Safety override:** Any severe or serious adverse event triggers response-policy review before signal interpretation.
- **R2 One-variable documentation rule:** Candidate-input changes are documented one primary variable at a time where feasible.
- **R3 Baseline rule:** No candidate signal is interpreted without baseline window and variability estimate.
- **R4 Confounder rule:** Infection, medication change, hospitalization, fall, sleep collapse, travel, or caregiver disruption must be annotated before interpretation.
- **R5 Minimum completion rule:** Default primary interpretation requires >=70% Tier 1 daily and weekly completion unless protocol justifies alternate threshold.
- **R6 Exploratory signal rule:** >=0.3 SD directional change can flag review only; not validated responder criterion.
- **R7 Controlled-substance boundary:** APPRE records only as-administered observational exposure under separate lawful clinician-governed ethics-approved oversight if present.
- **R8 Burden ceiling:** Participant/caregiver burden triggers simplification before data ambition.
- **R9 Versioned response policy:** Every material update includes date, reason, window, reviewer, prior policy link.
- **R10 EEG confounder gate:** EEG sessions require sleep, caffeine, acute illness, medication, and artifact context before primary interpretation.
- **R11 Cycle boundary rule:** New cycles establish fresh baseline estimates; prior cycles are hypotheses, not established effects.
- **R12 Biomarker-EEG synchrony rule:** Matched EEG-biomarker analysis requires documented synchronization window.
- **R13 Repository release rule:** Public release increments version log and manifest; raw identifiable data excluded.
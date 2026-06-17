# Paper 4 APPRE Worked Synthetic Cycle v0.1.1

## Purpose
This supplement provides a compact synthetic vignette demonstrating how APPRE records a clean baseline window, a confounded week, an adverse event, and the resulting versioned response-policy update. The example is illustrative only. It does not report real participant data and does not imply treatment efficacy, treatment optimization, or autonomous recommendation logic.

## Synthetic scenario summary
A pseudonymous participant (`RAY001-SYN-01`) enters a 14-day clean baseline window with strong completion and no major confounders. During the following week, sleep quality collapses, an acute infection and a medication change are documented as confounders, and a fall without injury occurs. The review team then documents a response-policy update that temporarily simplifies daily capture and schedules a repeat window after recovery.

## Step 1 — Clean baseline window
- **Window**: Days 1–14
- **Completion posture**: Daily Tier 1 fields and weekly outcomes exceed the recommended 70% completion threshold.
- **Observed pattern**: Sleep quality remains around 7/10, respiratory burden stays stable, and no adverse events are recorded.
- **Interpretation status**: Window marked `interpretable`.

## Step 2 — Confounded week
- **Window**: Days 15–21
- **Observed change**: Sleep quality drops from approximately 7/10 to 3/10; caregiver burden and gait instability worsen.
- **Confounders recorded**:
  - `medication_change`
  - `acute_infection`
- **Interpretation status**: Window marked `confounded_review_required` pending team review.

## Step 3 — Adverse event capture
- **Event**: `fall_without_injury`
- **Severity**: `grade_1`
- **Seriousness**: Not serious
- **Action taken**: Safety review documented; no autonomous system action occurs.

APPRE records the adverse event separately from routine outcomes so that safety review, attribution, and resolution are not lost inside narrative notes.

## Step 4 — Response-policy documentation
After review, the protocol team documents a new response-policy version:
- **Previous version**: `1.0.0`
- **Updated version**: `1.1.0`
- **Documented change**: temporarily simplify daily fields and repeat the affected window after recovery.
- **Boundary**: APPRE does not make this decision. The review team documents the decision, rationale, and effective date.

## Tables touched in this cycle
- `subject_profile`
- `daily_inputs`
- `weekly_outcomes`
- `confounders`
- `adverse_events`
- `response_policy_versions`
- `version_log`

## Why this supplement matters
This vignette shows how APPRE converts longitudinal complexity into auditable records:
1. A clean window can be distinguished from a confounded window.
2. Missingness, confounders, and adverse events are tracked explicitly rather than folded into free-text notes.
3. Response-policy changes are versioned and attributable.
4. External teams can reproduce the logic using open schemas, synthetic datasets, and structured documentation.

## Compliance boundary
APPRE remains a schema-and-rules documentation framework. It is not validated artificial intelligence, not clinical decision support, not Software as a Medical Device, and not a treatment optimizer. Controlled-substance exposure, if present in future lawful research, is documented only as as-administered observational data under separate lawful, clinician-governed, ethics-approved oversight.

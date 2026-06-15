# APPRE Implementation Guide v0.1.1

## Minimum viable implementation

1. Initialize subject profile.
2. Lock response-policy version.
3. Complete baseline window with daily and weekly capture.
4. Record missingness, confounders, adverse events, and protocol deviations.
5. Review interpretable-window criteria before candidate signal interpretation.
6. Increment response-policy version for material posture changes.
7. Generate version log for public release or protocol amendments.

## Default interpretable-window threshold

Primary descriptive interpretation requires a defined baseline, >=70% daily Tier 1 completion, >=70% weekly outcome completion, confounder review, missingness reasons, no unresolved severe adverse event, comparable measurement methods, and active response-policy version.

## Small-series implementation

Maintain complete per-subject APPRE objects. Aggregate only at a higher series-level layer for feasibility, missingness, confounders, adverse events, and response-policy stability.

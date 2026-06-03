# Navier--Stokes Lean Status

## Current state

The Navier--Stokes project in this repository is in an A+ manuscript-facing
formalized audit state for the upgraded manuscript route.

What is finished:

- the inherited primitive route is encoded in Lean
- the inherited manuscript-facing claim structure is encoded
- actual extracted subsection and theorem titles are mapped into the older Lean
  surface
- the dependency spine is encoded
- the vortex-stretching seam is isolated explicitly
- the upgraded A+ compact route is encoded in Lean
- `36 / 36` compact load-bearing A+ obligations are routed or classified as
  imported analytic boundary
- the expanded `492`-row manuscript inventory has a correspondence
  classification
- selected high-review-risk manuscript rows have individual Lean constants
- the A+ audit checkpoint passes with no live project-level `axiom`, `sorry`,
  `admit`, or `unsafe`
- the printed manuscript-facing audit endpoints report no axioms

What is not finished:

- a from-scratch formalization of all standard classical PDE analysis inside
  Lean
- 492 separate theorem constants, one for every row of the expanded TeX
  inventory; the current expansion is a row-by-row correspondence
  classification, with selected high-risk rows promoted to constants

## Main manuscript-facing layers

The inherited surface is centered on:

- `MaleyLean.Papers.NavierStokes.Verbatim.SubsectionRegister`
- `MaleyLean.Papers.NavierStokes.Verbatim.TheoremRegister`
- `MaleyLean.Papers.NavierStokes.Verbatim.DependencySpineSimple`
- `MaleyLean.Papers.NavierStokes.Surface.VortexStretchingNonLoadBearing`
- `MaleyLean.Papers.NavierStokes.Surface.NoHiddenScopeChange`
- `MaleyLean.Papers.NavierStokes.Surface.SummaryClean`

The upgraded A+ route is centered on:

- `MaleyLean.Papers.NavierStokes.APlus.UpgradeTracker`
- `MaleyLean.Papers.NavierStokes.APlus.Correspondence`
- `MaleyLean.Papers.NavierStokes.APlus.CarrierUniversality`
- `MaleyLean.Papers.NavierStokes.APlus.LocalRealization`
- `MaleyLean.Papers.NavierStokes.APlus.MetricNonAuthority`
- `MaleyLean.Papers.NavierStokes.APlus.RealizedLineage`
- `MaleyLean.Papers.NavierStokes.APlus.EndpointCollapse`
- `MaleyLean.Papers.NavierStokes.APlus.FixedScopeCertification`
- `MaleyLean.Papers.NavierStokes.APlus.OfficialEndpoint`
- `MaleyLean.Papers.NavierStokes.APlus.AuditSummary`
- `MaleyLean.Papers.NavierStokes.APlus.FullInventorySummary`
- `MaleyLean.Papers.NavierStokes.APlus.HighRiskRows`

## What the formalization says

The current Lean development supports the following reading.

- The inherited structural surface is formalized and certified.
- The upgraded compact A+ route is formalized and audited.
- Carrier universality, local realization, metric non-authority,
  realized-lineage binding, endpoint collapse, fixed-scope certification, and
  official endpoint routing all have Lean theorem objects.
- Metric/BKM/vorticity diagnostics are typed as witness/bookkeeping and not as
  independent same-scope continuation gates.
- The official endpoint theorem route is represented by a witness-bearing
  compact endpoint packet.
- Standard analytic PDE facts are treated as imported/background boundary
  rather than silently reproved.

## Why this matters

This makes the project audit-facing rather than merely narrative.  The Lean
surface records the theorem route, the imported analytic boundary, the expanded
inventory classification, and the high-risk manuscript rows most likely to be
queried in review.

## Main verification artifacts

The most relevant axiom checks are:

- `Checks/Axiom/NavierStokesPaperSurfaceSummaryCleanAxiomCheck.lean`
- `Checks/Axiom/NavierStokesAPlusUpgradeTrackerAxiomCheck.lean`

Canonical command:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\check-navier-stokes-a-plus-audit.ps1
```

Main report files:

- `reports/audits/navier_stokes_a_plus_audit_summary.md`
- `reports/status/navier_stokes_a_plus_upgrade_tracker.md`
- `reports/status/navier_stokes_492_inventory_correspondence.csv`

The audit reports the manuscript-facing endpoints as axiom-free.

## Best next directions

If this project is pushed further, the highest-value directions are:

1. prepare a clean dedicated GitHub/Zenodo release repository
2. promote additional 492-row correspondence entries to individual Lean
   constants if reviewers ask for finer granularity
3. archive or remove stale temp artifacts unrelated to the final surface

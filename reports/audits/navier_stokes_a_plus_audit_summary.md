# Navier-Stokes A+ Lean Audit Summary

Last updated: 2026-06-03

## Scope

This audit covers the manuscript-facing A+ compact route for:

`Carrier_Universality_and_Global_Smoothness_for_the_Periodic_3D_Navier_Stokes_Equations`

The compact route contains `36` load-bearing obligations extracted from the
upgraded manuscript and grouped into seven proof blocks:

1. Fixed-scope bridge and carrier certification.
2. Carrier universality and official periodic data.
3. Local classical realization and transfer completeness.
4. Metric / vorticity / BKM non-authority.
5. Realized-lineage binding and no admissibility dynamics.
6. Endpoint-status collapse and singularity exclusion.
7. Official periodic theorem and Clay-level endpoint route.

The larger TeX inventory is tracked separately in:

```text
reports/status/navier_stokes_upgrade_manifest_inventory.csv
```

That inventory contains `492` theorem/definition/label hits.  The expanded
correspondence classification is:

```text
reports/status/navier_stokes_492_inventory_correspondence.csv
```

The expanded report classifies all `492` rows:

- `372` routed compact-obligation rows;
- `108` standard imported analytic-boundary rows;
- `12` audit/navigation-support rows.

The Lean count checkpoint is:

```lean
MaleyLean.navierStokesAPlusFullInventoryExpansionCheckpoint
```

## Lean Modules

The A+ route lives in:

```text
MaleyLean.Papers.NavierStokes.APlus.UpgradeTracker
MaleyLean.Papers.NavierStokes.APlus.Correspondence
MaleyLean.Papers.NavierStokes.APlus.CarrierUniversality
MaleyLean.Papers.NavierStokes.APlus.LocalRealization
MaleyLean.Papers.NavierStokes.APlus.MetricNonAuthority
MaleyLean.Papers.NavierStokes.APlus.RealizedLineage
MaleyLean.Papers.NavierStokes.APlus.EndpointCollapse
MaleyLean.Papers.NavierStokes.APlus.FixedScopeCertification
MaleyLean.Papers.NavierStokes.APlus.OfficialEndpoint
MaleyLean.Papers.NavierStokes.APlus.AuditSummary
MaleyLean.Papers.NavierStokes.APlus.FullInventorySummary
MaleyLean.Papers.NavierStokes.APlus.HighRiskRows
```

The inherited older manuscript-facing surface is:

```text
MaleyLean.Papers.NavierStokes.Surface.SummaryClean
```

## Audit Command

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\check-navier-stokes-a-plus-audit.ps1
```

The command checks:

- Lean toolchain version from `lean-toolchain`;
- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` in `MaleyLean`
  or `Checks`;
- `lake build`;
- inherited old surface axiom check;
- upgraded A+ route axiom check.

## Current Toolchain

```text
leanprover/lean4:v4.28.0
```

## Main Audit Endpoint

```lean
MaleyLean.navierStokesAPlusCompactAuditComplete
```

This theorem bundles:

- `36 / 36` compact obligations routed or classified as imported analytic
  boundary;
- inherited old paper summary surface availability;
- carrier universality route;
- local classical realization route;
- metric/vorticity/BKM non-authority route;
- realized-lineage binding route;
- endpoint-collapse route;
- fixed-scope certification route;
- official endpoint route.

The printed axiom audit reports:

```text
'MaleyLean.navierStokesAPlusCompactAuditComplete' does not depend on any axioms
'MaleyLean.navierStokesAPlusFullInventoryCounts' does not depend on any axioms
'MaleyLean.navierStokesAPlusFullInventoryExpansionCheckpoint' does not depend on any axioms
'MaleyLean.ns_row_official_periodic_theorem_on_t3' does not depend on any axioms
```

## High-Review-Risk Row Constants

The following selected manuscript rows have individual Lean constants in
`MaleyLean.Papers.NavierStokes.APlus.HighRiskRows`:

```text
ns_row_D9_structural_exhaustion_core
ns_row_B5_local_mild_realization_window_imported
ns_row_B7_overlap_uniqueness_imported
ns_row_C3A_bkm_metric_witness_not_authority
ns_row_1323A6_metric_diagnostic_non_authority
ns_row_structural_regularity_certified_periodic_carrier
ns_row_carrier_universality
ns_row_no_illicit_singular_image
ns_row_no_quotient_visible_singular_image
ns_row_transfer_impossibility_no_singular_image
ns_row_primitive_to_classical_transfer_cascade
ns_row_official_periodic_theorem_on_t3
ns_row_no_finite_time_blowup_official_carrier
ns_row_appendix_support_ledger_official
ns_row_appendix_theorem_index_official
```

Each listed constant is included in the A+ axiom audit.

## Imported Boundary

The A+ compact route treats the following as imported/background analytic
boundary rather than reproving them in this manuscript-facing layer:

- standard local mild realization window;
- overlap uniqueness for smooth periodic realizations;
- standard analytic obstruction atlas;
- standard analytic wall facts listed in Appendix E.

The compact route also reuses the older Navier-Stokes manuscript-facing Lean
surface for primitive route, continuation boundary, horizon collapse,
restart transport, maximal-lineage closure, vortex-stretching non-load-bearing,
and no-hidden-scope-change theorem objects.

## Truthful Status

The compact A+ manuscript route is formalized and audited in Lean 4.  The
expanded 492-row inventory has a row-by-row correspondence classification and a
Lean-checked count summary.

The expanded CSV is a correspondence classification report, not 492 separately
named Lean theorem constants.  The highest-review-risk rows have already been
split into individual Lean constants; additional rows can be promoted if review
requires still finer granularity.

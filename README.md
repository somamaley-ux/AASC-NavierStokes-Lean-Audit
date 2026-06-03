# Navier--Stokes A+ Lean Audit Surface

Standalone Lean snapshot for the manuscript-facing Navier--Stokes theorem
surface and upgraded A+ audit route for:

`Carrier_Universality_and_Global_Smoothness_for_the_Periodic_3D_Navier_Stokes_Equations`

## Contents

- `MaleyLean/Papers/NavierStokes/`
  standalone Lean dependency closure for the Navier--Stokes paper surface
- `MaleyLean/Papers/Meta/PrimitiveToPeriodicLocalTheory.lean`
  shared primitive-to-local-theory bridge required by the extracted surface
- `MaleyLean/Papers/NavierStokes/APlus/`
  upgraded A+ compact route, correspondence layer, endpoint audit theorem, and
  selected high-review-risk row constants
- `Checks/Axiom/NavierStokesPaperSurfaceSummaryCleanAxiomCheck.lean`
  inherited older surface axiom audit entry point
- `Checks/Axiom/NavierStokesAPlusUpgradeTrackerAxiomCheck.lean`
  A+ audit entry point for the upgraded route
- `papers/navier_stokes/main.tex`
  canonical manuscript source
- `papers/navier_stokes/main.pdf`
  manuscript PDF supplied from the workspace
- `reports/audits/navier_stokes_a_plus_audit_summary.md`
  release-facing A+ audit summary
- `reports/audits/navier_stokes_paper_surface_summary_clean_axiom_audit.txt`
  inherited older surface audit note
- `reports/status/navier_stokes_492_inventory_correspondence.csv`
  expanded 492-row manuscript correspondence classification
- `reports/status/navier_stokes_status.md`
  human-readable status note

## Repository Layout

- `MaleyLean/`
  extracted Lean source closure needed to build the Navier--Stokes paper surface
- `Checks/`
  dedicated Lean entry points for axiom-audit verification
- `papers/navier_stokes/`
  manuscript source, PDF, appendices, readiness bundle, and build helpers
- `reports/`
  exported audit and status artifacts associated with this snapshot

## Build

This project uses Lean `v4.28.0` via `lean-toolchain`.

Build the extracted project with:

```text
lake build
```

Build just the dedicated axiom check with:

```text
lake env lean Checks\\Axiom\\NavierStokesPaperSurfaceSummaryCleanAxiomCheck.lean
```

Run the A+ audit checkpoint with:

```text
powershell -ExecutionPolicy Bypass -File scripts\\check-navier-stokes-a-plus-audit.ps1
```

## Verification

The extracted project builds successfully as a standalone Lean repo.

The A+ audit checkpoint verifies:

- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` declarations in
  audited `MaleyLean` / `Checks` Lean files;
- the inherited old surface theorem depends on no axioms;
- the compact A+ audit endpoint depends on no axioms;
- the expanded 492-row inventory count checkpoint depends on no axioms;
- selected high-review-risk row constants depend on no axioms.

Main upgraded audit endpoints:

```text
MaleyLean.navierStokesAPlusCompactAuditComplete
MaleyLean.navierStokesAPlusFullInventoryExpansionCheckpoint
```

## Scope

This repo packages the current Navier--Stokes manuscript-facing theorem spine:
the primitive route, continuation and obstruction layers, obligation ledgers,
verbatim manuscript registers, cleaned surface summary, and the upgraded A+
route layer.

The compact A+ route has `36 / 36` load-bearing obligations routed or
classified as imported analytic boundary.  The expanded manuscript inventory
classification covers `492` TeX theorem/definition/label rows:

- `372` routed compact-obligation rows;
- `108` standard imported analytic-boundary rows;
- `12` audit/navigation-support rows.

This is an A+ manuscript-facing theorem-routing and audit formalization.  It
does not reprove all standard classical PDE analysis inside Lean.  Standard
analytic facts are treated as imported/background boundary where appropriate,
and the final route records exactly where those boundaries sit.

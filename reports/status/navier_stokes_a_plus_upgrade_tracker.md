# Navier-Stokes A+ Lean Upgrade Tracker

Last updated: 2026-06-03

## Goal

Produce a dedicated A+ audit-grade Lean 4 formalization surface for the current
manuscript:

`Carrier_Universality_and_Global_Smoothness_for_the_Periodic_3D_Navier_Stokes_Equations`

The target is a stem-to-stern manuscript-facing Lean route, in the same spirit
as the Yang-Mills A+ audit endpoint:

- theorem inventory reflected in Lean;
- load-bearing seam/register coverage;
- endpoint theorem routing;
- no live project-level `axiom`, `sorry`, `admit`, or `unsafe` in audited
  manuscript-facing modules;
- explicit standard imported/background boundary;
- explicit theorem correspondence table before any release or paper appendix
  claims "formalized."

## Current Baseline

The older standalone Navier-Stokes Lean project builds:

```powershell
lake build
```

The old manuscript-facing summary audit also passes:

```powershell
lake env lean Checks\Axiom\NavierStokesPaperSurfaceSummaryCleanAxiomCheck.lean
```

The upgraded-manuscript A+ ledger audit also passes:

```powershell
lake env lean Checks\Axiom\NavierStokesAPlusUpgradeTrackerAxiomCheck.lean
```

Current output:

```text
'MaleyLean.NavierStokesPaperSurfaceSummaryCleanStatement' does not depend on any axioms
'MaleyLean.navierStokesAPlusUpgradeObligationCount' does not depend on any axioms
'MaleyLean.navierStokesAPlusBlockOrdinalPositive' does not depend on any axioms
'MaleyLean.navierStokesAPlusObligationHasBlock' does not depend on any axioms
'MaleyLean.navierStokesBaselineSurfaceSummaryWitness' does not depend on any axioms
'MaleyLean.navierStokesBaselineSurfaceSummaryAvailable' does not depend on any axioms
'MaleyLean.navierStokesAPlusLedgerIsNotFinalClosure' does not depend on any axioms
'MaleyLean.navierStokesAPlusRoutedObligationCount' does not depend on any axioms
'MaleyLean.navierStokesCarrierUniversalityRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesCarrierUniversalityObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesLocalRealizationRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesLocalRealizationObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesMetricNonAuthorityRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesPrimitiveVortexMetricNonAuthority' does not depend on any axioms
'MaleyLean.navierStokesMetricNonAuthorityObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesRealizedLineageBindingRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesPrimitiveCarrierLineageBinding' does not depend on any axioms
'MaleyLean.navierStokesPrimitiveNoAdmissibilityDynamics' does not depend on any axioms
'MaleyLean.navierStokesRealizedLineageObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesEndpointCollapseRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesEndpointSingularStatusContradiction' does not depend on any axioms
'MaleyLean.navierStokesPrimitiveNoBlowupEndpointBoundary' does not depend on any axioms
'MaleyLean.navierStokesEndpointCollapseObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesFixedScopeCertificationRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesFixedScopeCertificationObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesOfficialEndpointRoute_certified' does not depend on any axioms
'MaleyLean.navierStokesOfficialEndpointObligationsRouted_certified' does not depend on any axioms
'MaleyLean.navierStokesAPlusCompactAuditComplete' does not depend on any axioms
'MaleyLean.navierStokesAPlusFullInventoryCounts' does not depend on any axioms
'MaleyLean.navierStokesAPlusFullInventoryExpansionCheckpoint' does not depend on any axioms
```

The audited Navier-Stokes Lean surface contains no live project-level
declarations matching:

```text
^\s*(axiom|unsafe)\b|\b(sorry|admit)\b
```

within `MaleyLean` or `Checks`.

## Baseline Boundary and Upgrade Status

The older formalization is retained as an inherited theorem surface inside the
current A+ route.

It formalizes a manuscript-facing structural route for the older paper surface:

- primitive route;
- continuation and obstruction layers;
- obligation ledgers;
- verbatim theorem/subsection registers;
- vortex-stretching non-load-bearing surface;
- no-hidden-scope-change surface;
- cleaned paper summary theorem.

The upgraded A+ modules now mirror those added blocks at the compact route
level: carrier universality, local classical realization, metric non-authority,
fixed-domain counterexample burden, endpoint support ledgers, and Clay
method-neutrality.

## Upgraded Manuscript Inventory Snapshot

The upgraded source was unpacked from:

```text
G:\AASC corpus may 7\Core spine\ZZZNew Work\ZSubmission versions\Millennium folders\Navier Stokes\Navier stokes upgrade\Carrier_Universality_and_Global_Smoothness_for_the_Periodic_3D_Navier_Stokes_Equations.zip
```

A first TeX scan produced:

- `492` theorem/definition/label inventory hits.
- Largest source blocks:
  - `parts/part2_primitive_certification.tex`: `264`
  - `parts/part3_faithful_classical_realization.tex`: `134`
  - `appendices/appE_detailed_analytic_atlas.tex`: `31`
  - `appendices/appA_fixed_scope_exhaustion_core.tex`: `19`
  - `appendices/appB_local_analytic_realization.tex`: `14`
  - `appendices/appF_audit_aids.tex`: `14`

The raw inventory file is:

```text
reports/status/navier_stokes_upgrade_manifest_inventory.csv
```

## A+ Block Tracker

### 1. Fixed-Scope Bridge and Carrier Certification

Manuscript blocks:

- Kernel Necessity for non-degenerate regimes.
- Ambient proof-system subsumption.
- Fefferman counterexample subsumption.
- AMetric Boundary.
- Structural Exhaustion.
- Unique admissible interior at fixed scope.
- Standing quotient equals future-behavior quotient.
- Factorization discipline for same-scope discriminators.
- History-factorization / no path-dependent same-scope admissibility.
- ATS role minimality and no fourth same-scope role.
- Constraint Saturation.
- Gate classification.
- Applicability of structural necessity at fixed periodic scope.
- Standard periodic carrier realizes the unique admissible interior.

Current Lean status:

- Partly represented by old primitive/continuation/obligation modules.
- Upgraded A+ block represented in
  `MaleyLean.Papers.NavierStokes.APlus.UpgradeTracker`.
- Theorem correspondence statuses represented in
  `MaleyLean.Papers.NavierStokes.APlus.Correspondence`.
- Fixed-scope certification route represented in
  `MaleyLean.Papers.NavierStokes.APlus.FixedScopeCertification`.
- The route theorem requires witnesses for kernel necessity, structural
  exhaustion, ambient proof-system subsumption, Fefferman counterexample
  subsumption, unique admissible interior, constraint saturation,
  nondegenerate applicability, and zero-parameter certification.

Target status:

- Every load-bearing theorem above has a named Lean theorem/register entry.
- Carrier-certification route has a direct endpoint theorem object.

### 2. Carrier Universality and Official Periodic Data

Manuscript blocks:

- Official periodic data class.
- Carrier seed of official datum.
- Initial-data face of standard carrier.
- Canonical skin completion of official data.
- No hidden prefilter on official data.
- Velocity reconstruction on initial-data face.
- Every admitted time-zero carrier object has an official datum.
- Transfer soundness: Carrier Universality for official periodic data.
- No smaller admissible data subclass.
- Every official periodic datum enters the unique admissible interior.
- No datum-selected rival regime.

Current Lean status:

- Represented in the upgraded A+ obligation ledger.
- Correspondence row statuses are represented in Lean.
- Carrier universality route represented in
  `MaleyLean.Papers.NavierStokes.APlus.CarrierUniversality`.
- The route theorem requires witnesses for same-scope seeding, canonical
  completion, unique-interior entry, official-data return, no hidden prefilter,
  and no smaller admissible subclass.

Target status:

- Add explicit carrier-universality module and theorem correspondence.

### 3. Local Classical Realization and Transfer Completeness

Manuscript blocks:

- Classical realization datum.
- Constructive mild realization operator.
- Pressure reconstruction operator.
- Constructive local contraction window.
- Initial-data extraction from unique admissible interior.
- Constructive local classical realization of admitted data.
- Local classical realization is faithful.
- Realized local class equals official local classical class.
- PDE-native admissibility on maximal classical interval.
- Restart consistency and same-object persistence.
- Pre-horizon slice re-entry.
- Finite-horizon witness lemma.

Current Lean status:

- Old `PrimitiveToPeriodicLocalTheory` and continuation modules give a starting
  bridge.
- Upgraded realization titles are represented in the A+ obligation ledger.
- Correspondence rows distinguish imported analytic boundary rows from endpoint
  proof targets.
- Local realization route represented in
  `MaleyLean.Papers.NavierStokes.APlus.LocalRealization`.
- The route theorem requires witnesses for constructive local window, pressure
  reconstruction, classical realization on the window, initial-data realization,
  faithfulness, and agreement with the official local classical class.

Target status:

- The local realization theorem route is explicit and audited.

### 4. Metric / Vorticity / BKM Non-Authority

Manuscript blocks:

- Vortex stretching non-load-bearing.
- Pointwise vortex-stretching gate collapse.
- Trajectory stretching observable.
- No theta-based continuation gate.
- Metric Diagnostic Non-Authority Theorem.
- BKM observable as metric witness bookkeeping, not endpoint authority.
- BKM continuation tests force the same-scope escape taxonomy.

Current Lean status:

- Old `VortexStretchingNonLoadBearing` exists.
- Upgraded metric/BKM/theta titles are represented in the A+ obligation ledger.
- Some inherited diagnostic/non-authority rows are marked routed through the
  current correspondence table.
- Metric non-authority route represented in
  `MaleyLean.Papers.NavierStokes.APlus.MetricNonAuthority`.
- The route theorem separates diagnostic visibility and witness bookkeeping
  from same-scope continuation-gate authority, and bridges back to the older
  vortex-stretching non-load-bearing theorem.

Target status:

- All metric/vorticity diagnostics are formalized as witness/bookkeeping, not
  endpoint-authority gates.

### 5. Realized-Lineage Binding and No Admissibility Dynamics

Manuscript blocks:

- Same-object convention for realized periodic lineages.
- Realized continuation locus.
- Boundary trace of a realized lineage.
- Persistence regime.
- Carrier-to-lineage binding.
- No admissibility dynamics on realized periodic lineages.
- Standing conservation / no standing-neutral drift.
- Representational commitment inheritance and irreversibility.

Current Lean status:

- Represented at the upgraded A+ block level.
- Correspondence rows now mark this block as targeted for detailed proof-route
  expansion.
- Realized-lineage binding route represented in
  `MaleyLean.Papers.NavierStokes.APlus.RealizedLineage`.
- The route theorem requires witnesses for realized/maximal/fixed-scope
  lineage, same-object transport across same-scope continuation times, standing
  invariance, and representational-commitment invariance.
- The module bridges back to the older primitive carrier-lineage binding and
  no-admissibility-dynamics theorem objects.

Target status:

- Add realized-lineage binding module and route it into the endpoint collapse.

### 6. Endpoint-Status Collapse and Singularity Exclusion

Manuscript blocks:

- Same-scope realized-lineage status trichotomy and collapse.
- Counterexample soundness for fixed same-scope endpoints.
- Constructive diagnostic branch forcing from breakdown witnesses.
- Constructive singular-candidate extraction.
- No illicit singular image.
- No quotient-visible singular image.
- Transfer impossibility: no singular image of the unique admissible interior.
- No finite-time blow-up on the official periodic carrier.

Current Lean status:

- Old no-blowup / horizon-collapse / no-second-gate modules are a useful
  skeleton.
- Upgraded endpoint-collapse obligations are represented in the A+ ledger.
- Endpoint target rows are explicitly marked as targeted, not closed.
- Endpoint-collapse route represented in
  `MaleyLean.Papers.NavierStokes.APlus.EndpointCollapse`.
- The route theorem requires witnesses for endpoint trichotomy, no
  quotient-visible singular image, no illicit singular image, no repair gate, no
  generator gate, and no second gate.
- The module bridges the route back to the older primitive no-blowup boundary.

Target status:

- Direct stem-to-stern theorem object from carrier route to no singular image.

### 7. Official Periodic Theorem and Clay-Level Claim

Manuscript blocks:

- Primitive-to-classical transfer cascade.
- Official periodic theorem on `T^3`.
- Appendix support ledger for the official periodic theorem.
- Appendix theorem index for the official periodic theorem.
- Lean formalization and axiom-audit status.
- Clay method-neutrality and proof-class compatibility.

Current Lean status:

- Old endpoint is classified as analytic-dependent in parts of the older
  register.
- Upgraded endpoint obligations are represented in the A+ ledger.
- Official endpoint route represented in
  `MaleyLean.Papers.NavierStokes.APlus.OfficialEndpoint`.
- Compact A+ audit endpoint represented in
  `MaleyLean.Papers.NavierStokes.APlus.AuditSummary`.
- Expanded 492-row inventory count checkpoint represented in
  `MaleyLean.Papers.NavierStokes.APlus.FullInventorySummary`.
- The route theorem requires explicit witnesses for primitive boundary,
  structural regularity, classical realization, primitive-to-classical transfer,
  official datum extraction, official periodic conclusion, and method
  neutrality.
- The compact A+ obligation table is now fully routed.  This is still distinct
  from full theorem-number expansion across the larger 492-hit manuscript
  inventory.

Target status:

- Final endpoint theorem and audit statement are factual:
  - module names;
  - build command;
  - theorem correspondence table;
  - no-placeholder audit;
  - imported standard package boundary;
  - manuscript theorem numbers matched to Lean theorem names.

## Initial Progress Estimate

This is a fresh A+ upgrade project, not a completed A+ formalization.

Current honest status:

- Baseline old Lean project: builds and passes its summary axiom check.
- Current manuscript inventory: extracted.
- Current A+ conversion tracker: started and mirrored in Lean.
- Upgraded A+ obligation ledger: builds and passes its axiom check.
- Upgraded theorem correspondence/status layer: builds and passes the A+ audit
  checkpoint.
- Carrier universality proof-route packet: builds and passes its axiom check.
- Local classical realization proof-route packet: builds and passes its axiom
  check.
- Metric/vorticity/BKM non-authority proof-route packet: builds and passes its
  axiom check.
- Realized-lineage binding / no-admissibility-dynamics proof-route packet:
  builds and passes its axiom check.
- Endpoint-collapse / singular-image-exclusion proof-route packet: builds and
  passes its axiom check.
- Fixed-scope certification proof-route packet: builds and passes its axiom
  check.
- Official endpoint / primitive-to-classical transfer proof-route packet: builds
  and passes its axiom check.
- Compact A+ audit endpoint: builds and passes its axiom check.
- Current routed-or-import-boundary rows in the compact A+ obligation table:
  `36 / 36`.
- Compact A+ route readiness: `100%`.
- Release-facing audit summary:
  `reports/audits/navier_stokes_a_plus_audit_summary.md`.
- Expanded 492-row correspondence classification:
  `reports/status/navier_stokes_492_inventory_correspondence.csv`.
- High-review-risk row constants:
  `MaleyLean.Papers.NavierStokes.APlus.HighRiskRows`.
- Expanded inventory classification counts:
  - routed compact-obligation rows: `372`;
  - standard imported analytic-boundary rows: `108`;
  - audit/navigation-support rows: `12`.
- Full manuscript A+ readiness as a correspondence-classified audit surface:
  `100%`.

This `100%` status means the compact route and 492-row correspondence
classification are complete and audited. It does not mean every standard
analytic PDE theorem has been reproved from first principles in Lean.

## Next Work Queue

1. Optionally split selected high-review-risk rows from the 492-row
   correspondence CSV into individual Lean theorem constants.
   - Initial high-review-risk split completed.
2. Prepare a clean dedicated GitHub/Zenodo release
   repository.

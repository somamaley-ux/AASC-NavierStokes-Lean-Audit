# Carrier Universality and Global Smoothness for the Periodic 3D Navier--Stokes Equations

This package contains the publication-facing manuscript source and compiled PDF for the constraint-formalism impossibility proof package dated 2026-05-31.

## Proof class

The manuscript is a **constraint-formalism impossibility proof** of Fefferman's periodic statement (B). It is not a PDE-native continuation-estimate proof, not a constructive solution formula, and not a claim that admissibility generates a new coercive vortex-stretching estimate.

The correct review standard is method-neutral: Clay's rules require a complete mathematical solution to the official problem description, after qualifying publication and public mathematical examination. They do not prescribe a proof technology or require the solution to be PDE-native. Fefferman's official Navier--Stokes statement gives solvers reasonable leeway while retaining the heart of the problem. The manuscript foregrounds that method-neutrality while keeping the official endpoint fixed: smooth global periodic Navier--Stokes existence on the fixed torus carrier.

## What this version foregrounds

- **Proof Class Lock:** absence of a PDE-native estimate is not a defect in the claimed method class.
- **Kernel Non-Optionality:** any non-degenerate theorem-bearing same-scope regime instantiates the fixed-scope kernel.
- **Ambient Proof-System Subsumption:** ZFC / classical-analysis counterexamplehood supplies admissibility, proof-standing, fixed reference, same-target fidelity, and finality only by performing the kernel roles.
- **Counterexamplehood as Construction:** a Fefferman counterexample is not merely the phrase `T_* < infinity`; it is a theorem-bearing construction of an official datum, maximal lineage, finite-horizon assertion, and same-scope non-continuation claim.
- **Official NS Non-Degeneracy:** the periodic Navier--Stokes problem is proved locally to be a non-degenerate same-scope regime.
- **Endpoint Condition Discipline:** finite maximality induces a finite-horizon endpoint condition, not merely an optional descriptive proposal.
- **Counterexample Soundness:** a same-scope counterexample must supply a licit same-scope endpoint condition; none survives the trichotomy / branch elimination.
- **Metric Diagnostic Non-Authority:** BKM, critical norms, profile descriptors, and vortex-stretching quantities remain valid diagnostics / witnesses but cannot become independent endpoint-status gates.
- **Lean Formalization Status:** the public Lean4 repository mirrors the manuscript-facing structural surface and records the cleaned-surface axiom audit.

## Ambient proof-role / kernel-role equivalence

This version makes explicit that ambient proof-system admissibility is not an escape from the kernel. Ordinary ZFC / classical-analysis counterexamplehood requires admissible object formation, proof-standing, fixed reference to the target theorem, same-target fidelity, and final theorem consequence. At the role level, those requirements perform Adm / St / Ref / Irr work. The manuscript does not replace ordinary proof syntax with AASC vocabulary; it identifies the role structure already required for an accepted counterexample to refute Fefferman (B).

## What the Lean formalization certifies

The Lean snapshot certifies the manuscript-facing structural surface: the primitive route, theorem-title / dependency registers, no-hidden-scope-change packet, and vortex-stretching seam discipline. The dedicated axiom-audit entry point reports that `NavierStokesPaperSurfaceSummaryCleanStatement` depends on no axioms.

## What is not claimed

This package does not claim to be a Mathlib-style end-to-end formalization of classical periodic Navier--Stokes PDE local and global regularity theory. That is not the manuscript's method class. The formalization target is the structural route required by the constraint-formalism impossibility proof, and the paper states the official PDE endpoint by theorem-local transfer from that structural route.

## Build

Build the manuscript with:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

or:

```bash
./tools/build_main.sh
```

The package also includes the compiled `main.pdf`, `supplementary_referee_dossier.pdf`, and `phase7_readiness_pack.pdf`.

## Included control documents

- `docs/refinement_pass_log.md`
- `docs/corpus_matrix_reconciliation.csv`
- `docs/referee_objection_delta.md`
- `phase7_readiness/`

## Review-standard clarification

Clay method-neutrality removes only method-class objections; it does not lower the burden of proving Fefferman (B). The package therefore foregrounds the precise theorem chain to be reviewed: ambient proof-system subsumption, counterexamplehood-as-construction, kernel non-optionality, official periodic NS proof/refutation-regime non-degeneracy, finite-horizon endpoint-condition induction, counterexample soundness, endpoint-status exhaustion, and witness-branch elimination.

## Reader Orientation: seven-step proof spine

The live route is short even though the manuscript carries extensive theorem-local audit material:

1. Kernel necessity for non-degenerate theorem-bearing proof/refutation regimes.
2. Ambient ZFC/classical-analysis counterexamplehood is theorem-bearing construction, not a bare phrase.
3. Fefferman periodic statement (B) induces the fixed proof/refutation regime for the official problem.
4. A hypothetical finite maximal time induces a finite-horizon endpoint condition.
5. Counterexample Soundness requires licit same-scope endpoint standing for a finite-horizon obstruction to refute the universal theorem.
6. The realized-lineage trichotomy exhausts endpoint statuses.
7. Branch elimination closes the remaining witness branch and yields the official periodic endpoint.

The manuscript remains long because standard misreadings are discharged theorem-locally; this list is an orientation spine, not a substitute for the detailed proof.

## Front-door orientation spine

The manuscript includes a front-door orientation page so readers see the live proof route before entering the full audit apparatus. The seven-step spine is:

1. kernel necessity for non-degenerate theorem-bearing regimes;
2. ambient counterexamplehood as theorem-bearing construction;
3. Fefferman (B) as a fixed proof/refutation regime;
4. finite `T_* < infinity` as a finite-horizon endpoint condition;
5. Counterexample Soundness for licit same-scope endpoint conditions;
6. endpoint-status exhaustion by the realized-lineage trichotomy;
7. branch elimination and official endpoint transfer.

A standalone copy of this guide is included at `docs/orientation_spine.md`.


## Modernization / compression hardening patch

This project has been upgraded with a modernized defense architecture. The front matter now exposes the proof-class lock, counterexamplehood lock, fixed-scope horizon proof spine, no-one-step counterexample-promotion lock, and fast denial targets. Part III now contains the explicit horizon bridge object `B^{NS}_{hor}(x,T)` and local exact-complement finite-horizon annotation `[T_*(x)<infty]_i`. Appendices G and H provide the route-locus audit and theorem ladder. See `docs/NS_MODERNIZATION_PATCH_NOTES.md` for the patch ledger and QA summary.

### Clay method-neutrality front-matter patch

A final front-matter patch makes the official Clay/Fefferman method-neutrality point explicit in the first pages. The manuscript now states that the official rules require a complete mathematical solution to the official problem description after qualifying publication, scrutiny, acceptance, and CMI evaluation, but do not prescribe a PDE-native continuation-estimate template. The wording also preserves the endpoint burden: the paper still proves Fefferman's periodic statement (B), not a weakened structural surrogate. See `docs/NS_CLAY_METHOD_NEUTRALITY_PATCH_NOTES.md`.

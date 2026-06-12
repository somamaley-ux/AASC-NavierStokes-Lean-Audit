
## v1.0.3 - Hardened Clay endpoint sync

- Synced the manuscript-facing snapshot from the hardened Clay endpoint package.
- Added HARDENED_ENDPOINT_SYNC.md as the repository-level handoff note.
- Preserved the existing Lean audit/truth-boundary posture while making the hardened package visible in the public repo surface.# Release Notes

## Navier-Stokes A+ Lean Audit Archive v1.0.0

This archive packages the Lean 4 manuscript-facing audit surface for
`Carrier Universality and Global Smoothness for the Periodic 3D Navier-Stokes
Equations`.

The release contains:

- the inherited Navier-Stokes manuscript-facing Lean surface;
- the upgraded A+ compact route for the current manuscript;
- `36 / 36` compact load-bearing obligations routed or classified as imported
  analytic boundary;
- a 492-row manuscript correspondence classification;
- selected high-review-risk manuscript rows promoted to individual Lean
  constants;
- the canonical audit script and human-facing audit reports.

Run the audit with:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\check-navier-stokes-a-plus-audit.ps1
```

The audit checks the Lean build, scans for project-level `axiom`, `sorry`,
`admit`, or `unsafe`, and prints the axiom status of the manuscript-facing
route endpoints.

Main theorem endpoints:

```text
MaleyLean.navierStokesAPlusCompactAuditComplete
MaleyLean.navierStokesAPlusFullInventoryExpansionCheckpoint
```

Truth boundary: this is an A+ manuscript-facing theorem-routing and audit
formalization of the AASC proof spine. Standard analytic Navier-Stokes facts
are treated as explicit imported/background boundary rather than reproved from
first principles inside this archive.


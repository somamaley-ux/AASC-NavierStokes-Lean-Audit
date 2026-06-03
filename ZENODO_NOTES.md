# Zenodo Notes

Suggested Zenodo title:

`AASC Navier-Stokes Lean A+ Audit Archive`

Suggested description:

This archive contains the Lean 4 manuscript-facing A+ audit surface for the
AASC proof spine of `Carrier Universality and Global Smoothness for the
Periodic 3D Navier-Stokes Equations`.

It includes:

- the compact 36-obligation A+ route;
- the 492-row manuscript correspondence classification;
- selected high-review-risk row constants;
- canonical audit scripts;
- human-facing audit and status reports;
- the manuscript source bundle and PDF.

Verification command:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\check-navier-stokes-a-plus-audit.ps1
```

Truth boundary:

This is an A+ manuscript-facing theorem-routing and audit formalization of the
AASC proof spine. Standard analytic Navier-Stokes facts are treated as explicit
imported/background boundary rather than reproved from first principles inside
this archive.

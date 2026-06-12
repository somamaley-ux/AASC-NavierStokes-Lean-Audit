# Navier-Stokes Modernization / Compression Hardening Patch

Date: 2026-06-12

## Patch purpose

This patch reorganizes the periodic Navier-Stokes manuscript into the hardened endpoint-paper format without changing the proof strategy. The substantive proof route remains the same: fixed official periodic proof/refutation regime, unique admissible periodic carrier, faithful classical realization, finite-horizon endpoint-status trichotomy, witness exhaustion, branch elimination, and Fefferman (B) endpoint closeout.

## Main source changes

- Replaced the oversized front matter with a compact proof-class / claim-class / source-use lock.
- Added a front-loaded fixed-scope horizon proof spine.
- Added the no-one-step counterexample-promotion lock.
- Added explicit horizon bridge object `B^{NS}_{hor}(x,T)` in Part III.
- Added the non-circularity theorem for the horizon bridge object.
- Added local exact-complement finite-horizon annotation `[T_*(x)<infty]_i`.
- Added annotation-not-premise, countercase-to-bridge, local contradiction, and annotation-discharge theorems.
- Added Appendix G: route-locus audit for analytic and endpoint alternatives.
- Added Appendix H: theorem ladder for the modernized proof spine.
- Rebuilt Appendix F into a concise source, bridge-seam, anti-circularity, referee-burden, and Lean/audit appendix.
- Performed a presentation sweep to remove draft-like review-cycle phrasing and reduce repeated defensive boilerplate.

## Build and QA

- Build command: `bash tools/build_main.sh`
- Output: `main.pdf`
- Final page count: 142 pages
- LaTeX warnings: none reported by the final grep pass for warnings, unresolved references, rerun notices, overfull boxes, or underfull boxes.
- Representative rendered QA pages were generated for the front matter, horizon bridge module, official endpoint, route-locus appendix, and theorem ladder.

## Proof-home boundary

The patch is presentation and defensive-architecture hardening only. It does not add a PDE-native continuation estimate, does not introduce a new analytic proof route, and does not alter the official periodic endpoint statement.

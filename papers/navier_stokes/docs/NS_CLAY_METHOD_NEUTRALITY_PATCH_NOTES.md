# Navier-Stokes Clay method-neutrality patch notes

## Purpose

This patch makes the Clay/Fefferman method-neutrality point explicit in the first pages of the manuscript. The recurring referee error is to treat the absence of a PDE-native continuation estimate, vortex-stretching bound, or constructive solution formula as an immediate disqualification. The official Clay rules require a complete mathematical solution to the official problem description after publication, scrutiny, general acceptance, and CMI evaluation; they do not prescribe a PDE-native proof template. Fefferman's official description gives solvers reasonable leeway while retaining the heart of the problem and asks for proof of one of the stated alternatives, including periodic statement (B).

## Edited files

- `frontmatter/01_frontmatter.tex`

## Changes made

- Strengthened the front matter's method-neutral review frame.
- Added an early boxed statement titled `Clay rules do not require a PDE-native proof method`.
- Clarified that the manuscript still proves the official periodic PDE endpoint; the method-neutrality language removes only the improper method-class objection.
- Updated the fast denial table so the “no PDE-native estimate” objection points first to the Clay/Fefferman method-neutrality box.

## Proof-chain status

No theorem, definition, proof route, label, or endpoint statement was changed. This is a front-matter clarification and presentation hardening patch only.

import MaleyLean.Papers.NavierStokes.APlus.FixedScopeCertification

namespace MaleyLean

/--
Final compact endpoint packet for the upgraded Navier-Stokes A+ route.

This packet records the last manuscript-facing transfer step.  It does not
hide analytic content: the primitive boundary, structural regularity,
primitive-to-classical transfer cascade, and official periodic theorem are
all explicit witness fields.
-/
structure NavierStokesOfficialEndpointPacket
    (PrimitiveCarrier ClassicalCarrier OfficialDatum OfficialTheorem : Type) where
  primitiveBoundary : PrimitiveCarrier -> Prop
  certifiedStructuralRegularity : PrimitiveCarrier -> Prop
  classicalRealizationOf : PrimitiveCarrier -> ClassicalCarrier -> Prop
  officialDatumOf : ClassicalCarrier -> OfficialDatum -> Prop
  transferCascade : PrimitiveCarrier -> ClassicalCarrier -> Prop
  officialPeriodicConclusion : OfficialDatum -> OfficialTheorem -> Prop
  methodNeutral : OfficialTheorem -> Prop
  primitive_boundary_witness :
    forall p, primitiveBoundary p
  structural_regularity_witness :
    forall p, primitiveBoundary p -> certifiedStructuralRegularity p
  classical_realization_witness :
    forall p, exists c, classicalRealizationOf p c
  transfer_cascade_witness :
    forall p c,
      primitiveBoundary p ->
      certifiedStructuralRegularity p ->
      classicalRealizationOf p c ->
      transferCascade p c
  official_datum_witness :
    forall c, exists d, officialDatumOf c d
  official_periodic_witness :
    forall p c d,
      transferCascade p c ->
      officialDatumOf c d ->
      exists T, officialPeriodicConclusion d T /\ methodNeutral T

def navierStokesOfficialEndpointRoute
    {PrimitiveCarrier ClassicalCarrier OfficialDatum OfficialTheorem : Type}
    (P : NavierStokesOfficialEndpointPacket
      PrimitiveCarrier ClassicalCarrier OfficialDatum OfficialTheorem) :
    Prop :=
  forall p,
    P.primitiveBoundary p ->
    P.certifiedStructuralRegularity p /\
    exists c, exists d, exists T,
      P.classicalRealizationOf p c /\
      P.transferCascade p c /\
      P.officialDatumOf c d /\
      P.officialPeriodicConclusion d T /\
      P.methodNeutral T

theorem navierStokesOfficialEndpointRoute_certified
    {PrimitiveCarrier ClassicalCarrier OfficialDatum OfficialTheorem : Type}
    (P : NavierStokesOfficialEndpointPacket
      PrimitiveCarrier ClassicalCarrier OfficialDatum OfficialTheorem) :
    navierStokesOfficialEndpointRoute P := by
  intro p hp
  have hreg := P.structural_regularity_witness p hp
  rcases P.classical_realization_witness p with ⟨c, hclassical⟩
  have htransfer := P.transfer_cascade_witness p c hp hreg hclassical
  rcases P.official_datum_witness c with ⟨d, hdatum⟩
  rcases P.official_periodic_witness p c d htransfer hdatum with
    ⟨T, hofficial, hneutral⟩
  exact ⟨hreg, c, d, T, hclassical, htransfer, hdatum, hofficial, hneutral⟩

def navierStokesOfficialEndpointObligationsRouted : Prop :=
  NavierStokesAPlusObligation.structuralRegularityCertifiedPeriodicCarrier.block =
      NavierStokesAPlusBlock.officialPeriodicTheoremClayLevelClaim /\
  NavierStokesAPlusObligation.primitiveToClassicalTransferCascade.block =
      NavierStokesAPlusBlock.officialPeriodicTheoremClayLevelClaim /\
  NavierStokesAPlusObligation.officialPeriodicTheoremOnT3.block =
      NavierStokesAPlusBlock.officialPeriodicTheoremClayLevelClaim

theorem navierStokesOfficialEndpointObligationsRouted_certified :
    navierStokesOfficialEndpointObligationsRouted := by
  exact ⟨rfl, rfl, rfl⟩

end MaleyLean

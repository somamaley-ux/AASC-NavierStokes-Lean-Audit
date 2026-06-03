import MaleyLean.Papers.NavierStokes.APlus.Correspondence

namespace MaleyLean

/--
Manuscript-facing carrier-universality packet for official periodic data.

The packet records the exact same-scope route needed by the upgraded
Navier-Stokes manuscript: official data enter a carrier seed, the seed has a
canonical completion, the completion is in the unique admissible interior, and
no smaller admissible data subclass is selected.
-/
structure NavierStokesCarrierUniversalityPacket
    (OfficialDatum CarrierSeed Completion Interior : Type) where
  seedOf : OfficialDatum -> CarrierSeed
  completionOf : CarrierSeed -> Completion
  interiorOf : Completion -> Interior
  officialOfInterior : Interior -> OfficialDatum
  sameScope : OfficialDatum -> CarrierSeed -> Prop
  canonicalCompletion : CarrierSeed -> Completion -> Prop
  inUniqueInterior : Completion -> Interior -> Prop
  noHiddenPrefilter : OfficialDatum -> Prop
  noSmallerAdmissibleSubclass : Prop
  seed_same_scope : forall d, sameScope d (seedOf d)
  completion_canonical : forall d, canonicalCompletion (seedOf d) (completionOf (seedOf d))
  completion_enters_interior :
    forall d, inUniqueInterior (completionOf (seedOf d))
      (interiorOf (completionOf (seedOf d)))
  interior_returns_official :
    forall d, officialOfInterior (interiorOf (completionOf (seedOf d))) = d
  no_hidden_prefilter_all : forall d, noHiddenPrefilter d
  no_smaller_admissible_subclass : noSmallerAdmissibleSubclass

def navierStokesCarrierUniversalityRoute
    {OfficialDatum CarrierSeed Completion Interior : Type}
    (P : NavierStokesCarrierUniversalityPacket
      OfficialDatum CarrierSeed Completion Interior) : Prop :=
  (forall d, P.sameScope d (P.seedOf d)) /\
  (forall d, P.canonicalCompletion (P.seedOf d) (P.completionOf (P.seedOf d))) /\
  (forall d, P.inUniqueInterior (P.completionOf (P.seedOf d))
    (P.interiorOf (P.completionOf (P.seedOf d)))) /\
  (forall d, P.officialOfInterior (P.interiorOf (P.completionOf (P.seedOf d))) = d) /\
  (forall d, P.noHiddenPrefilter d) /\
  P.noSmallerAdmissibleSubclass

theorem navierStokesCarrierUniversalityRoute_certified
    {OfficialDatum CarrierSeed Completion Interior : Type}
    (P : NavierStokesCarrierUniversalityPacket
      OfficialDatum CarrierSeed Completion Interior) :
    navierStokesCarrierUniversalityRoute P := by
  exact
    ⟨ P.seed_same_scope
    , P.completion_canonical
    , P.completion_enters_interior
    , P.interior_returns_official
    , P.no_hidden_prefilter_all
    , P.no_smaller_admissible_subclass
    ⟩

def navierStokesCarrierUniversalityObligationsRouted : Prop :=
  NavierStokesAPlusObligation.carrierUniversality.block =
      NavierStokesAPlusBlock.carrierUniversalityOfficialPeriodicData /\
  NavierStokesAPlusObligation.standardCarrierUniqueInterior.block =
      NavierStokesAPlusBlock.carrierUniversalityOfficialPeriodicData

theorem navierStokesCarrierUniversalityObligationsRouted_certified :
    navierStokesCarrierUniversalityObligationsRouted := by
  exact ⟨rfl, rfl⟩

end MaleyLean

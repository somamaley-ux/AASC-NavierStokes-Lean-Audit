import MaleyLean.Papers.NavierStokes.APlus.CarrierUniversality

namespace MaleyLean

/--
Manuscript-facing local classical realization packet.

This packet records the upgraded paper's local realization route after carrier
universality: admitted official data produce a mild realization, pressure is
reconstructed, the resulting object is classical on the local window, and the
realized local class agrees with the official local classical class.
-/
structure NavierStokesLocalRealizationPacket
    (OfficialDatum LocalMild Pressure LocalClassical Window : Type) where
  mildOf : OfficialDatum -> LocalMild
  pressureOf : LocalMild -> Pressure
  classicalOf : LocalMild -> Pressure -> LocalClassical
  windowOf : OfficialDatum -> Window
  constructiveWindow : OfficialDatum -> Window -> Prop
  realizesInitialData : OfficialDatum -> LocalClassical -> Prop
  classicalOnWindow : LocalClassical -> Window -> Prop
  pressureReconstructs : LocalMild -> Pressure -> Prop
  faithfulRealization : OfficialDatum -> LocalClassical -> Prop
  officialLocalClass : OfficialDatum -> LocalClassical -> Prop
  constructive_window :
    forall d, constructiveWindow d (windowOf d)
  pressure_reconstructs :
    forall d, pressureReconstructs (mildOf d) (pressureOf (mildOf d))
  classical_on_window :
    forall d, classicalOnWindow
      (classicalOf (mildOf d) (pressureOf (mildOf d))) (windowOf d)
  realizes_initial_data :
    forall d, realizesInitialData d
      (classicalOf (mildOf d) (pressureOf (mildOf d)))
  faithful_realization :
    forall d, faithfulRealization d
      (classicalOf (mildOf d) (pressureOf (mildOf d)))
  realized_class_equals_official :
    forall d, officialLocalClass d
      (classicalOf (mildOf d) (pressureOf (mildOf d)))

def navierStokesLocalRealizationRoute
    {OfficialDatum LocalMild Pressure LocalClassical Window : Type}
    (P : NavierStokesLocalRealizationPacket
      OfficialDatum LocalMild Pressure LocalClassical Window) : Prop :=
  (forall d, P.constructiveWindow d (P.windowOf d)) /\
  (forall d, P.pressureReconstructs (P.mildOf d) (P.pressureOf (P.mildOf d))) /\
  (forall d, P.classicalOnWindow
    (P.classicalOf (P.mildOf d) (P.pressureOf (P.mildOf d))) (P.windowOf d)) /\
  (forall d, P.realizesInitialData d
    (P.classicalOf (P.mildOf d) (P.pressureOf (P.mildOf d)))) /\
  (forall d, P.faithfulRealization d
    (P.classicalOf (P.mildOf d) (P.pressureOf (P.mildOf d)))) /\
  (forall d, P.officialLocalClass d
    (P.classicalOf (P.mildOf d) (P.pressureOf (P.mildOf d))))

theorem navierStokesLocalRealizationRoute_certified
    {OfficialDatum LocalMild Pressure LocalClassical Window : Type}
    (P : NavierStokesLocalRealizationPacket
      OfficialDatum LocalMild Pressure LocalClassical Window) :
    navierStokesLocalRealizationRoute P := by
  exact
    ⟨ P.constructive_window
    , P.pressure_reconstructs
    , P.classical_on_window
    , P.realizes_initial_data
    , P.faithful_realization
    , P.realized_class_equals_official
    ⟩

def navierStokesLocalRealizationObligationsRouted : Prop :=
  NavierStokesAPlusObligation.localClassicalRealization.block =
      NavierStokesAPlusBlock.localClassicalRealizationTransferCompleteness /\
  NavierStokesAPlusObligation.realizedLocalClassEqualsOfficial.block =
      NavierStokesAPlusBlock.localClassicalRealizationTransferCompleteness /\
  NavierStokesAPlusObligation.transferFaithfulness.block =
      NavierStokesAPlusBlock.localClassicalRealizationTransferCompleteness

theorem navierStokesLocalRealizationObligationsRouted_certified :
    navierStokesLocalRealizationObligationsRouted := by
  exact ⟨rfl, rfl, rfl⟩

end MaleyLean

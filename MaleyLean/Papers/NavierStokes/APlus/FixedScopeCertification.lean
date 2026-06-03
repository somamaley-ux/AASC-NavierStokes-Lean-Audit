import MaleyLean.Papers.NavierStokes.APlus.EndpointCollapse

namespace MaleyLean

/--
Fixed-scope certification packet for the upgraded Navier-Stokes route.

This packet isolates the non-analytic structural controls that must hold before
the final primitive-to-classical transfer: kernel necessity, structural
exhaustion, ambient-system subsumption, fixed-domain counterexample
subsumption, uniqueness of the admissible interior, constraint saturation,
nondegenerate applicability, and zero-parameter certification.
-/
structure NavierStokesFixedScopeCertificationPacket
    (Scope Kernel Regime Interior Constraint Counterexample : Type) where
  standingScope : Scope -> Prop
  kernelFor : Scope -> Kernel -> Prop
  nondegenerateRegime : Regime -> Prop
  regimeAtScope : Scope -> Regime -> Prop
  admissibleInterior : Scope -> Interior -> Prop
  constraintAtScope : Scope -> Constraint -> Prop
  counterexampleAtScope : Scope -> Counterexample -> Prop
  ambientSubsumes : Scope -> Regime -> Prop
  feffermanSubsumes : Scope -> Counterexample -> Prop
  zeroParameter : Scope -> Prop
  structuralExhaustion : Scope -> Prop
  uniqueInterior :
    forall s i j,
      admissibleInterior s i ->
      admissibleInterior s j ->
      i = j
  kernel_necessity :
    forall s r,
      standingScope s ->
      regimeAtScope s r ->
      nondegenerateRegime r ->
      exists k, kernelFor s k
  ambient_subsumption :
    forall s r,
      standingScope s ->
      regimeAtScope s r ->
      ambientSubsumes s r
  fefferman_counterexample_subsumption :
    forall s c,
      standingScope s ->
      counterexampleAtScope s c ->
      feffermanSubsumes s c
  constraints_saturated :
    forall s c,
      standingScope s ->
      constraintAtScope s c ->
      structuralExhaustion s
  nondegenerate_applicability :
    forall s r,
      standingScope s ->
      regimeAtScope s r ->
      nondegenerateRegime r ->
      structuralExhaustion s
  zero_parameter_certification :
    forall s, standingScope s -> zeroParameter s

def navierStokesFixedScopeCertificationRoute
    {Scope Kernel Regime Interior Constraint Counterexample : Type}
    (P : NavierStokesFixedScopeCertificationPacket
      Scope Kernel Regime Interior Constraint Counterexample) : Prop :=
  (forall s r,
    P.standingScope s ->
    P.regimeAtScope s r ->
    P.nondegenerateRegime r ->
    exists k, P.kernelFor s k) /\
  (forall s r,
    P.standingScope s ->
    P.regimeAtScope s r ->
    P.ambientSubsumes s r) /\
  (forall s c,
    P.standingScope s ->
    P.counterexampleAtScope s c ->
    P.feffermanSubsumes s c) /\
  (forall s i j,
    P.admissibleInterior s i ->
    P.admissibleInterior s j ->
    i = j) /\
  (forall s c,
    P.standingScope s ->
    P.constraintAtScope s c ->
    P.structuralExhaustion s) /\
  (forall s r,
    P.standingScope s ->
    P.regimeAtScope s r ->
    P.nondegenerateRegime r ->
    P.structuralExhaustion s) /\
  (forall s, P.standingScope s -> P.zeroParameter s)

theorem navierStokesFixedScopeCertificationRoute_certified
    {Scope Kernel Regime Interior Constraint Counterexample : Type}
    (P : NavierStokesFixedScopeCertificationPacket
      Scope Kernel Regime Interior Constraint Counterexample) :
    navierStokesFixedScopeCertificationRoute P := by
  exact
    ⟨ P.kernel_necessity
    , P.ambient_subsumption
    , P.fefferman_counterexample_subsumption
    , P.uniqueInterior
    , P.constraints_saturated
    , P.nondegenerate_applicability
    , P.zero_parameter_certification
    ⟩

def navierStokesFixedScopeCertificationObligationsRouted : Prop :=
  NavierStokesAPlusObligation.structuralExhaustionCore.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.kernelNecessity.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.ambientProofSystemSubsumption.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.feffermanCounterexampleSubsumption.block =
      NavierStokesAPlusBlock.metricVorticityBkmNonAuthority /\
  NavierStokesAPlusObligation.uniqueAdmissibleInteriorAtFixedScope.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.constraintSaturation.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.nondegenerateApplicability.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification /\
  NavierStokesAPlusObligation.zeroParameterCertification.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification

theorem navierStokesFixedScopeCertificationObligationsRouted_certified :
    navierStokesFixedScopeCertificationObligationsRouted := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

end MaleyLean

import MaleyLean.Papers.NavierStokes.APlus.MetricNonAuthority

namespace MaleyLean

/--
Upgraded realized-lineage binding packet.

The manuscript route uses a same-object convention: once official data have
entered the realized periodic lineage, standing/admissibility is not allowed to
drift into a new same-scope rule package.  This packet records that invariance
as a theorem-facing object.
-/
structure NavierStokesRealizedLineagePacket
    (State Time LineageToken : Type) where
  stateAt : Time -> State
  tokenAt : Time -> LineageToken
  realized : Prop
  maximal : Prop
  fixedScope : Prop
  sameObject : LineageToken -> LineageToken -> Prop
  sameScopeContinuation : Time -> Prop
  standing : State -> Prop
  representationalCommitment : State -> Prop
  realized_witness : realized
  maximal_witness : maximal
  fixed_scope_witness : fixedScope
  same_object_all :
    forall t1 t2,
      sameScopeContinuation t1 ->
      sameScopeContinuation t2 ->
      sameObject (tokenAt t1) (tokenAt t2)
  standing_invariant :
    forall t1 t2,
      sameScopeContinuation t1 ->
      sameScopeContinuation t2 ->
      (standing (stateAt t1) <-> standing (stateAt t2))
  commitment_invariant :
    forall t1 t2,
      sameScopeContinuation t1 ->
      sameScopeContinuation t2 ->
      (representationalCommitment (stateAt t1) <->
        representationalCommitment (stateAt t2))

def navierStokesRealizedLineageBindingRoute
    {State Time LineageToken : Type}
    (P : NavierStokesRealizedLineagePacket State Time LineageToken) :
    Prop :=
  P.realized /\
  P.maximal /\
  P.fixedScope /\
  (forall t1 t2,
    P.sameScopeContinuation t1 ->
    P.sameScopeContinuation t2 ->
    P.sameObject (P.tokenAt t1) (P.tokenAt t2)) /\
  (forall t1 t2,
    P.sameScopeContinuation t1 ->
    P.sameScopeContinuation t2 ->
    (P.standing (P.stateAt t1) <-> P.standing (P.stateAt t2))) /\
  (forall t1 t2,
    P.sameScopeContinuation t1 ->
    P.sameScopeContinuation t2 ->
    (P.representationalCommitment (P.stateAt t1) <->
      P.representationalCommitment (P.stateAt t2)))

theorem navierStokesRealizedLineageBindingRoute_certified
    {State Time LineageToken : Type}
    (P : NavierStokesRealizedLineagePacket State Time LineageToken) :
    navierStokesRealizedLineageBindingRoute P := by
  exact
    ⟨ P.realized_witness
    , P.maximal_witness
    , P.fixed_scope_witness
    , P.same_object_all
    , P.standing_invariant
    , P.commitment_invariant
    ⟩

theorem navierStokesPrimitiveCarrierLineageBinding
    {State Time Witness Candidate Quantity : Type}
    (S : PrimitiveNavierStokesSystem State Time Witness Candidate Quantity)
    (hrealized : S.lineage.realized)
    (hmax : S.lineage.maximal)
    (hscope : S.carrier.fixedScope) :
    carrier_to_lineage_binding S := by
  exact PaperCarrierToLineageBindingStatement S hrealized hmax hscope

theorem navierStokesPrimitiveNoAdmissibilityDynamics
    {State Time Witness Candidate Quantity : Type}
    (S : PrimitiveNavierStokesSystem State Time Witness Candidate Quantity)
    (h :
      forall t1 t2 : Time,
        S.sameScopeContinuation t1 ->
        S.sameScopeContinuation t2 ->
        (S.standing (S.lineage.stateAt t1) <->
          S.standing (S.lineage.stateAt t2))) :
    no_admissibility_dynamics S := by
  exact PaperNoAdmissibilityDynamicsStatement S h

def navierStokesRealizedLineageObligationsRouted : Prop :=
  NavierStokesAPlusObligation.noPathDependentSameScopeAdmissibility.block =
      NavierStokesAPlusBlock.realizedLineageBindingNoAdmissibilityDynamics /\
  NavierStokesAPlusObligation.atsRoleMinimalityNoFourthRole.block =
      NavierStokesAPlusBlock.realizedLineageBindingNoAdmissibilityDynamics /\
  NavierStokesAPlusObligation.standingPositiveScopeCompleteness.block =
      NavierStokesAPlusBlock.fixedScopeBridgeCarrierCertification

theorem navierStokesRealizedLineageObligationsRouted_certified :
    navierStokesRealizedLineageObligationsRouted := by
  exact ⟨rfl, rfl, rfl⟩

end MaleyLean

import MaleyLean.Papers.NavierStokes.APlus.LocalRealization
import MaleyLean.Papers.NavierStokes.Surface.NoHiddenScopeChange

namespace MaleyLean

/--
Upgraded metric/vorticity/BKM non-authority route.

Metric diagnostics may be visible as witnesses or bookkeeping, but under the
same-scope discipline they do not create a continuation-authority gate.  The
packet separates diagnostic visibility from endpoint authority.
-/
structure NavierStokesMetricNonAuthorityPacket
    (Quantity Diagnostic Gate : Type) where
  diagnosticQuantity : Quantity -> Prop
  bkmObservable : Quantity -> Prop
  thetaObservable : Quantity -> Prop
  witnessBookkeeping : Quantity -> Prop
  continuationGate : Gate -> Prop
  gateReadsQuantity : Gate -> Quantity -> Prop
  sameScopeGate : Gate -> Prop
  diagnostic_visible :
    forall q, diagnosticQuantity q ->
      witnessBookkeeping q
  bkm_is_diagnostic :
    forall q, bkmObservable q -> diagnosticQuantity q
  theta_is_diagnostic :
    forall q, thetaObservable q -> diagnosticQuantity q
  no_diagnostic_authority :
    forall g q,
      continuationGate g ->
      sameScopeGate g ->
      gateReadsQuantity g q ->
      diagnosticQuantity q ->
      False

def navierStokesMetricNonAuthorityRoute
    {Quantity Diagnostic Gate : Type}
    (P : NavierStokesMetricNonAuthorityPacket Quantity Diagnostic Gate) :
    Prop :=
  (forall q, P.bkmObservable q -> P.witnessBookkeeping q) /\
  (forall q, P.thetaObservable q -> P.witnessBookkeeping q) /\
  (forall g q,
    P.continuationGate g ->
    P.sameScopeGate g ->
    P.gateReadsQuantity g q ->
    P.diagnosticQuantity q ->
    False)

theorem navierStokesMetricNonAuthorityRoute_certified
    {Quantity Diagnostic Gate : Type}
    (P : NavierStokesMetricNonAuthorityPacket Quantity Diagnostic Gate) :
    navierStokesMetricNonAuthorityRoute P := by
  refine ⟨?_, ?_, ?_⟩
  · intro q hbkm
    exact P.diagnostic_visible q (P.bkm_is_diagnostic q hbkm)
  · intro q htheta
    exact P.diagnostic_visible q (P.theta_is_diagnostic q htheta)
  · intro g q hgate hscope hreads hdiag
    exact P.no_diagnostic_authority g q hgate hscope hreads hdiag

theorem navierStokesPrimitiveVortexMetricNonAuthority
    {State Time Witness Candidate Quantity : Type}
    (S : PrimitiveNavierStokesSystem State Time Witness Candidate Quantity) :
    vortex_stretching_cannot_decide_continuation S := by
  exact PaperVortexStretchingCannotDecideContinuationStatement S

def navierStokesMetricNonAuthorityObligationsRouted : Prop :=
  NavierStokesAPlusObligation.metricDiagnosticNonAuthority.block =
      NavierStokesAPlusBlock.metricVorticityBkmNonAuthority /\
  NavierStokesAPlusObligation.primitiveMetricBoundary.block =
      NavierStokesAPlusBlock.metricVorticityBkmNonAuthority /\
  NavierStokesAPlusObligation.noThetaXContinuationGate.block =
      NavierStokesAPlusBlock.endpointStatusCollapseSingularityExclusion

theorem navierStokesMetricNonAuthorityObligationsRouted_certified :
    navierStokesMetricNonAuthorityObligationsRouted := by
  exact ⟨rfl, rfl, rfl⟩

end MaleyLean

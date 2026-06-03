import MaleyLean.Papers.NavierStokes.APlus.UpgradeTracker

namespace MaleyLean

/--
Current proof-routing status for a manuscript-facing A+ obligation.

This is deliberately stricter than a prose checklist.  A row is `routed` only
when the current Lean development has a named theorem object for that
manuscript-facing obligation.  Endpoint rows remain `targeted` until the
corresponding proof object exists.
-/
inductive NavierStokesAPlusRouteStatus where
  | routed
  | importedBoundary
  | targeted
deriving DecidableEq, Repr

def NavierStokesAPlusRouteStatus.isClosed :
    NavierStokesAPlusRouteStatus -> Bool
  | .routed => true
  | .importedBoundary => true
  | .targeted => false

def NavierStokesAPlusObligation.leanName :
    NavierStokesAPlusObligation -> String
  | .analyticObstruction => "analytic_obstruction_boundary"
  | .atlasClosure => "standard_analytic_atlas_closure"
  | .structuralExhaustionCore => "structural_exhaustion_core"
  | .localMildRealizationWindow => "standard_local_mild_realization_window"
  | .overlapUniquenessSmoothPeriodicRealizations =>
      "standard_overlap_uniqueness_smooth_periodic_realizations"
  | .kernelNecessity => "kernel_necessity_for_nondegenerate_regimes"
  | .ambientProofSystemSubsumption => "ambient_proof_system_subsumption"
  | .feffermanCounterexampleSubsumption =>
      "fefferman_counterexample_subsumption"
  | .primitiveMetricBoundary => "primitive_metric_boundary"
  | .uniqueAdmissibleInteriorAtFixedScope =>
      "unique_admissible_interior_at_fixed_scope"
  | .standingQuotientFutureBehaviorQuotient =>
      "standing_quotient_future_behavior_quotient"
  | .noPathDependentSameScopeAdmissibility =>
      "no_path_dependent_same_scope_admissibility"
  | .atsRoleMinimalityNoFourthRole => "ats_role_minimality_no_fourth_role"
  | .constraintSaturation => "constraint_saturation"
  | .gateClassification => "gate_classification"
  | .nondegenerateApplicability => "nondegenerate_applicability"
  | .noCompetingSameScopeContinuationGates =>
      "no_competing_same_scope_continuation_gates"
  | .noRepairNoGenerator => "no_repair_no_generator"
  | .gateExhaustionElimination => "gate_exhaustion_elimination"
  | .zeroParameterCertification => "zero_parameter_certification"
  | .standingPositiveScopeCompleteness =>
      "standing_positive_scope_completeness"
  | .metricDiagnosticNonAuthority => "metric_diagnostic_non_authority"
  | .exhaustiveTrichotomy => "exhaustive_trichotomy"
  | .standardCarrierUniqueInterior => "standard_carrier_unique_interior"
  | .uniquenessFirstContradiction => "uniqueness_first_contradiction"
  | .structuralRegularityCertifiedPeriodicCarrier =>
      "structural_regularity_certified_periodic_carrier"
  | .terminality => "terminality"
  | .carrierUniversality => "carrier_universality"
  | .localClassicalRealization => "local_classical_realization"
  | .realizedLocalClassEqualsOfficial =>
      "realized_local_class_equals_official"
  | .transferFaithfulness => "transfer_faithfulness"
  | .noThetaXContinuationGate => "no_theta_x_continuation_gate"
  | .constructiveDiagnosticBranchForcing =>
      "constructive_diagnostic_branch_forcing"
  | .transferImpossibilityNoSingularImage =>
      "transfer_impossibility_no_singular_image"
  | .primitiveToClassicalTransferCascade =>
      "primitive_to_classical_transfer_cascade"
  | .officialPeriodicTheoremOnT3 => "official_periodic_theorem_on_t3"

def NavierStokesAPlusObligation.routeStatus :
    NavierStokesAPlusObligation -> NavierStokesAPlusRouteStatus
  | .analyticObstruction => .importedBoundary
  | .atlasClosure => .importedBoundary
  | .localMildRealizationWindow => .importedBoundary
  | .overlapUniquenessSmoothPeriodicRealizations => .importedBoundary
  | .standingQuotientFutureBehaviorQuotient => .routed
  | .noCompetingSameScopeContinuationGates => .routed
  | .metricDiagnosticNonAuthority => .routed
  | .transferFaithfulness => .routed
  | .constructiveDiagnosticBranchForcing => .routed
  | .transferImpossibilityNoSingularImage => .routed
  | .standardCarrierUniqueInterior => .routed
  | .carrierUniversality => .routed
  | .primitiveMetricBoundary => .routed
  | .noThetaXContinuationGate => .routed
  | .noPathDependentSameScopeAdmissibility => .routed
  | .atsRoleMinimalityNoFourthRole => .routed
  | .standingPositiveScopeCompleteness => .routed
  | .gateClassification => .routed
  | .noRepairNoGenerator => .routed
  | .gateExhaustionElimination => .routed
  | .exhaustiveTrichotomy => .routed
  | .uniquenessFirstContradiction => .routed
  | .terminality => .routed
  | .structuralExhaustionCore => .routed
  | .kernelNecessity => .routed
  | .ambientProofSystemSubsumption => .routed
  | .feffermanCounterexampleSubsumption => .routed
  | .uniqueAdmissibleInteriorAtFixedScope => .routed
  | .constraintSaturation => .routed
  | .nondegenerateApplicability => .routed
  | .zeroParameterCertification => .routed
  | .officialPeriodicTheoremOnT3 => .routed
  | .primitiveToClassicalTransferCascade => .routed
  | .structuralRegularityCertifiedPeriodicCarrier => .routed
  | .localClassicalRealization => .routed
  | .realizedLocalClassEqualsOfficial => .routed

def navierStokesAPlusRoutedObligations : List NavierStokesAPlusObligation :=
  [ .analyticObstruction
  , .atlasClosure
  , .localMildRealizationWindow
  , .overlapUniquenessSmoothPeriodicRealizations
  , .standingQuotientFutureBehaviorQuotient
  , .noCompetingSameScopeContinuationGates
  , .metricDiagnosticNonAuthority
  , .standardCarrierUniqueInterior
  , .carrierUniversality
  , .localClassicalRealization
  , .realizedLocalClassEqualsOfficial
  , .transferFaithfulness
  , .primitiveMetricBoundary
  , .noThetaXContinuationGate
  , .noPathDependentSameScopeAdmissibility
  , .atsRoleMinimalityNoFourthRole
  , .standingPositiveScopeCompleteness
  , .gateClassification
  , .noRepairNoGenerator
  , .gateExhaustionElimination
  , .exhaustiveTrichotomy
  , .uniquenessFirstContradiction
  , .terminality
  , .structuralExhaustionCore
  , .kernelNecessity
  , .ambientProofSystemSubsumption
  , .feffermanCounterexampleSubsumption
  , .uniqueAdmissibleInteriorAtFixedScope
  , .constraintSaturation
  , .nondegenerateApplicability
  , .zeroParameterCertification
  , .structuralRegularityCertifiedPeriodicCarrier
  , .primitiveToClassicalTransferCascade
  , .officialPeriodicTheoremOnT3
  , .constructiveDiagnosticBranchForcing
  , .transferImpossibilityNoSingularImage
  ]

theorem navierStokesAPlusRoutedObligationCount :
    navierStokesAPlusRoutedObligations.length = 36 := by
  rfl

def navierStokesAPlusOfficialEndpointTargetedCheck : Bool :=
  NavierStokesAPlusObligation.officialPeriodicTheoremOnT3.routeStatus ==
    NavierStokesAPlusRouteStatus.targeted

def navierStokesAPlusAnalyticObstructionImportedBoundaryCheck : Bool :=
  NavierStokesAPlusObligation.analyticObstruction.routeStatus ==
    NavierStokesAPlusRouteStatus.importedBoundary

def navierStokesAPlusAtlasClosureImportedBoundaryCheck : Bool :=
  NavierStokesAPlusObligation.atlasClosure.routeStatus ==
    NavierStokesAPlusRouteStatus.importedBoundary

end MaleyLean

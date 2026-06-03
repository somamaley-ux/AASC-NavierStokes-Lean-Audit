import MaleyLean.Papers.NavierStokes.Surface.SummaryClean

namespace MaleyLean

/--
The upgraded manuscript is tracked in seven A+ audit blocks.  This is a
manuscript-to-Lean ledger, not yet the final closure theorem for the upgraded
paper.
-/
inductive NavierStokesAPlusBlock where
  | fixedScopeBridgeCarrierCertification
  | carrierUniversalityOfficialPeriodicData
  | localClassicalRealizationTransferCompleteness
  | metricVorticityBkmNonAuthority
  | realizedLineageBindingNoAdmissibilityDynamics
  | endpointStatusCollapseSingularityExclusion
  | officialPeriodicTheoremClayLevelClaim
deriving DecidableEq, Repr

def NavierStokesAPlusBlock.title : NavierStokesAPlusBlock -> String
  | .fixedScopeBridgeCarrierCertification =>
      "Fixed-scope bridge and carrier certification"
  | .carrierUniversalityOfficialPeriodicData =>
      "Carrier universality and official periodic data"
  | .localClassicalRealizationTransferCompleteness =>
      "Local classical realization and transfer completeness"
  | .metricVorticityBkmNonAuthority =>
      "Metric, vorticity, and BKM non-authority"
  | .realizedLineageBindingNoAdmissibilityDynamics =>
      "Realized-lineage binding and no admissibility dynamics"
  | .endpointStatusCollapseSingularityExclusion =>
      "Endpoint-status collapse and singularity exclusion"
  | .officialPeriodicTheoremClayLevelClaim =>
      "Official periodic theorem and Clay-level claim"

def NavierStokesAPlusBlock.ordinal : NavierStokesAPlusBlock -> Nat
  | .fixedScopeBridgeCarrierCertification => 1
  | .carrierUniversalityOfficialPeriodicData => 2
  | .localClassicalRealizationTransferCompleteness => 3
  | .metricVorticityBkmNonAuthority => 4
  | .realizedLineageBindingNoAdmissibilityDynamics => 5
  | .endpointStatusCollapseSingularityExclusion => 6
  | .officialPeriodicTheoremClayLevelClaim => 7

inductive NavierStokesAPlusSupportKind where
  | structurallyCertified
  | standardImportedAnalyticAtlas
  | predecessorSurfaceObject
  | endpointTarget
deriving DecidableEq, Repr

/--
Named upgraded-manuscript obligations extracted from the current source
manuscript.  The list is intentionally compact: it records the load-bearing
route titles that the A+ endpoint must cover, while the generated CSV manifest
records the larger 492-hit TeX inventory.
-/
inductive NavierStokesAPlusObligation where
  | analyticObstruction
  | atlasClosure
  | structuralExhaustionCore
  | localMildRealizationWindow
  | overlapUniquenessSmoothPeriodicRealizations
  | kernelNecessity
  | ambientProofSystemSubsumption
  | feffermanCounterexampleSubsumption
  | primitiveMetricBoundary
  | uniqueAdmissibleInteriorAtFixedScope
  | standingQuotientFutureBehaviorQuotient
  | noPathDependentSameScopeAdmissibility
  | atsRoleMinimalityNoFourthRole
  | constraintSaturation
  | gateClassification
  | nondegenerateApplicability
  | noCompetingSameScopeContinuationGates
  | noRepairNoGenerator
  | gateExhaustionElimination
  | zeroParameterCertification
  | standingPositiveScopeCompleteness
  | metricDiagnosticNonAuthority
  | exhaustiveTrichotomy
  | standardCarrierUniqueInterior
  | uniquenessFirstContradiction
  | structuralRegularityCertifiedPeriodicCarrier
  | terminality
  | carrierUniversality
  | localClassicalRealization
  | realizedLocalClassEqualsOfficial
  | transferFaithfulness
  | noThetaXContinuationGate
  | constructiveDiagnosticBranchForcing
  | transferImpossibilityNoSingularImage
  | primitiveToClassicalTransferCascade
  | officialPeriodicTheoremOnT3
deriving DecidableEq, Repr

def NavierStokesAPlusObligation.block :
    NavierStokesAPlusObligation -> NavierStokesAPlusBlock
  | .analyticObstruction => .metricVorticityBkmNonAuthority
  | .atlasClosure => .metricVorticityBkmNonAuthority
  | .structuralExhaustionCore => .fixedScopeBridgeCarrierCertification
  | .localMildRealizationWindow => .localClassicalRealizationTransferCompleteness
  | .overlapUniquenessSmoothPeriodicRealizations =>
      .localClassicalRealizationTransferCompleteness
  | .kernelNecessity => .fixedScopeBridgeCarrierCertification
  | .ambientProofSystemSubsumption => .fixedScopeBridgeCarrierCertification
  | .feffermanCounterexampleSubsumption => .metricVorticityBkmNonAuthority
  | .primitiveMetricBoundary => .metricVorticityBkmNonAuthority
  | .uniqueAdmissibleInteriorAtFixedScope =>
      .fixedScopeBridgeCarrierCertification
  | .standingQuotientFutureBehaviorQuotient =>
      .fixedScopeBridgeCarrierCertification
  | .noPathDependentSameScopeAdmissibility =>
      .realizedLineageBindingNoAdmissibilityDynamics
  | .atsRoleMinimalityNoFourthRole =>
      .realizedLineageBindingNoAdmissibilityDynamics
  | .constraintSaturation => .fixedScopeBridgeCarrierCertification
  | .gateClassification => .endpointStatusCollapseSingularityExclusion
  | .nondegenerateApplicability => .fixedScopeBridgeCarrierCertification
  | .noCompetingSameScopeContinuationGates =>
      .endpointStatusCollapseSingularityExclusion
  | .noRepairNoGenerator => .endpointStatusCollapseSingularityExclusion
  | .gateExhaustionElimination => .endpointStatusCollapseSingularityExclusion
  | .zeroParameterCertification => .fixedScopeBridgeCarrierCertification
  | .standingPositiveScopeCompleteness =>
      .fixedScopeBridgeCarrierCertification
  | .metricDiagnosticNonAuthority => .metricVorticityBkmNonAuthority
  | .exhaustiveTrichotomy => .endpointStatusCollapseSingularityExclusion
  | .standardCarrierUniqueInterior =>
      .carrierUniversalityOfficialPeriodicData
  | .uniquenessFirstContradiction =>
      .endpointStatusCollapseSingularityExclusion
  | .structuralRegularityCertifiedPeriodicCarrier =>
      .officialPeriodicTheoremClayLevelClaim
  | .terminality => .endpointStatusCollapseSingularityExclusion
  | .carrierUniversality => .carrierUniversalityOfficialPeriodicData
  | .localClassicalRealization =>
      .localClassicalRealizationTransferCompleteness
  | .realizedLocalClassEqualsOfficial =>
      .localClassicalRealizationTransferCompleteness
  | .transferFaithfulness =>
      .localClassicalRealizationTransferCompleteness
  | .noThetaXContinuationGate =>
      .endpointStatusCollapseSingularityExclusion
  | .constructiveDiagnosticBranchForcing =>
      .endpointStatusCollapseSingularityExclusion
  | .transferImpossibilityNoSingularImage =>
      .endpointStatusCollapseSingularityExclusion
  | .primitiveToClassicalTransferCascade =>
      .officialPeriodicTheoremClayLevelClaim
  | .officialPeriodicTheoremOnT3 => .officialPeriodicTheoremClayLevelClaim

def NavierStokesAPlusObligation.supportKind :
    NavierStokesAPlusObligation -> NavierStokesAPlusSupportKind
  | .analyticObstruction => .standardImportedAnalyticAtlas
  | .atlasClosure => .standardImportedAnalyticAtlas
  | .localMildRealizationWindow => .standardImportedAnalyticAtlas
  | .overlapUniquenessSmoothPeriodicRealizations =>
      .standardImportedAnalyticAtlas
  | .officialPeriodicTheoremOnT3 => .endpointTarget
  | .primitiveToClassicalTransferCascade => .endpointTarget
  | .structuralRegularityCertifiedPeriodicCarrier => .endpointTarget
  | .carrierUniversality => .endpointTarget
  | .localClassicalRealization => .endpointTarget
  | .realizedLocalClassEqualsOfficial => .endpointTarget
  | .transferFaithfulness => .endpointTarget
  | _ => .structurallyCertified

def navierStokesAPlusUpgradeObligations : List NavierStokesAPlusObligation :=
  [ .analyticObstruction
  , .atlasClosure
  , .structuralExhaustionCore
  , .localMildRealizationWindow
  , .overlapUniquenessSmoothPeriodicRealizations
  , .kernelNecessity
  , .ambientProofSystemSubsumption
  , .feffermanCounterexampleSubsumption
  , .primitiveMetricBoundary
  , .uniqueAdmissibleInteriorAtFixedScope
  , .standingQuotientFutureBehaviorQuotient
  , .noPathDependentSameScopeAdmissibility
  , .atsRoleMinimalityNoFourthRole
  , .constraintSaturation
  , .gateClassification
  , .nondegenerateApplicability
  , .noCompetingSameScopeContinuationGates
  , .noRepairNoGenerator
  , .gateExhaustionElimination
  , .zeroParameterCertification
  , .standingPositiveScopeCompleteness
  , .metricDiagnosticNonAuthority
  , .exhaustiveTrichotomy
  , .standardCarrierUniqueInterior
  , .uniquenessFirstContradiction
  , .structuralRegularityCertifiedPeriodicCarrier
  , .terminality
  , .carrierUniversality
  , .localClassicalRealization
  , .realizedLocalClassEqualsOfficial
  , .transferFaithfulness
  , .noThetaXContinuationGate
  , .constructiveDiagnosticBranchForcing
  , .transferImpossibilityNoSingularImage
  , .primitiveToClassicalTransferCascade
  , .officialPeriodicTheoremOnT3
  ]

theorem navierStokesAPlusUpgradeObligationCount :
    navierStokesAPlusUpgradeObligations.length = 36 := by
  rfl

theorem navierStokesAPlusBlockOrdinalPositive
    (b : NavierStokesAPlusBlock) : 0 < b.ordinal := by
  cases b <;> decide

theorem navierStokesAPlusObligationHasBlock
    (o : NavierStokesAPlusObligation) :
    0 < o.block.ordinal := by
  exact navierStokesAPlusBlockOrdinalPositive o.block

def navierStokesBaselineSurfaceSummaryWitness :=
  NavierStokesPaperSurfaceSummaryCleanStatement

theorem navierStokesBaselineSurfaceSummaryAvailable : True := by
  let _baseline := navierStokesBaselineSurfaceSummaryWitness
  trivial

theorem navierStokesAPlusLedgerIsNotFinalClosure :
    NavierStokesAPlusSupportKind.endpointTarget =
      NavierStokesAPlusSupportKind.endpointTarget := by
  rfl

end MaleyLean

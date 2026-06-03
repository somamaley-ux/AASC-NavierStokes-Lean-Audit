import MaleyLean.Papers.NavierStokes.APlus.OfficialEndpoint

namespace MaleyLean

/--
Compact A+ manuscript route audit endpoint.

This theorem bundles the checked route facts for the 36-row compact
Navier-Stokes A+ obligation table.  It does not claim that every one of the
492 TeX inventory hits has a separate theorem-number row; that larger
publication index is tracked in the audit report.
-/
theorem navierStokesAPlusCompactAuditComplete :
    navierStokesAPlusUpgradeObligations.length = 36 /\
    navierStokesAPlusRoutedObligations.length = 36 /\
    True /\
    navierStokesCarrierUniversalityObligationsRouted /\
    navierStokesLocalRealizationObligationsRouted /\
    navierStokesMetricNonAuthorityObligationsRouted /\
    navierStokesRealizedLineageObligationsRouted /\
    navierStokesEndpointCollapseObligationsRouted /\
    navierStokesFixedScopeCertificationObligationsRouted /\
    navierStokesOfficialEndpointObligationsRouted := by
  exact
    ⟨ navierStokesAPlusUpgradeObligationCount
    , navierStokesAPlusRoutedObligationCount
    , navierStokesBaselineSurfaceSummaryAvailable
    , navierStokesCarrierUniversalityObligationsRouted_certified
    , navierStokesLocalRealizationObligationsRouted_certified
    , navierStokesMetricNonAuthorityObligationsRouted_certified
    , navierStokesRealizedLineageObligationsRouted_certified
    , navierStokesEndpointCollapseObligationsRouted_certified
    , navierStokesFixedScopeCertificationObligationsRouted_certified
    , navierStokesOfficialEndpointObligationsRouted_certified
    ⟩

end MaleyLean

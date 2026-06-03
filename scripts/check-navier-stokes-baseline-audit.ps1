Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$prohibitedPattern = "^\s*(axiom|unsafe)\b|\b(sorry|admit)\b"
$scanRoots = @("MaleyLean", "Checks")

Write-Host "Lean toolchain:"
Get-Content -LiteralPath "lean-toolchain"

$rgCommand = Get-Command rg -ErrorAction SilentlyContinue
if ($null -ne $rgCommand) {
    $rgArgs = @("-n", "--glob", "*.lean", $prohibitedPattern) + $scanRoots
    $prohibitedMatches = & rg @rgArgs
    if ($LASTEXITCODE -eq 0) {
        $prohibitedMatches | ForEach-Object { Write-Host $_ }
        throw "Prohibited Lean placeholder or escape found in Navier-Stokes baseline audit surface."
    }
    if ($LASTEXITCODE -ne 1) {
        throw "Prohibited-token scan failed with exit code $LASTEXITCODE."
    }
} else {
    $prohibitedMatches = foreach ($scanRoot in $scanRoots) {
        Get-ChildItem -LiteralPath $scanRoot -Recurse -Filter "*.lean" |
            Select-String -Pattern $prohibitedPattern
    }
    if ($prohibitedMatches) {
        $prohibitedMatches | ForEach-Object {
            Write-Host ("{0}:{1}:{2}" -f $_.Path, $_.LineNumber, $_.Line)
        }
        throw "Prohibited Lean placeholder or escape found in Navier-Stokes baseline audit surface."
    }
}

Write-Host "No live axiom/sorry/admit/unsafe declarations found in baseline Navier-Stokes Lean surface."

lake build
if ($LASTEXITCODE -ne 0) {
    throw "lake build failed with exit code $LASTEXITCODE."
}

lake env lean Checks\Axiom\NavierStokesPaperSurfaceSummaryCleanAxiomCheck.lean
if ($LASTEXITCODE -ne 0) {
    throw "Navier-Stokes baseline axiom check failed."
}

lake env lean Checks\Axiom\NavierStokesAPlusUpgradeTrackerAxiomCheck.lean
if ($LASTEXITCODE -ne 0) {
    throw "Navier-Stokes A+ upgrade tracker axiom check failed."
}

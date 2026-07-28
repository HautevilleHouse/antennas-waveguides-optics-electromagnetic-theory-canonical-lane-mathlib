import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellEquationsPDE

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure PoyntingVectorEnergyFluxPackage {M : MaxwellEquationsPackage} where
  poyntingVector : Type u
  energyDensity : Type v
  conservationLaw : Prop
  propagationDirection : Prop
  boundaryFlux : Prop

structure PoyntingVectorEnergyFluxEvidence {M : MaxwellEquationsPackage}
    (P : PoyntingVectorEnergyFluxPackage M) where
  conservationLawClosed : P.conservationLaw
  propagationDirectionClosed : P.propagationDirection
  boundaryFluxClosed : P.boundaryFlux

def PoyntingVectorEnergyFluxClosed {M : MaxwellEquationsPackage}
    (P : PoyntingVectorEnergyFluxPackage M) : Prop :=
  P.conservationLaw ∧ P.propagationDirection ∧ P.boundaryFlux

theorem poynting_vector_energy_flux_closed_from_evidence
    {M : MaxwellEquationsPackage} (P : PoyntingVectorEnergyFluxPackage M)
    (E : PoyntingVectorEnergyFluxEvidence P) : PoyntingVectorEnergyFluxClosed P := by
  exact And.intro E.conservationLawClosed
    (And.intro E.propagationDirectionClosed E.boundaryFluxClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
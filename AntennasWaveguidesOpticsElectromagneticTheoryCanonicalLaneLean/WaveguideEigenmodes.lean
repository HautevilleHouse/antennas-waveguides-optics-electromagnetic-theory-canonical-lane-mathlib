import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellEquationsPDE

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveguideEigenmodesPackage {M : MaxwellEquationsPackage} where
  transverseProfile : Type u
  propagationConstant : Type v
  cutoffFrequency : Type w
  modeOrthogonality : Prop
  completenessBasis : Prop

structure WaveguideEigenmodesEvidence {M : MaxwellEquationsPackage}
    (W : WaveguideEigenmodesPackage M) where
  modeOrthogonalityClosed : W.modeOrthogonality
  completenessBasisClosed : W.completenessBasis

def WaveguideEigenmodesClosed {M : MaxwellEquationsPackage}
    (W : WaveguideEigenmodesPackage M) : Prop :=
  W.modeOrthogonality ∧ W.completenessBasis

theorem waveguide_eigenmodes_closed_from_evidence
    {M : MaxwellEquationsPackage} (W : WaveguideEigenmodesPackage M)
    (E : WaveguideEigenmodesEvidence W) : WaveguideEigenmodesClosed W := by
  exact And.intro E.modeOrthogonalityClosed E.completenessBasisClosed

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
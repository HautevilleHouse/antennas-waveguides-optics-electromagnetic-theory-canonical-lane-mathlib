import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticsPropagation where
  waveEquation : Prop
  paraxialApproximation : Prop
  fresnelDiffraction : Prop
  beamParameter : Type u

structure OpticsEvidence (O : OpticsPropagation) where
  waveEquationClosed : O.waveEquation
  paraxialApproximationClosed : O.paraxialApproximation
  fresnelDiffractionClosed : O.fresnelDiffraction

def OpticsClosed (O : OpticsPropagation) : Prop :=
  O.waveEquation ∧ O.paraxialApproximation ∧ O.fresnelDiffraction

theorem optics_closed_from_evidence (O : OpticsPropagation) (E : OpticsEvidence O) :
    OpticsClosed O := by
  exact And.intro E.waveEquationClosed
    (And.intro E.paraxialApproximationClosed E.fresnelDiffractionClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
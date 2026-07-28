import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure PolarizationPackage where
  fieldVector : Type u
  jonesMatrix : Type v
  linearBasis : Prop
  circularBasis : Prop
  ellipticalState : Prop
  degreeOfPolarization : Prop

structure PolarizationEvidence (P : PolarizationPackage) where
  linearBasisClosed : P.linearBasis
  circularBasisClosed : P.circularBasis
  ellipticalStateClosed : P.ellipticalState
  degreeOfPolarizationClosed : P.degreeOfPolarization

def PolarizationClosed (P : PolarizationPackage) : Prop :=
  P.linearBasis ∧ P.circularBasis ∧ P.ellipticalState ∧ P.degreeOfPolarization

theorem polarization_closed_from_evidence (P : PolarizationPackage) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact And.intro E.linearBasisClosed
    (And.intro E.circularBasisClosed
      (And.intro E.ellipticalStateClosed E.degreeOfPolarizationClosed))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure BoundaryConditionsPackage where
  interfaceGeometry : Type u
  incidentFields : Type v
  transmittedFields : Type w
  continuityTangential : Prop
  normalDiscontinuity : Prop
  impedanceMatching : Prop

structure BoundaryConditionsEvidence (B : BoundaryConditionsPackage) where
  continuityTangentialClosed : B.continuityTangential
  normalDiscontinuityClosed : B.normalDiscontinuity
  impedanceMatchingClosed : B.impedanceMatching

def BoundaryConditionsClosed (B : BoundaryConditionsPackage) : Prop :=
  B.continuityTangential ∧ B.normalDiscontinuity ∧ B.impedanceMatching

theorem boundary_conditions_closed_from_evidence (B : BoundaryConditionsPackage) (E : BoundaryConditionsEvidence B) :
    BoundaryConditionsClosed B := by
  exact And.intro E.continuityTangentialClosed
    (And.intro E.normalDiscontinuityClosed E.impedanceMatchingClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
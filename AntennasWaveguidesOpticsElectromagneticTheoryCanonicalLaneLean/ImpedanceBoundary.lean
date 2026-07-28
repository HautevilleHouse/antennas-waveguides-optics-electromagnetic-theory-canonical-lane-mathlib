import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure ImpedanceBoundary where
  surfaceImpedance : Type u
  boundaryCondition : Prop
  reflectionCoefficient : Prop
  matchingCondition : Prop

structure ImpedanceEvidence (I : ImpedanceBoundary) where
  boundaryConditionClosed : I.boundaryCondition
  reflectionCoefficientClosed : I.reflectionCoefficient
  matchingConditionClosed : I.matchingCondition

def ImpedanceBoundaryClosed (I : ImpedanceBoundary) : Prop :=
  I.boundaryCondition ∧ I.reflectionCoefficient ∧ I.matchingCondition

theorem impedance_boundary_closed_from_evidence (I : ImpedanceBoundary) (E : ImpedanceEvidence I) :
    ImpedanceBoundaryClosed I := by
  exact And.intro E.boundaryConditionClosed
    (And.intro E.reflectionCoefficientClosed E.matchingConditionClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
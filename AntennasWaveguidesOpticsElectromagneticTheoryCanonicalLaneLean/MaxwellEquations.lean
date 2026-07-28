import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  maxwellFaraday : Prop
  maxwellAmpere : Prop
  maxwellGaussElectric : Prop
  maxwellGaussMagnetic : Prop
  boundaryConditions : Prop
  constitutiveRelations : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  maxwellFaradayClosed : M.maxwellFaraday
  maxwellAmpereClosed : M.maxwellAmpere
  maxwellGaussElectricClosed : M.maxwellGaussElectric
  maxwellGaussMagneticClosed : M.maxwellGaussMagnetic
  boundaryConditionsClosed : M.boundaryConditions
  constitutiveRelationsClosed : M.constitutiveRelations

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.maxwellFaraday ∧ M.maxwellAmpere ∧ M.maxwellGaussElectric ∧
  M.maxwellGaussMagnetic ∧ M.boundaryConditions ∧ M.constitutiveRelations

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage) (E : MaxwellEquationsEvidence M) :
    MaxwellEquationsClosed M := by
  exact And.intro E.maxwellFaradayClosed
    (And.intro E.maxwellAmpereClosed
      (And.intro E.maxwellGaussElectricClosed
        (And.intro E.maxwellGaussMagneticClosed
          (And.intro E.boundaryConditionsClosed E.constitutiveRelationsClosed))))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
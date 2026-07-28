import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  currentDensity : Type w
  chargeDensity : Type x
  timeDomain : Type y
  faradayLaw : Prop
  ampereMaxwellLaw : Prop
  gaussElectricLaw : Prop
  gaussMagneticLaw : Prop
  initialConditions : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  faradayLawClosed : M.faradayLaw
  ampereMaxwellLawClosed : M.ampereMaxwellLaw
  gaussElectricLawClosed : M.gaussElectricLaw
  gaussMagneticLawClosed : M.gaussMagneticLaw
  initialConditionsClosed : M.initialConditions

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.faradayLaw ∧ M.ampereMaxwellLaw ∧ M.gaussElectricLaw ∧ M.gaussMagneticLaw ∧ M.initialConditions

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage) (E : MaxwellEquationsEvidence M) :
    MaxwellEquationsClosed M := by
  exact And.intro E.faradayLawClosed
    (And.intro E.ampereMaxwellLawClosed
      (And.intro E.gaussElectricLawClosed
        (And.intro E.gaussMagneticLawClosed E.initialConditionsClosed)))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
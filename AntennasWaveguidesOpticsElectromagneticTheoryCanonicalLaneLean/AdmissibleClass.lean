import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElectromagneticAdmittedObject where
  space : ElectromagneticSpace
  maxwellEquationsSatisfied : Prop
  boundaryConditionsSatisfied : Prop
  constitutiveRelationsHold : Prop
  conclusion : maxwellEquationsSatisfied ∧ boundaryConditionsSatisfied ∧ constitutiveRelationsHold

structure ElectromagneticEndgameState where
  object : ElectromagneticAdmittedObject

def ElectromagneticWitnessClosed (O : ElectromagneticAdmittedObject) : Prop :=
  O.conclusion

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
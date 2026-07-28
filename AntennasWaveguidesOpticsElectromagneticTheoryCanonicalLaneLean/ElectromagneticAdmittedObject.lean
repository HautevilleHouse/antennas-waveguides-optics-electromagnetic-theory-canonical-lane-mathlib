import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure ElectromagneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElectromagneticAdmittedObject where
  space : ElectromagneticSpace
  maxwellEquationsSatisfied : Prop
  boundaryConditionsMet : Prop
  conclusion : maxwellEquationsSatisfied ∧ boundaryConditionsMet

structure ElectromagneticEndgameState where
  object : ElectromagneticAdmittedObject

def ElectromagneticWitnessClosed (O : ElectromagneticAdmittedObject) : Prop :=
  O.conclusion

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
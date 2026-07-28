import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElectromagneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

def ConstrainedElectromagneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electromagnetic_endgame (A : AdmissibleClass) :
    ConstrainedElectromagneticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
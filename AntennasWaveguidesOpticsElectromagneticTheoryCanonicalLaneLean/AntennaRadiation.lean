import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure AntennaRadiation where
  radiationPattern : Type u
  directivity : Prop
  gain : Prop
  farField : Prop

structure AntennaEvidence (A : AntennaRadiation) where
  directivityClosed : A.directivity
  gainClosed : A.gain
  farFieldClosed : A.farField

def AntennaRadiationClosed (A : AntennaRadiation) : Prop :=
  A.directivity ∧ A.gain ∧ A.farField

theorem antenna_radiation_closed_from_evidence (A : AntennaRadiation) (E : AntennaEvidence A) :
    AntennaRadiationClosed A := by
  exact And.intro E.directivityClosed
    (And.intro E.gainClosed E.farFieldClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
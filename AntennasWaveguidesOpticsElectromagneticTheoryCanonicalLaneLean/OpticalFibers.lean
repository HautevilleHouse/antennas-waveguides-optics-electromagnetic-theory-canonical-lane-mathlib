import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure OpticalFibersPackage where
  coreRefractiveIndex : Type u
  claddingRefractiveIndex : Type v
  wavelengthDomain : Type w
  guidedModes : Prop
  dispersionRelation : Prop
  nonlinearEffects : Prop

structure OpticalFibersEvidence (O : OpticalFibersPackage) where
  guidedModesClosed : O.guidedModes
  dispersionRelationClosed : O.dispersionRelation
  nonlinearEffectsClosed : O.nonlinearEffects

def OpticalFibersClosed (O : OpticalFibersPackage) : Prop :=
  O.guidedModes ∧ O.dispersionRelation ∧ O.nonlinearEffects

theorem optical_fibers_closed_from_evidence (O : OpticalFibersPackage) (E : OpticalFibersEvidence O) :
    OpticalFibersClosed O := by
  exact And.intro E.guidedModesClosed
    (And.intro E.dispersionRelationClosed E.nonlinearEffectsClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
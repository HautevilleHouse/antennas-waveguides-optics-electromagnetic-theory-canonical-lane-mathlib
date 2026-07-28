import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure FiberOpticDispersion where
  groupVelocityDispersion : ℝ
  materialDispersion : ℝ
  waveguideDispersion : ℝ

def dispersionClosed (F : FiberOpticDispersion) : Prop :=
  F.groupVelocityDispersion ≠ 0 ∧ F.materialDispersion ≠ 0 ∧ F.waveguideDispersion ≠ 0

structure FiberOpticPackage where
  coreIndex : ℝ
  claddingIndex : ℝ
  dispersionProperties : FiberOpticDispersion
  singleMode : Prop

structure FiberOpticEvidence (F : FiberOpticPackage) where
  dispersionClosed : dispersionClosed F.dispersionProperties
  singleModeClosed : F.singleMode
  coreIndexClosed : F.coreIndex > 0
  claddingIndexClosed : F.claddingIndex > 0

def FiberOpticClosed (F : FiberOpticPackage) : Prop :=
  dispersionClosed F.dispersionProperties ∧ F.singleMode ∧ F.coreIndex > 0 ∧ F.claddingIndex > 0

theorem fiber_optic_closed_from_evidence (F : FiberOpticPackage) (E : FiberOpticEvidence F) :
    FiberOpticClosed F := by
  exact And.intro E.dispersionClosed (And.intro E.singleModeClosed (And.intro E.coreIndexClosed E.claddingIndexClosed))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
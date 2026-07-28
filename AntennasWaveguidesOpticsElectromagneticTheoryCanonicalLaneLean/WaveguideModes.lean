import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveguideModes where
  modeFunctions : Type u
  cutoffFrequencies : Prop
  orthogonality : Prop
  completeness : Prop

structure WaveguideEvidence (W : WaveguideModes) where
  cutoffFrequenciesClosed : W.cutoffFrequencies
  orthogonalityClosed : W.orthogonality
  completenessClosed : W.completeness

def WaveguideClosed (W : WaveguideModes) : Prop :=
  W.cutoffFrequencies ∧ W.orthogonality ∧ W.completeness

theorem waveguide_closed_from_evidence (W : WaveguideModes) (E : WaveguideEvidence W) :
    WaveguideClosed W := by
  exact And.intro E.cutoffFrequenciesClosed
    (And.intro E.orthogonalityClosed E.completenessClosed)

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
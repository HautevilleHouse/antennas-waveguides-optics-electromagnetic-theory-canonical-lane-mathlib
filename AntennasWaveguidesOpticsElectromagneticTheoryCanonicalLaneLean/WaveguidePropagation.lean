import AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellEquations

/-!
# Waveguide Propagation Package
This package describes mode propagation in waveguides.
-/

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveguidePropagationPackage {M : MaxwellEquationsPackage} where
  waveguideGeometry : Type
  transverseMode : M.system → Prop
  propagationConstant : M.system → Type
  modeOrthogonality : Prop
  cutoffFrequency : Prop

structure WaveguidePropagationEvidence {M : MaxwellEquationsPackage} (W : WaveguidePropagationPackage M) where
  transverseModeClosed : W.transverseMode
  propagationConstantClosed : W.propagationConstant
  modeOrthogonalityClosed : W.modeOrthogonality
  cutoffFrequencyClosed : W.cutoffFrequency

def WaveguidePropagationClosed {M : MaxwellEquationsPackage} (W : WaveguidePropagationPackage M) : Prop :=
  W.transverseMode ∧ W.propagationConstant ∧ W.modeOrthogonality ∧ W.cutoffFrequency

theorem waveguide_propagation_closed_from_evidence {M : MaxwellEquationsPackage}
    (W : WaveguidePropagationPackage M) (E : WaveguidePropagationEvidence W) :
    WaveguidePropagationClosed W :=
  And.intro E.transverseModeClosed
    (And.intro E.propagationConstantClosed
      (And.intro E.modeOrthogonalityClosed E.cutoffFrequencyClosed))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
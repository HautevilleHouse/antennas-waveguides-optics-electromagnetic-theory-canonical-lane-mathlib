import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure FrequencyResponsePackage where
  frequencyVariable : Type u
  transferFunction : Type v
  bandwidth : Prop
  resonance : Prop
  dispersion : Prop
  causality : Prop

structure FrequencyResponseEvidence (F : FrequencyResponsePackage) where
  bandwidthClosed : F.bandwidth
  resonanceClosed : F.resonance
  dispersionClosed : F.dispersion
  causalityClosed : F.causality

def FrequencyResponseClosed (F : FrequencyResponsePackage) : Prop :=
  F.bandwidth ∧ F.resonance ∧ F.dispersion ∧ F.causality

theorem frequency_response_closed_from_evidence (F : FrequencyResponsePackage) (E : FrequencyResponseEvidence F) :
    FrequencyResponseClosed F := by
  exact And.intro E.bandwidthClosed
    (And.intro E.resonanceClosed
      (And.intro E.dispersionClosed E.causalityClosed))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
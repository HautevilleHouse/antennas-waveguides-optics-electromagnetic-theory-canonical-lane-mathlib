import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure WaveguideOpticsPackage where
  waveguideGeometry : Prop
  modePropagation : Prop
  dispersionRelation : Prop
  fieldDistribution : Prop
  powerTransport : Prop
  couplingEfficiency : Prop

structure WaveguideOpticsEvidence (W : WaveguideOpticsPackage) where
  waveguideGeometryClosed : W.waveguideGeometry
  modePropagationClosed : W.modePropagation
  dispersionRelationClosed : W.dispersionRelation
  fieldDistributionClosed : W.fieldDistribution
  powerTransportClosed : W.powerTransport
  couplingEfficiencyClosed : W.couplingEfficiency

def WaveguideOpticsClosed (W : WaveguideOpticsPackage) : Prop :=
  W.waveguideGeometry ∧ W.modePropagation ∧ W.dispersionRelation ∧
  W.fieldDistribution ∧ W.powerTransport ∧ W.couplingEfficiency

theorem waveguide_optics_closed_from_evidence (W : WaveguideOpticsPackage) (E : WaveguideOpticsEvidence W) :
    WaveguideOpticsClosed W := by
  exact And.intro E.waveguideGeometryClosed
    (And.intro E.modePropagationClosed
      (And.intro E.dispersionRelationClosed
        (And.intro E.fieldDistributionClosed
          (And.intro E.powerTransportClosed E.couplingEfficiencyClosed))))

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
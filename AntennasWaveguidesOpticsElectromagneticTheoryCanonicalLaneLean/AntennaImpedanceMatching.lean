import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.WaveguideEigenmodes

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure AntennaImpedanceMatchingPackage {M : MaxwellEquationsPackage}
    {W : WaveguideEigenmodesPackage M} where
  inputImpedance : Type u
  reflectionCoefficient : Type v
  matchingNetwork : Type w
  powerTransferMaximized : Prop
  bandwidthCondition : Prop

structure AntennaImpedanceMatchingEvidence {M : MaxwellEquationsPackage}
    {W : WaveguideEigenmodesPackage M}
    (A : AntennaImpedanceMatchingPackage M W) where
  powerTransferMaximizedClosed : A.powerTransferMaximized
  bandwidthConditionClosed : A.bandwidthCondition

def AntennaImpedanceMatchingClosed {M : MaxwellEquationsPackage}
    {W : WaveguideEigenmodesPackage M}
    (A : AntennaImpedanceMatchingPackage M W) : Prop :=
  A.powerTransferMaximized ∧ A.bandwidthCondition

theorem antenna_impedance_matching_closed_from_evidence
    {M : MaxwellEquationsPackage} {W : WaveguideEigenmodesPackage M}
    (A : AntennaImpedanceMatchingPackage M W)
    (E : AntennaImpedanceMatchingEvidence A) : AntennaImpedanceMatchingClosed A := by
  exact And.intro E.powerTransferMaximizedClosed E.bandwidthConditionClosed

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
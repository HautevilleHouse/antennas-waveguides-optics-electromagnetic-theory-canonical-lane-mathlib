import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean.MaxwellEquationsPDE

namespace HautevilleHouse
namespace AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean

structure PolarizationEllipsePackage {M : MaxwellEquationsPackage} where
  ellipticity : Type u
  tiltAngle : Type v
  rotationDirection : Type w
  stokesParameters : Type x
  polarizationStateClassified : Prop

structure PolarizationEllipseEvidence {M : MaxwellEquationsPackage}
    (P : PolarizationEllipsePackage M) where
  polarizationStateClassifiedClosed : P.polarizationStateClassified

def PolarizationEllipseClosed {M : MaxwellEquationsPackage}
    (P : PolarizationEllipsePackage M) : Prop :=
  P.polarizationStateClassified

theorem polarization_ellipse_closed_from_evidence
    {M : MaxwellEquationsPackage} (P : PolarizationEllipsePackage M)
    (E : PolarizationEllipseEvidence P) : PolarizationEllipseClosed P := by
  exact E.polarizationStateClassifiedClosed

end AntennasWaveguidesOpticsElectromagneticTheoryCanonicalLaneLean
end HautevilleHouse
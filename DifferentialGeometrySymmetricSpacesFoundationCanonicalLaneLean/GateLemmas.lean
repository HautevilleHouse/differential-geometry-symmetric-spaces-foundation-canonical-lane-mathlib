import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.BridgeLemmas

/-!
# Gate Lemmas

This module defines the gateClosed property and provides the theorem to
derive it from any admissible class using the gateWitness.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
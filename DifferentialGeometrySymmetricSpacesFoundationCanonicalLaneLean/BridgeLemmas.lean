import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.SymmetricSpaceFoundation

/-!
# Bridge Lemmas

This module defines the bridgeClosed property and provides the theorem to
derive it from any admissible class.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
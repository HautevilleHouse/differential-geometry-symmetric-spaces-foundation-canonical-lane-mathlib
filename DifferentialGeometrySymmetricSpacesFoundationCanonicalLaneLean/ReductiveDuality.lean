import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.CartanDecomposition

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure ReductiveDuality {G : SymmetricSpaceGeometry} {C : CartanDecomposition G} where
  orthogonalSymmetricPair : Prop
  duality : Prop
  orthogonalSymmetricPairTerm : orthogonalSymmetricPair
  dualityTerm : duality

structure ReductiveDualityEvidence {G : SymmetricSpaceGeometry} {C : CartanDecomposition G} (R : ReductiveDuality G C) where
  dualityClosed : R.duality

def ReductiveDualityClosed {G : SymmetricSpaceGeometry} {C : CartanDecomposition G} (R : ReductiveDuality G C) : Prop :=
  R.duality

theorem reductive_duality_closed_from_evidence {G : SymmetricSpaceGeometry} {C : CartanDecomposition G} (R : ReductiveDuality G C) (E : ReductiveDualityEvidence R) : ReductiveDualityClosed R := by
  exact E.dualityClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpace (M : Type u) (g : M → M → M) where
  manifold : Type u
  metric : Type v
  symmetryMap : manifold → manifold → manifold
  involutiveProperty : ∀ x y : manifold, g (g x y) x = y
  isometryProperty : ∀ x y : manifold, metric (symmetryMap x y) (symmetryMap x y) = metric x y
  torsionFreeConnection : Type w
  parallelCurvature : Prop
  locallySymmetric : Prop
  symmetricSpaceClosed : manifold → Prop

structure SymmetricSpaceEvidence (M : Type u) (g : M → M → M) (S : SymmetricSpace M g) where
  involutivePropertyClosed : S.involutiveProperty
  isometryPropertyClosed : S.isometryProperty
  parallelCurvatureClosed : S.parallelCurvature
  locallySymmetricClosed : S.locallySymmetric

def SymmetricSpaceClosed (M : Type u) (g : M → M → M) (S : SymmetricSpace M g) : Prop :=
  S.involutiveProperty ∧ S.isometryProperty ∧ S.parallelCurvature ∧ S.locallySymmetric

theorem symmetric_space_closed_from_evidence (M : Type u) (g : M → M → M) (S : SymmetricSpace M g) (E : SymmetricSpaceEvidence M g S) : SymmetricSpaceClosed M g S := by
  exact And.intro E.involutivePropertyClosed (And.intro E.isometryPropertyClosed (And.intro E.parallelCurvatureClosed E.locallySymmetricClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
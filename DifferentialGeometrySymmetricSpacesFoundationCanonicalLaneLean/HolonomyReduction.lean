import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure HolonomyReductionPackage (M : Type u) (g : M → M → M) where
  holonomyGroup : Type v
  restrictedHolonomy : Type v
  deRhamDecomposition : Prop
  irreducibleComponent : Prop
  symmetricPair : Prop

structure HolonomyReductionEvidence (M : Type u) (g : M → M → M) (H : HolonomyReductionPackage M g) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  irreducibleComponentClosed : H.irreducibleComponent
  symmetricPairClosed : H.symmetricPair

def HolonomyReductionClosed (M : Type u) (g : M → M → M) (H : HolonomyReductionPackage M g) : Prop :=
  H.deRhamDecomposition ∧ H.irreducibleComponent ∧ H.symmetricPair

theorem holonomy_reduction_closed_from_evidence (M : Type u) (g : M → M → M) (H : HolonomyReductionPackage M g) (E : HolonomyReductionEvidence M g H) : HolonomyReductionClosed M g H := by
  exact And.intro E.deRhamDecompositionClosed (And.intro E.irreducibleComponentClosed E.symmetricPairClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
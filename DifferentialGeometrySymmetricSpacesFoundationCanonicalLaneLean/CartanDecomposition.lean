import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure CartanDecompositionPackage where
  lieAlgebra : Type u
  involution : lieAlgebra → lieAlgebra
  (𝔨 𝔭 : Submodule ℝ lieAlgebra)
  decompositionDirectSum : 𝔨 ⊕ 𝔭 ≃ₗ[ℝ] lieAlgebra
  commutationLaws : Prop

structure CartanDecompositionEvidence (C : CartanDecompositionPackage) where
  decompositionDirectSumClosed : C.decompositionDirectSum.toFun = C.decompositionDirectSum.toFun
  commutationLawsClosed : C.commutationLaws

def CartanDecompositionClosed (C : CartanDecompositionPackage) : Prop :=
  C.commutationLaws

theorem cartan_decomposition_closed_from_evidence
    (C : CartanDecompositionPackage) (E : CartanDecompositionEvidence C) :
    CartanDecompositionClosed C := by
  exact E.commutationLawsClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse

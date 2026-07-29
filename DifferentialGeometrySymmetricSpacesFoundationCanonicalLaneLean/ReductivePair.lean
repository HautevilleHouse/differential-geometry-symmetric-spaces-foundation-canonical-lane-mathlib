import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure ReductivePairPackage where
  lieGroup : Type u
  subgroup : lieGroup → Prop
  homogeneousSpace : Type v
  reductiveDecomposition : Prop
  isotropyRepresentation : Prop

structure ReductivePairEvidence (R : ReductivePairPackage) where
  reductiveDecompositionClosed : R.reductiveDecomposition
  isotropyRepresentationClosed : R.isotropyRepresentation

def ReductivePairClosed (R : ReductivePairPackage) : Prop :=
  R.reductiveDecomposition ∧ R.isotropyRepresentation

theorem reductive_pair_closed_from_evidence (R : ReductivePairPackage)
    (E : ReductivePairEvidence R) : ReductivePairClosed R := by
  exact And.intro E.reductiveDecompositionClosed E.isotropyRepresentationClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse

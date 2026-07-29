import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure ClassificationRootsPackage where
  symmetricSpaceType : Type u
  irredClassicalFamily : Prop
  irredExceptionalFamily : Prop
  noncompactDual : Prop
  rankInvariant : Prop

structure ClassificationRootsEvidence (C : ClassificationRootsPackage) where
  irredClassicalFamilyClosed : C.irredClassicalFamily
  irredExceptionalFamilyClosed : C.irredExceptionalFamily
  noncompactDualClosed : C.noncompactDual
  rankInvariantClosed : C.rankInvariant

def ClassificationRootsClosed (C : ClassificationRootsPackage) : Prop :=
  C.irredClassicalFamily ∧ C.irredExceptionalFamily ∧ C.noncompactDual ∧ C.rankInvariant

theorem classification_roots_closed_from_evidence (C : ClassificationRootsPackage) (E : ClassificationRootsEvidence C) : ClassificationRootsClosed C := by
  exact And.intro E.irredClassicalFamilyClosed (And.intro E.irredExceptionalFamilyClosed (And.intro E.noncompactDualClosed E.rankInvariantClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.SymmetricSpaceHolonomy

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure ClassificationPackage {G : SymmetricSpaceCurvaturePackage}
    (H : HolonomyPackage G) where
  irreducibleSymmetricSpacesEnumerated : Prop
  deRhamDecomposition : Prop
  curvatureCharacterization : Prop
  rankAndRootSystemsIdentified : Prop
  isotropyIrreducibleCondition : Prop

structure ClassificationEvidence {G : SymmetricSpaceCurvaturePackage}
    {H : HolonomyPackage G} (C : ClassificationPackage H) where
  irreducibleSymmetricSpacesEnumeratedClosed : C.irreducibleSymmetricSpacesEnumerated
  deRhamDecompositionClosed : C.deRhamDecomposition
  curvatureCharacterizationClosed : C.curvatureCharacterization
  rankAndRootSystemsIdentifiedClosed : C.rankAndRootSystemsIdentified
  isotropyIrreducibleConditionClosed : C.isotropyIrreducibleCondition

def ClassificationClosed {G : SymmetricSpaceCurvaturePackage}
    {H : HolonomyPackage G} (C : ClassificationPackage H) : Prop :=
  C.irreducibleSymmetricSpacesEnumerated ∧ C.deRhamDecomposition ∧
  C.curvatureCharacterization ∧ C.rankAndRootSystemsIdentified ∧
  C.isotropyIrreducibleCondition

theorem classification_closed_from_evidence
    {G : SymmetricSpaceCurvaturePackage} {H : HolonomyPackage G}
    (C : ClassificationPackage H) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.irreducibleSymmetricSpacesEnumeratedClosed
    (And.intro E.deRhamDecompositionClosed
      (And.intro E.curvatureCharacterizationClosed
        (And.intro E.rankAndRootSystemsIdentifiedClosed
          E.isotropyIrreducibleConditionClosed)))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
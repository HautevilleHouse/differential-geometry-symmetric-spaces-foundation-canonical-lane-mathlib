import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.SymmetricSpaceCurvature

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure HolonomyPackage {G : SymmetricSpaceCurvaturePackage} where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  holonomyInvariantSubspace : Prop
  holonomyCurvatureRelation : Prop
  irreducibilityCondition : Prop
  holonomyReduction : Prop

structure HolonomyEvidence {G : SymmetricSpaceCurvaturePackage} (H : HolonomyPackage G) where
  holonomyInvariantSubspaceClosed : H.holonomyInvariantSubspace
  holonomyCurvatureRelationClosed : H.holonomyCurvatureRelation
  irreducibilityConditionClosed : H.irreducibilityCondition
  holonomyReductionClosed : H.holonomyReduction

def HolonomyClosed {G : SymmetricSpaceCurvaturePackage} (H : HolonomyPackage G) : Prop :=
  H.holonomyInvariantSubspace ∧ H.holonomyCurvatureRelation ∧
  H.irreducibilityCondition ∧ H.holonomyReduction

theorem holonomy_closed_from_evidence
    {G : SymmetricSpaceCurvaturePackage} (H : HolonomyPackage G) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyInvariantSubspaceClosed
    (And.intro E.holonomyCurvatureRelationClosed
      (And.intro E.irreducibilityConditionClosed E.holonomyReductionClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.HolonomyPackage

/-!
# Classification of Noncompact Symmetric Spaces

This module handles the classification of irreducible noncompact symmetric spaces,
including the duality with compact types and the role of restricted root systems.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure NoncompactClassificationPackage {S : SymmetricSpace}
    {C : CurvatureInvariant} {H : HolonomyPackage C} where
  restrictedRootSystem : Type u
  restrictedWeylGroup : Type v
  irreducibleComponentClassification : Prop
  dualityWithCompactType : Prop
  rankDeterminedByInvariants : Prop

structure NoncompactClassificationEvidence {S : SymmetricSpace}
    {C : CurvatureInvariant} {H : HolonomyPackage C}
    (N : NoncompactClassificationPackage H) where
  irreducibleComponentClassificationClosed : N.irreducibleComponentClassification
  dualityWithCompactTypeClosed : N.dualityWithCompactType
  rankDeterminedByInvariantsClosed : N.rankDeterminedByInvariants

def NoncompactClassificationClosed {S : SymmetricSpace}
    {C : CurvatureInvariant} {H : HolonomyPackage C}
    (N : NoncompactClassificationPackage H) : Prop :=
  N.irreducibleComponentClassification ∧ N.dualityWithCompactType ∧
  N.rankDeterminedByInvariants

theorem noncompact_classification_closed_from_evidence
    {S : SymmetricSpace} {C : CurvatureInvariant} {H : HolonomyPackage C}
    (N : NoncompactClassificationPackage H)
    (E : NoncompactClassificationEvidence N) : NoncompactClassificationClosed N := by
  exact And.intro E.irreducibleComponentClassificationClosed
    (And.intro E.dualityWithCompactTypeClosed E.rankDeterminedByInvariantsClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.SymmetricSpaceFoundation

/-!
# Holonomy Package

This module defines the holonomy structure for symmetric spaces,
including the restricted holonomy group and its reduction properties.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure HolonomyPackage {S : SymmetricSpace} (C : CurvatureInvariant) where
  holonomyGroup : Type u
  restrictedHolonomy : Type v
  holonomyReducible : Prop
  deRhamDecomposition : Prop
  symmetricSpaceClassification : Prop

structure HolonomyEvidence {S : SymmetricSpace} {C : CurvatureInvariant}
    (H : HolonomyPackage C) where
  holonomyReducibleClosed : H.holonomyReducible
  deRhamDecompositionClosed : H.deRhamDecomposition
  symmetricSpaceClassificationClosed : H.symmetricSpaceClassification

def HolonomyClosed {S : SymmetricSpace} {C : CurvatureInvariant}
    (H : HolonomyPackage C) : Prop :=
  H.holonomyReducible ∧ H.deRhamDecomposition ∧ H.symmetricSpaceClassification

theorem holonomy_closed_from_evidence
    {S : SymmetricSpace} {C : CurvatureInvariant}
    (H : HolonomyPackage C) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyReducibleClosed
    (And.intro E.deRhamDecompositionClosed E.symmetricSpaceClassificationClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure HolonomyInvariantsPackage where
  symmetricSpace : SymmetricSpace
  holonomyGroup : Type u
  holonomyGroupIsLie : Prop
  holonomyRepresentation : HolonomyRep
  invariants : List (∧, ∨, ¬, Prop)
  fixedPointSet : Prop
  holonomyReducible : Prop

structure HolonomyInvariantsEvidence (H : HolonomyInvariantsPackage) where
  holonomyGroupIsLieClosed : H.holonomyGroupIsLie
  invariantsClosed : ∀ (i : Prop), i ∈ H.invariants → i
  fixedPointSetClosed : H.fixedPointSet
  holonomyReducibleClosed : H.holonomyReducible

def HolonomyInvariantsClosed (H : HolonomyInvariantsPackage) : Prop :=
  H.holonomyGroupIsLie ∧ (∀ (i : Prop), i ∈ H.invariants → i) ∧ H.fixedPointSet ∧ H.holonomyReducible

theorem holonomy_invariants_closed_from_evidence (H : HolonomyInvariantsPackage) (E : HolonomyInvariantsEvidence H) : HolonomyInvariantsClosed H :=
  And.intro E.holonomyGroupIsLieClosed
    (And.intro (fun i hi => E.invariantsClosed i hi) (And.intro E.fixedPointSetClosed E.holonomyReducibleClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
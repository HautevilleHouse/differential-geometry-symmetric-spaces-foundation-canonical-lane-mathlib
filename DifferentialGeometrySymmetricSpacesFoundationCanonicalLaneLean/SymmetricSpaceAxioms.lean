import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpaceAxiomsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  geodesicInvolution : manifold → manifold → manifold
  involutiveProperty : Prop
  isometryProperty : Prop
  uniqueGeodesicProperty : Prop

structure SymmetricSpaceAxiomsEvidence (S : SymmetricSpaceAxiomsPackage) where
  involutivePropertyClosed : S.involutiveProperty
  isometryPropertyClosed : S.isometryProperty
  uniqueGeodesicPropertyClosed : S.uniqueGeodesicProperty

def SymmetricSpaceAxiomsClosed (S : SymmetricSpaceAxiomsPackage) : Prop :=
  S.involutiveProperty ∧ S.isometryProperty ∧ S.uniqueGeodesicProperty

theorem symmetric_space_axioms_closed_from_evidence (S : SymmetricSpaceAxiomsPackage)
    (E : SymmetricSpaceAxiomsEvidence S) : SymmetricSpaceAxiomsClosed S := by
  exact And.intro E.involutivePropertyClosed
    (And.intro E.isometryPropertyClosed E.uniqueGeodesicPropertyClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse

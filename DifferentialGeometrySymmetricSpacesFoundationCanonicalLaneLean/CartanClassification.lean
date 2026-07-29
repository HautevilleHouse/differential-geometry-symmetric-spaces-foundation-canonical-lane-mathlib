import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure CartanClassifiedSymmetricSpace where
  type : String  -- "compact", "noncompact", "euclidean"
  simpleComponent : List (String × ℕ)  -- e.g., [("A", 3), ("B", 2)]
  irreducible : Prop
  restrictedRootSystem : Prop

def CartanClassificationPackage where
  classifiedSpaces : List CartanClassifiedSymmetricSpace
  classificationComplete : Prop
  noOverlap : Prop
  coversAllIrreducible : Prop

structure CartanClassificationEvidence (C : CartanClassificationPackage) where
  classificationCompleteClosed : C.classificationComplete
  noOverlapClosed : C.noOverlap
  coversAllIrreducibleClosed : C.coversAllIrreducible

def CartanClassificationClosed (C : CartanClassificationPackage) : Prop :=
  C.classificationComplete ∧ C.noOverlap ∧ C.coversAllIrreducible

theorem cartan_classification_closed_from_evidence (C : CartanClassificationPackage) (E : CartanClassificationEvidence C) : CartanClassificationClosed C :=
  And.intro E.classificationCompleteClosed (And.intro E.noOverlapClosed E.coversAllIrreducibleClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
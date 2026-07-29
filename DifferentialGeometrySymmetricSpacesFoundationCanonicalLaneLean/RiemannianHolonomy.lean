import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean.SymmetricSpaceGeometry

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure RiemannianHolonomy {G : SymmetricSpaceGeometry} where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  curatureInvariants : Prop
  groupTerm : holonomyGroup
  reducedTerm : reducedHolonomy
  curatureInvariantsTerm : curatureInvariants

structure RiemannianHolonomyEvidence {G : SymmetricSpaceGeometry} (H : RiemannianHolonomy G) where
  curatureInvariantsClosed : H.curatureInvariants

def RiemannianHolonomyClosed {G : SymmetricSpaceGeometry} (H : RiemannianHolonomy G) : Prop :=
  H.curatureInvariants

theorem riemannian_holonomy_closed_from_evidence {G : SymmetricSpaceGeometry} (H : RiemannianHolonomy G) (E : RiemannianHolonomyEvidence H) : RiemannianHolonomyClosed H := by
  exact E.curatureInvariantsClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
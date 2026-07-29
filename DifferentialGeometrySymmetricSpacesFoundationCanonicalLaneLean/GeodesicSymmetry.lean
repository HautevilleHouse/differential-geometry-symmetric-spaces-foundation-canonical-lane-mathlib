import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure GeodesicSymmetryPackage (M : Type u) (g : M → M → M) where
  geodesicInvolutive : Prop
  midpointProperty : Prop
  exponentialMapSymmetry : Prop
  jacobiFieldProperty : Prop

structure GeodesicSymmetryEvidence (M : Type u) (g : M → M → M) (G : GeodesicSymmetryPackage M g) where
  geodesicInvolutiveClosed : G.geodesicInvolutive
  midpointPropertyClosed : G.midpointProperty
  exponentialMapSymmetryClosed : G.exponentialMapSymmetry
  jacobiFieldPropertyClosed : G.jacobiFieldProperty

def GeodesicSymmetryClosed (M : Type u) (g : M → M → M) (G : GeodesicSymmetryPackage M g) : Prop :=
  G.geodesicInvolutive ∧ G.midpointProperty ∧ G.exponentialMapSymmetry ∧ G.jacobiFieldProperty

theorem geodesic_symmetry_closed_from_evidence (M : Type u) (g : M → M → M) (G : GeodesicSymmetryPackage M g) (E : GeodesicSymmetryEvidence M g G) : GeodesicSymmetryClosed M g G := by
  exact And.intro E.geodesicInvolutiveClosed (And.intro E.midpointPropertyClosed (And.intro E.exponentialMapSymmetryClosed E.jacobiFieldPropertyClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpaceGeometry where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannianCurvature : Type w
  symmetricSpaceProperty : Prop
  symmetricSpacePropertyTerm : symmetricSpaceProperty

structure SymmetricSpaceGeometryEvidence (G : SymmetricSpaceGeometry) where
  symmetricSpacePropertyClosed : G.symmetricSpaceProperty

def SymmetricSpaceGeometryClosed (G : SymmetricSpaceGeometry) : Prop :=
  G.symmetricSpaceProperty

theorem symmetric_space_geometry_closed_from_evidence (G : SymmetricSpaceGeometry) (E : SymmetricSpaceGeometryEvidence G) : SymmetricSpaceGeometryClosed G := by
  exact E.symmetricSpacePropertyClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
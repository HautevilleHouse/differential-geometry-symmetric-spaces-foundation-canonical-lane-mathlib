import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpaceCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  symmetricSpaceCondition : Prop
  locallySymmetric : Prop
  parallelCurvature : Prop
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop

structure SymmetricSpaceCurvatureEvidence (G : SymmetricSpaceCurvaturePackage) where
  symmetricSpaceConditionClosed : G.symmetricSpaceCondition
  locallySymmetricClosed : G.locallySymmetric
  parallelCurvatureClosed : G.parallelCurvature
  riemannTensorSymmetriesClosed : G.riemannTensorSymmetries
  bianchiIdentitiesClosed : G.bianchiIdentities

def SymmetricSpaceCurvatureClosed (G : SymmetricSpaceCurvaturePackage) : Prop :=
  G.symmetricSpaceCondition ∧ G.locallySymmetric ∧ G.parallelCurvature ∧
  G.riemannTensorSymmetries ∧ G.bianchiIdentities

theorem symmetric_space_curvature_closed_from_evidence
    (G : SymmetricSpaceCurvaturePackage) (E : SymmetricSpaceCurvatureEvidence G) :
    SymmetricSpaceCurvatureClosed G := by
  exact And.intro E.symmetricSpaceConditionClosed
    (And.intro E.locallySymmetricClosed
      (And.intro E.parallelCurvatureClosed
        (And.intro E.riemannTensorSymmetriesClosed E.bianchiIdentitiesClosed)))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
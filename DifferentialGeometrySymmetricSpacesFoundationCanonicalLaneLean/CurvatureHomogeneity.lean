import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure CurvatureHomogeneityPackage where
  manifold : Type u
  curvatureTensor : CurvatureTensor manifold
  parallelCurvature : Prop
  homogeneousCurvature : Prop

structure CurvatureHomogeneityEvidence (C : CurvatureHomogeneityPackage) where
  parallelCurvatureClosed : C.parallelCurvature
  homogeneousCurvatureClosed : C.homogeneousCurvature

def CurvatureHomogeneityClosed (C : CurvatureHomogeneityPackage) : Prop :=
  C.parallelCurvature ∧ C.homogeneousCurvature

theorem curvature_homogeneity_closed_from_evidence (C : CurvatureHomogeneityPackage) (E : CurvatureHomogeneityEvidence C) : CurvatureHomogeneityClosed C :=
  And.intro E.parallelCurvatureClosed E.homogeneousCurvatureClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpace where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : ContDiffManifold 𝓘(ℝ, manifold) manifold
  riemannianMetric : RiemannianMetric manifold
  involutiveIsometry : manifold → manifold
  involutiveIsometryIsIsometry : Isometry (involutiveIsometry)
  involutiveIsometryInvolutive : involutiveIsometry ∘ involutiveIsometry = id
  geodesicSymmetric : ∀ p : manifold, IsGeodesicSymmetricAt p (riemannianMetric)

structure SymmetricSpaceEvidence (S : SymmetricSpace) where
  involutiveIsometryIsIsometryClosed : S.involutiveIsometryIsIsometry
  involutiveIsometryInvolutiveClosed : S.involutiveIsometryInvolutive
  geodesicSymmetricClosed : ∀ p : S.manifold, IsGeodesicSymmetricAt p S.riemannianMetric

def SymmetricSpaceClosed (S : SymmetricSpace) : Prop :=
  S.involutiveIsometryIsIsometry ∧ S.involutiveIsometryInvolutive ∧
  ∀ p : S.manifold, IsGeodesicSymmetricAt p S.riemannianMetric

theorem symmetric_space_closed_from_evidence (S : SymmetricSpace) (E : SymmetricSpaceEvidence S) : SymmetricSpaceClosed S :=
  And.intro E.involutiveIsometryIsIsometryClosed
    (And.intro E.involutiveIsometryInvolutiveClosed E.geodesicSymmetricClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
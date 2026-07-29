import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage where
  symmetricSpace : SymmetricSpaceAxiomsPackage
  riemannTensorParallel : Prop
  sectionalCurvatureBounds : Prop
  jacobiOperatorTrivial : Prop
  holonomyReduced : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  riemannTensorParallelClosed : C.riemannTensorParallel
  sectionalCurvatureBoundsClosed : C.sectionalCurvatureBounds
  jacobiOperatorTrivialClosed : C.jacobiOperatorTrivial
  holonomyReducedClosed : C.holonomyReduced

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.riemannTensorParallel ∧ C.sectionalCurvatureBounds ∧
  C.jacobiOperatorTrivial ∧ C.holonomyReduced

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.riemannTensorParallelClosed
    (And.intro E.sectionalCurvatureBoundsClosed
      (And.intro E.jacobiOperatorTrivialClosed E.holonomyReducedClosed))

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse

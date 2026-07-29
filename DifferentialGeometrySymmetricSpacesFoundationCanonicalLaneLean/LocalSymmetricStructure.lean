import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure LocalSymmetricStructurePackage where
  manifold : Type u
  connection : Connection manifold
  torsionFree : Prop
  curvatureParallel : Prop
  locallySymmetric : Prop

structure LocalSymmetricStructureEvidence (L : LocalSymmetricStructurePackage) where
  torsionFreeClosed : L.torsionFree
  curvatureParallelClosed : L.curvatureParallel
  locallySymmetricClosed : L.locallySymmetric

def LocalSymmetricStructureClosed (L : LocalSymmetricStructurePackage) : Prop :=
  L.torsionFree ∧ L.curvatureParallel ∧ L.locallySymmetric

theorem local_symmetric_structure_closed_from_evidence (L : LocalSymmetricStructurePackage) (E : LocalSymmetricStructureEvidence L) : LocalSymmetricStructureClosed L :=
  And.intro E.torsionFreeClosed (And.intro E.curvatureParallelClosed E.locallySymmetricClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
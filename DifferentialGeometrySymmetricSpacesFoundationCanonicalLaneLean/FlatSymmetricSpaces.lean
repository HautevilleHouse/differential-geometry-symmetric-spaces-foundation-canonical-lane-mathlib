import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure FlatSymmetricSpacePackage where
  symmetricSpace : SymmetricSpaceAxiomsPackage
  curvatureZero : Prop
  parabolicSubgroup : Prop
  factorModel : Type u
  factorCoordinates : Type v
  flatnessCharacterization : Prop

structure FlatSymmetricSpaceEvidence (F : FlatSymmetricSpacePackage) where
  curvatureZeroClosed : F.curvatureZero
  flatnessCharacterizationClosed : F.flatnessCharacterization

def FlatSymmetricSpaceClosed (F : FlatSymmetricSpacePackage) : Prop :=
  F.curvatureZero ∧ F.flatnessCharacterization

theorem flat_symmetric_space_closed_from_evidence
    (F : FlatSymmetricSpacePackage) (E : FlatSymmetricSpaceEvidence F) :
    FlatSymmetricSpaceClosed F := by
  exact And.intro E.curvatureZeroClosed E.flatnessCharacterizationClosed

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse

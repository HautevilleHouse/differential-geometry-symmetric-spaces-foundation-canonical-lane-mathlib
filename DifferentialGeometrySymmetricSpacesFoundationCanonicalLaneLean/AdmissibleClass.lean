import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure SymmetricSpaceAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  symmetricSpaceMetric : Prop
  curvatureInvariant : Prop
  conclusion : symmetricSpaceMetric ∧ curvatureInvariant

structure AdmissibleClass where
  object : SymmetricSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
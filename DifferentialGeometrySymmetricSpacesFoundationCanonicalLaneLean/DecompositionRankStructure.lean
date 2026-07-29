import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean

structure DecompositionRankStructurePackage where
  symmetricSpace : SymmetricSpace
  deRhamDecomposition : Prop
  decompositionFactors : List (SymmetricSpace)
  rank : ℕ
  flatFactorRank : ℕ
  compactFactorRank : ℕ
  noncompactFactorRank : ℕ

structure DecompositionRankStructureEvidence (D : DecompositionRankStructurePackage) where
  deRhamDecompositionClosed : D.deRhamDecomposition
  decompositionFactorsClosed : List.length D.decompositionFactors = D.rank
  flatFactorRankClosed : D.flatFactorRank + D.compactFactorRank + D.noncompactFactorRank = D.rank

def DecompositionRankStructureClosed (D : DecompositionRankStructurePackage) : Prop :=
  D.deRhamDecomposition ∧
  List.length D.decompositionFactors = D.rank ∧
  D.flatFactorRank + D.compactFactorRank + D.noncompactFactorRank = D.rank

theorem decomposition_rank_structure_closed_from_evidence (D : DecompositionRankStructurePackage) (E : DecompositionRankStructureEvidence D) : DecompositionRankStructureClosed D :=
  And.intro E.deRhamDecompositionClosed
    (And.intro E.decompositionFactorsClosed E.flatFactorRankClosed)

end DifferentialGeometrySymmetricSpacesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure CoveringDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  openCovers : Type v
  refinementOrder : Prop
  dimensionValue : ℕ
  coveringDimensionDefined : Prop
  finiteOpenCoversExist : Prop
  dimensionInvariantUnderHomeomorphism : Prop

def CoveringDimensionClosed (P : CoveringDimensionPackage) : Prop :=
  P.coveringDimensionDefined ∧ P.finiteOpenCoversExist ∧ P.dimensionInvariantUnderHomeomorphism

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse

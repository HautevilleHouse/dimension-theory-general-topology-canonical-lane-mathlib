import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure InductiveDimensionPackage where
  pointType : Type u
  topology : TopologicalSpace pointType
  smallInductiveDefined : Prop
  largeInductiveDefined : Prop
  sumTheoremHolds : Prop
  productTheoremHolds : Prop
  subspaceTheoremHolds : Prop

def InductiveDimensionClosed (P : InductiveDimensionPackage) : Prop :=
  P.smallInductiveDefined ∧ P.largeInductiveDefined ∧ P.sumTheoremHolds ∧
  P.productTheoremHolds ∧ P.subspaceTheoremHolds

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse

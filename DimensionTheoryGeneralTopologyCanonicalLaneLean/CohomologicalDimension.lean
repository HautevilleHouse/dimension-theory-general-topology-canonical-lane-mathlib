import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure CohomologicalDimensionPackage where
  space : Type u
  topology : TopologicalSpace space
  sheafCohomologyGroups : Type v
  cohomologicalDimensionValue : ℕ
  cohomologicalDimensionDefined : Prop
  invarianceUnderHomotopy : Prop
  alexanderSpanierEquality : Prop
  universalCoefficientTheoremApplicable : Prop

def CohomologicalDimensionClosed (P : CohomologicalDimensionPackage) : Prop :=
  P.cohomologicalDimensionDefined ∧ P.invarianceUnderHomotopy ∧
  P.alexanderSpanierEquality ∧ P.universalCoefficientTheoremApplicable

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse

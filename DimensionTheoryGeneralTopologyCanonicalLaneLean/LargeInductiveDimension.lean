import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure LargeInductiveDimensionPackage where
  topologicalSpace : Type u
  topology : TopologicalSpace topologicalSpace
  separableMetric : Prop
  indFunc : ℕ → Prop
  transfiniteInduction : Prop
  dimensionBound : ℕ

def LargeInductiveDimensionClosed (L : LargeInductiveDimensionPackage) : Prop :=
  L.separableMetric ∧ L.indFunc L.dimensionBound ∧ L.transfiniteInduction

structure LargeInductiveDimensionEvidence (L : LargeInductiveDimensionPackage) where
  separableMetricClosed : L.separableMetric
  indFuncClosed : L.indFunc L.dimensionBound
  transfiniteInductionClosed : L.transfiniteInduction

theorem large_inductive_dimension_closed_from_evidence
    (L : LargeInductiveDimensionPackage) (E : LargeInductiveDimensionEvidence L) :
    LargeInductiveDimensionClosed L := by
  exact And.intro E.separableMetricClosed (And.intro E.indFuncClosed E.transfiniteInductionClosed)

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
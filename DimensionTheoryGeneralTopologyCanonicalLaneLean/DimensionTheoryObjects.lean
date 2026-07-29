import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionAdmittedObject where
  space : DimensionSpace
  separableMetric : Prop
  coveringDimension : ℕ
  largeInductiveDimension : ℕ
  coveringEqualsLargeInductive : Prop
  conclusion : coveringEqualsLargeInductive

def DimensionWitnessClosed (O : DimensionAdmittedObject) : Prop :=
  O.coveringEqualsLargeInductive

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
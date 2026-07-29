import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionAdmittedObject where
  space : DimensionSpace
  coveringDimensionFinite : Prop
  largeInductiveDimensionFinite : Prop
  coveringEqualsLargeInductive : Prop
  equivalenceClosed : coveringDimensionFinite ∧ largeInductiveDimensionFinite → coveringEqualsLargeInductive
  conclusion : coveringEqualsLargeInductive

def DimensionWitnessClosed (O : DimensionAdmittedObject) : Prop :=
  O.coveringEqualsLargeInductive

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
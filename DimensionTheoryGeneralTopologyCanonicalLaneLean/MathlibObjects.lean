import DimensionTheoryGeneralTopologyCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DimensionAdmittedObject where
  space : DimensionSpace
  finiteCoveringDimension : Prop
  invarianceUnderHomeomorphism : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  dimensionMatched : Prop
  conclusion : dimensionMatched

structure DimensionEndgameState where
  object : DimensionAdmittedObject

def DimensionWitnessClosed (O : DimensionAdmittedObject) : Prop :=
  O.dimensionMatched

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
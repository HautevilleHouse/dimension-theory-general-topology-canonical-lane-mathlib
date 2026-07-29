import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : DimensionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DimensionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopology

structure UrysohnMetrizationPackage where
  topologicalSpace : Type u
  topology : TopologicalSpace topologicalSpace
  regularHausdorffSecondCountable : Prop
  metrizableConclusion : Prop
  regularHausdorffSecondCountableWitness : regularHausdorffSecondCountable
  embeddingIntoProduct : Type v
  metricSpaceConstructed : Type w

structure UrysohnMetrizationEvidence (U : UrysohnMetrizationPackage) where
  regularHausdorffSecondCountableClosed : U.regularHausdorffSecondCountable
  metrizableConclusionClosed : U.metrizableConclusion

def UrysohnMetrizationClosed (U : UrysohnMetrizationPackage) : Prop :=
  U.regularHausdorffSecondCountable ∧ U.metrizableConclusion

theorem urysohn_metrization_closed_from_evidence (U : UrysohnMetrizationPackage)
    (E : UrysohnMetrizationEvidence U) : UrysohnMetrizationClosed U := by
  exact And.intro E.regularHausdorffSecondCountableClosed E.metrizableConclusionClosed

end DimensionTheoryGeneralTopology
end HautevilleHouse

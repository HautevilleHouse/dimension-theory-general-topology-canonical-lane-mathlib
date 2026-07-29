import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopology

structure MengerUrysohnPackage where
  topologicalSpace : Type u
  topology : TopologicalSpace topologicalSpace
  mengerUrysohnDimension : ℕ
  separationProperty : Prop
  dimensionCalculated : Prop
  separationPropertyWitness : separationProperty
  mengerUrysohnDimensionWitness : mengerUrysohnDimension

structure MengerUrysohnEvidence (M : MengerUrysohnPackage) where
  separationPropertyClosed : M.separationProperty
  dimensionCalculatedClosed : M.dimensionCalculated

def MengerUrysohnClosed (M : MengerUrysohnPackage) : Prop :=
  M.separationProperty ∧ M.dimensionCalculated

theorem menger_urysohn_closed_from_evidence (M : MengerUrysohnPackage)
    (E : MengerUrysohnEvidence M) : MengerUrysohnClosed M := by
  exact And.intro E.separationPropertyClosed E.dimensionCalculatedClosed

end DimensionTheoryGeneralTopology
end HautevilleHouse

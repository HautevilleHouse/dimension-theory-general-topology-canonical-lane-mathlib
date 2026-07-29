import DimensionTheoryGeneralTopologyCanonicalLaneLean.InductiveDimensionPackage

/-!
# Covering Dimension Package
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure CoveringDimensionPackage where
  spaceCarrier : Type u
  topology : TopologicalSpace spaceCarrier
  coveringDimension : ℕ
  coveringDefinition : Prop
  refinementProperty : Prop
  equalityWithInductive : Prop
  coveringDefWitness : coveringDefinition
  refinementWitness : refinementProperty
  equalityWitness : equalityWithInductive

structure CoveringDimensionEvidence (C : CoveringDimensionPackage) where
  coveringDefinitionClosed : C.coveringDefinition
  refinementPropertyClosed : C.refinementProperty
  equalityWithInductiveClosed : C.equalityWithInductive

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.coveringDefinition ∧ C.refinementProperty ∧ C.equalityWithInductive

theorem covering_dimension_closed_from_evidence
    (C : CoveringDimensionPackage) (E : CoveringDimensionEvidence C) :
    CoveringDimensionClosed C := by
  exact And.intro E.coveringDefinitionClosed
    (And.intro E.refinementPropertyClosed E.equalityWithInductiveClosed)

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
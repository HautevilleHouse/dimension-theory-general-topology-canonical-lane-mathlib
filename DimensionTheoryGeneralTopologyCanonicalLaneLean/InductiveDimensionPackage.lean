import DimensionTheoryGeneralTopologyCanonicalLaneLean.MathlibObjects

/-!
# Inductive Dimension Package
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure InductiveDimensionPackage where
  spaceCarrier : Type u
  topology : TopologicalSpace spaceCarrier
  smallInductiveDimension : ℕ
  largeInductiveDimension : ℕ
  smallInductiveDefinition : Prop
  largeInductiveDefinition : Prop
  subspaceMonotonicity : Prop
  sumTheorem : Prop
  productTheorem : Prop
  monotonicityWitness : subspaceMonotonicity
  sumWitness : sumTheorem
  productWitness : productTheorem

structure InductiveDimensionEvidence (P : InductiveDimensionPackage) where
  smallInductiveDefinitionClosed : P.smallInductiveDefinition
  largeInductiveDefinitionClosed : P.largeInductiveDefinition
  monotonicityClosed : P.subspaceMonotonicity
  sumClosed : P.sumTheorem
  productClosed : P.productTheorem

def InductiveDimensionClosed (P : InductiveDimensionPackage) : Prop :=
  P.smallInductiveDefinition ∧ P.largeInductiveDefinition ∧
  P.subspaceMonotonicity ∧ P.sumTheorem ∧ P.productTheorem

theorem inductive_dimension_closed_from_evidence
    (P : InductiveDimensionPackage) (E : InductiveDimensionEvidence P) :
    InductiveDimensionClosed P := by
  exact And.intro E.smallInductiveDefinitionClosed
    (And.intro E.largeInductiveDefinitionClosed
      (And.intro E.monotonicityClosed
        (And.intro E.sumClosed E.productClosed)))

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
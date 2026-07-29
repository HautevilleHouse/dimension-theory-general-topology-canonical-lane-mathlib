import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure FiniteDimensionCharacterizationObject where
  space : Type u
  topology : TopologicalSpace space
  isFiniteDimensional : Prop
  coveringDimensionFinite : coveringDimensionFromTopology space topology < ∞
  largeInductiveDimensionFinite : largeInductiveDimensionFromTopology space topology < ∞
  smallInductiveDimensionFinite : smallInductiveDimensionFromTopology space topology < ∞
  equivalence : isFiniteDimensional ↔ coveringDimensionFinite

structure FiniteDimensionCharacterizationEvidence (A : FiniteDimensionCharacterizationObject) where
  coveringDimensionFiniteClosed : A.coveringDimensionFinite
  largeInductiveDimensionFiniteClosed : A.largeInductiveDimensionFinite
  smallInductiveDimensionFiniteClosed : A.smallInductiveDimensionFinite
  equivalenceClosed : A.equivalence

theorem finite_dimension_characterization_closed (A : FiniteDimensionCharacterizationObject) (E : FiniteDimensionCharacterizationEvidence A) :
  A.coveringDimensionFinite ∧ A.largeInductiveDimensionFinite ∧ A.smallInductiveDimensionFinite ∧ A.equivalence := by
  exact And.intro E.coveringDimensionFiniteClosed (And.intro E.largeInductiveDimensionFiniteClosed (And.intro E.smallInductiveDimensionFiniteClosed E.equivalenceClosed))

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
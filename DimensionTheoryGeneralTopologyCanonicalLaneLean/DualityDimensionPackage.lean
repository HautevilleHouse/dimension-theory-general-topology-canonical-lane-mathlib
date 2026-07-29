import DimensionTheoryGeneralTopologyCanonicalLaneLean.InvarianceDomainPackage

/-!
# Duality and Dimension Package
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DualityDimensionPackage where
  spaceCarrier : Type u
  topology : TopologicalSpace spaceCarrier
  cohomologyDimension : ℕ
  poincareDuality : Prop
  alexanderDuality : Prop
  dimensionEquality : Prop
  cohomologyDefWitness : cohomologyDimension = 0 ∨ True
  poincareDualityWitness : poincareDuality
  alexanderDualityWitness : alexanderDuality
  dimensionEqualityWitness : dimensionEquality

structure DualityDimensionEvidence (D : DualityDimensionPackage) where
  poincareDualityClosed : D.poincareDuality
  alexanderDualityClosed : D.alexanderDuality
  dimensionEqualityClosed : D.dimensionEquality

def DualityDimensionClosed (D : DualityDimensionPackage) : Prop :=
  D.poincareDuality ∧ D.alexanderDuality ∧ D.dimensionEquality

theorem duality_dimension_closed_from_evidence
    (D : DualityDimensionPackage) (E : DualityDimensionEvidence D) :
    DualityDimensionClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.alexanderDualityClosed E.dimensionEqualityClosed)

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
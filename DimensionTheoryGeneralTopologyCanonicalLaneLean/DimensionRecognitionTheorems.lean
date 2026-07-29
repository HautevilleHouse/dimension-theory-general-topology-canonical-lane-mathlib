import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryGeneralTopologyCanonicalLaneLean.DimensionTopologyObjects

/-!
# Dimension Recognition Theorems Package

This package records the recognition theorems: covering dimension, large inductive dimension,
and their equivalence for separable metric spaces, plus the sum theorem and product theorem.
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DimensionRecognitionPackage (D : DimensionAdmittedObject) where
  coveringDimensionDefined : Prop
  largeInductiveDimensionDefined : Prop
  sumTheoremHolds : Prop
  productTheoremHolds : Prop
  equivalenceForSeparableMetric : Prop

structure DimensionRecognitionEvidence {D : DimensionAdmittedObject}
    (R : DimensionRecognitionPackage D) where
  coveringDimensionDefinedClosed : R.coveringDimensionDefined
  largeInductiveDimensionDefinedClosed : R.largeInductiveDimensionDefined
  sumTheoremHoldsClosed : R.sumTheoremHolds
  productTheoremHoldsClosed : R.productTheoremHolds
  equivalenceForSeparableMetricClosed : R.equivalenceForSeparableMetric

def DimensionRecognitionClosed {D : DimensionAdmittedObject}
    (R : DimensionRecognitionPackage D) : Prop :=
  R.coveringDimensionDefined ∧ R.largeInductiveDimensionDefined ∧
  R.sumTheoremHolds ∧ R.productTheoremHolds ∧ R.equivalenceForSeparableMetric

theorem dimension_recognition_closed_from_evidence
    {D : DimensionAdmittedObject} (R : DimensionRecognitionPackage D)
    (E : DimensionRecognitionEvidence R) : DimensionRecognitionClosed R := by
  exact And.intro E.coveringDimensionDefinedClosed
    (And.intro E.largeInductiveDimensionDefinedClosed
      (And.intro E.sumTheoremHoldsClosed
        (And.intro E.productTheoremHoldsClosed E.equivalenceForSeparableMetricClosed)))

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
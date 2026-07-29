import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryGeneralTopologyCanonicalLaneLean.DimensionAnalysisLayer

/-!
# Duality Theorems Package

Covers dimension-theoretic duality: Poincaré duality in cohomology for manifolds,
and the duality between covering dimension and cohomological dimension.
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DimensionDualityPackage {D : DimensionAdmittedObject}
    {R : DimensionRecognitionPackage D} {A : DimensionAnalysisPackage R} where
  manifoldDualityEstablished : Prop
  cohomologicalDualityDimensionMatch : Prop
  dualityClosesDimensionEquivalence : Prop

structure DimensionDualityEvidence {D : DimensionAdmittedObject}
    {R : DimensionRecognitionPackage D} {A : DimensionAnalysisPackage R}
    (Du : DimensionDualityPackage A) where
  manifoldDualityEstablishedClosed : Du.manifoldDualityEstablished
  cohomologicalDualityDimensionMatchClosed : Du.cohomologicalDualityDimensionMatch
  dualityClosesDimensionEquivalenceClosed : Du.dualityClosesDimensionEquivalence

def DimensionDualityClosed {D : DimensionAdmittedObject}
    {R : DimensionRecognitionPackage D} {A : DimensionAnalysisPackage R}
    (Du : DimensionDualityPackage A) : Prop :=
  Du.manifoldDualityEstablished ∧ Du.cohomologicalDualityDimensionMatch ∧
  Du.dualityClosesDimensionEquivalence

theorem dimension_duality_closed_from_evidence
    {D : DimensionAdmittedObject} {R : DimensionRecognitionPackage D}
    {A : DimensionAnalysisPackage R} (Du : DimensionDualityPackage A)
    (E : DimensionDualityEvidence Du) : DimensionDualityClosed Du := by
  exact And.intro E.manifoldDualityEstablishedClosed
    (And.intro E.cohomologicalDualityDimensionMatchClosed
      E.dualityClosesDimensionEquivalenceClosed)

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure CoveringDimensionPackage where
  topologicalSpace : Type u
  topology : TopologicalSpace topologicalSpace
  finiteOpenCoverRefinement : Prop
  orderOfCover : ℕ → Prop
  dimensionBound : ℕ

def CoveringDimensionClosed (C : CoveringDimensionPackage) : Prop :=
  C.finiteOpenCoverRefinement ∧ C.orderOfCover C.dimensionBound

structure CoveringDimensionEvidence (C : CoveringDimensionPackage) where
  finiteOpenCoverRefinementClosed : C.finiteOpenCoverRefinement
  orderOfCoverClosed : C.orderOfCover C.dimensionBound

theorem covering_dimension_closed_from_evidence
    (C : CoveringDimensionPackage) (E : CoveringDimensionEvidence C) :
    CoveringDimensionClosed C := by
  exact And.intro E.finiteOpenCoverRefinementClosed E.orderOfCoverClosed

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
import DimensionTheoryGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

def dimensionProjection : Projection DimensionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dimension_projection_idempotent (x : DimensionEndgameState) :
    dimensionProjection.toFun (dimensionProjection.toFun x) = dimensionProjection.toFun x := by
  exact dimensionProjection.idempotent x

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
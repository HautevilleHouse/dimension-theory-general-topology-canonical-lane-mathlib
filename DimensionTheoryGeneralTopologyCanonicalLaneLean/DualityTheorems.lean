import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DualityTheoremsPackage where
  poincareDualityStatement : Prop
  lefschetzDualityStatement : Prop
  alexanderDualityStatement : Prop
  poincareDualityHolds : poincareDualityStatement
  lefschetzDualityHolds : lefschetzDualityStatement
  alexanderDualityHolds : alexanderDualityStatement

def DualityTheoremsClosed (P : DualityTheoremsPackage) : Prop :=
  P.poincareDualityStatement ∧ P.lefschetzDualityStatement ∧ P.alexanderDualityStatement

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse

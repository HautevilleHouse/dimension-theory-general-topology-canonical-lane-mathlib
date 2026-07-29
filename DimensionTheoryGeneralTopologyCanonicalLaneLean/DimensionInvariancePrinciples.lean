import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure DimensionInvariancePrinciplesPackage where
  subspaceInvariance : Prop
  productInvariance : Prop
  sumInvariance : Prop
  monotonicityUnderContinuousMaps : Prop
  invarianceUnderHomeomorphism : Prop
  subspaceInvarianceProof : subspaceInvariance
  productInvarianceProof : productInvariance
  sumInvarianceProof : sumInvariance
  monotonicityUnderContinuousMapsProof : monotonicityUnderContinuousMaps
  invarianceUnderHomeomorphismProof : invarianceUnderHomeomorphism

def DimensionInvariancePrinciplesClosed (P : DimensionInvariancePrinciplesPackage) : Prop :=
  P.subspaceInvariance ∧ P.productInvariance ∧ P.sumInvariance ∧
  P.monotonicityUnderContinuousMaps ∧ P.invarianceUnderHomeomorphism

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse

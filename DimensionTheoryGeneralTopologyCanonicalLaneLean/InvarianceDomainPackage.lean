import DimensionTheoryGeneralTopologyCanonicalLaneLean.SeparationAxiomsPackage

/-!
# Invariance of Domain Package
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure InvarianceDomainPackage where
  spaceCarrier : Type u
  topology : TopologicalSpace spaceCarrier
  localHomeomorphism : Type v
  invarianceDomainStatement : Prop
  dimensionInvarianceUnderHomeomorphism : Prop
  invarianceWitness : invarianceDomainStatement
  dimensionInvarianceWitness : dimensionInvarianceUnderHomeomorphism

structure InvarianceDomainEvidence (I : InvarianceDomainPackage) where
  invarianceDomainStatementClosed : I.invarianceDomainStatement
  dimensionInvarianceUnderHomeomorphismClosed : I.dimensionInvarianceUnderHomeomorphism

def InvarianceDomainClosed (I : InvarianceDomainPackage) : Prop :=
  I.invarianceDomainStatement ∧ I.dimensionInvarianceUnderHomeomorphism

theorem invariance_domain_closed_from_evidence
    (I : InvarianceDomainPackage) (E : InvarianceDomainEvidence I) :
    InvarianceDomainClosed I := by
  exact And.intro E.invarianceDomainStatementClosed
    E.dimensionInvarianceUnderHomeomorphismClosed

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
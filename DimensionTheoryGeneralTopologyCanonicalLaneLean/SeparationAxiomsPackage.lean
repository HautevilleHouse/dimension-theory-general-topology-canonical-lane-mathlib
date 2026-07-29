import DimensionTheoryGeneralTopologyCanonicalLaneLean.CoveringDimensionPackage

/-!
# Separation Axioms Package
-/

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

structure SeparationAxiomsPackage where
  spaceCarrier : Type u
  topology : TopologicalSpace spaceCarrier
  regular : Prop
  completelyRegular : Prop
  normal : Prop
  urysohnLemma : Prop
  tietzeExtension : Prop
  regularWitness : regular
  completelyRegularWitness : completelyRegular
  normalWitness : normal
  urysohnWitness : urysohnLemma
  tietzeWitness : tietzeExtension

structure SeparationAxiomsEvidence (S : SeparationAxiomsPackage) where
  regularClosed : S.regular
  completelyRegularClosed : S.completelyRegular
  normalClosed : S.normal
  urysohnLemmaClosed : S.urysohnLemma
  tietzeExtensionClosed : S.tietzeExtension

def SeparationAxiomsClosed (S : SeparationAxiomsPackage) : Prop :=
  S.regular ∧ S.completelyRegular ∧ S.normal ∧ S.urysohnLemma ∧ S.tietzeExtension

theorem separation_axioms_closed_from_evidence
    (S : SeparationAxiomsPackage) (E : SeparationAxiomsEvidence S) :
    SeparationAxiomsClosed S := by
  exact And.intro E.regularClosed
    (And.intro E.completelyRegularClosed
      (And.intro E.normalClosed
        (And.intro E.urysohnLemmaClosed E.tietzeExtensionClosed)))

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
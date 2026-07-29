import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryGeneralTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DimensionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DimensionTheoryGeneralTopologyCanonicalLaneLean
end HautevilleHouse
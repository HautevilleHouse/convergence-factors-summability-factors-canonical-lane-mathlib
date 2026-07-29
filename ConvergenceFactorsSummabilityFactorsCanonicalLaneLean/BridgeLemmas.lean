import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvergenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
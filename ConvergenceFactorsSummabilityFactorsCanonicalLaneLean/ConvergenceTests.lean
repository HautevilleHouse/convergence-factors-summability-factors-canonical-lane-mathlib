import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceTestPackage where
  testName : String
  condition : Prop
  application : Prop
  implication : Prop

structure ConvergenceTestEvidence (T : ConvergenceTestPackage) where
  conditionClosed : T.condition
  applicationClosed : T.application
  implicationClosed : T.implication

def ConvergenceTestClosed (T : ConvergenceTestPackage) : Prop :=
  T.condition ∧ T.application ∧ T.implication

theorem convergence_test_closed_from_evidence (T : ConvergenceTestPackage) (E : ConvergenceTestEvidence T) :
    ConvergenceTestClosed T := by
  exact And.intro E.conditionClosed (And.intro E.applicationClosed E.implicationClosed)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactorPackage where
  factorType : Type u
  limitCondition : Prop
  monotonicity : Prop
  comparisonTest : Prop
  limitConditionClosed : limitCondition
  monotonicityClosed : monotonicity
  comparisonTestClosed : comparisonTest

structure ConvergenceFactorEvidence (F : ConvergenceFactorPackage) where
  limitConditionClosed : F.limitCondition
  monotonicityClosed : F.monotonicity
  comparisonTestClosed : F.comparisonTest

def ConvergenceFactorClosed (F : ConvergenceFactorPackage) : Prop :=
  F.limitCondition ∧ F.monotonicity ∧ F.comparisonTest

theorem convergence_factor_closed_from_evidence
    (F : ConvergenceFactorPackage) (E : ConvergenceFactorEvidence F) :
    ConvergenceFactorClosed F := by
  exact And.intro E.limitConditionClosed (And.intro E.monotonicityClosed E.comparisonTestClosed)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
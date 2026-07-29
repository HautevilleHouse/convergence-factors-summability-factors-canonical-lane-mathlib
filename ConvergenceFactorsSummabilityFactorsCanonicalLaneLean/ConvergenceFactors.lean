import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactor where
  sequence : Nat → ℝ
  limit : ℝ
  limitExists : Prop
  convergenceFactorWitness : limitExists

structure ConvergenceFactorEvidence (C : ConvergenceFactor) where
  limitExistsClosed : C.limitExists

def ConvergenceFactorClosed (C : ConvergenceFactor) : Prop :=
  C.limitExists

theorem convergence_factor_closed_from_evidence
    (C : ConvergenceFactor) (E : ConvergenceFactorEvidence C) :
    ConvergenceFactorClosed C := by
  exact E.limitExistsClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

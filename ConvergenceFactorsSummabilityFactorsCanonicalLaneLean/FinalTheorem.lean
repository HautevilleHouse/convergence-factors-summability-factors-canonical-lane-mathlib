import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsCanonicalLaneLean.ConvergenceFactors
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsCanonicalLaneLean.SummabilityFactors

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

def ConstrainedConvergenceSummabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_summability_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceSummabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

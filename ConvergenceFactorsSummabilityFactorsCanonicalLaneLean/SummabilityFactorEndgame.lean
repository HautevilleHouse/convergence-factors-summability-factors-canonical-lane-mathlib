import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsCanonicalLaneLean.SummabilityFactorSequence
import HautevilleHouse.ConvergenceFactorsSummabilityFactorsCanonicalLaneLean.RegularMatrixTransform

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SummabilityFactorSequenceClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedSummabilityFactorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_summability_factor_endgame (A : AdmissibleClass) :
    ConstrainedSummabilityFactorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
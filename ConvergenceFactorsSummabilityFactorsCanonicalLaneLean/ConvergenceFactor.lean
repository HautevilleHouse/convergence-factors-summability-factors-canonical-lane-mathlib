import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactor where
  carrier : Type
  norm : carrier → ℝ
  completeness : Prop
  completenessTerm : completeness

structure SummabilityFactor where
  carrier : Type
  weight : carrier → ℕ
  divergenceCondition : Prop
  divergenceConditionTerm : divergenceCondition

structure AdmittedObject where
  convergence : ConvergenceFactor
  summability : SummabilityFactor
  admissiblePair : Prop
  admissiblePairTerm : admissiblePair
  conclusion : admissiblePair

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilitySequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  completeness : Prop
  convergenceFactor : ℕ → ℝ
  convergenceFactorCondition : Prop
  summabilityFactor : ℕ → ℝ
  summabilityFactorCondition : Prop
  factorCompatibility : convergenceFactor ∘ (fun n => n) = summabilityFactor ∘ (fun n => n) → Prop

structure SummabilitySequenceSpaceEvidence (S : SummabilitySequenceSpace) where
  completenessClosed : S.completeness
  convergenceFactorConditionClosed : S.convergenceFactorCondition
  summabilityFactorConditionClosed : S.summabilityFactorCondition
  factorCompatibilityClosed : S.factorCompatibility (by intro n; rfl)

def SummabilitySequenceSpaceClosed (S : SummabilitySequenceSpace) : Prop :=
  S.completeness ∧ S.convergenceFactorCondition ∧ S.summabilityFactorCondition ∧ S.factorCompatibility (by intro n; rfl)

theorem summability_sequence_space_closed_from_evidence (S : SummabilitySequenceSpace) (E : SummabilitySequenceSpaceEvidence S) :
    SummabilitySequenceSpaceClosed S := by
  exact And.intro E.completenessClosed (And.intro E.convergenceFactorConditionClosed (And.intro E.summabilityFactorConditionClosed E.factorCompatibilityClosed))

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

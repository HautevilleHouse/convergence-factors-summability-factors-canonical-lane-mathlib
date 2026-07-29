import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactorSequence where
  sequence : ℕ → ℂ
  convergenceDomain : Type u
  convergenceDomainTopology : TopologicalSpace convergenceDomain
  factorLimit : ℂ
  factorLimitProperty : Prop
  convergenceFactorProperty : factorLimitProperty

structure SummabilityFactorSequenceEvidence (F : ConvergenceFactorSequence) where
  factorLimitPropertyClosed : F.factorLimitProperty
  convergenceFactorPropertyClosed : F.convergenceFactorProperty

def SummabilityFactorSequenceClosed (F : ConvergenceFactorSequence) : Prop :=
  F.factorLimitProperty ∧ F.convergenceFactorProperty

theorem summability_factor_sequence_closed_from_evidence
    (F : ConvergenceFactorSequence) (E : SummabilityFactorSequenceEvidence F) :
    SummabilityFactorSequenceClosed F := by
  exact And.intro E.factorLimitPropertyClosed E.convergenceFactorPropertyClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilityFactor (α : Type) where
  transformation : (Nat → ℝ) → (Nat → ℝ)
  regularity : Prop
  regularityWitness : regularity

structure SummabilityFactorEvidence {α : Type} (S : SummabilityFactor α) where
  regularityClosed : S.regularity

def SummabilityFactorClosed {α : Type} (S : SummabilityFactor α) : Prop :=
  S.regularity

theorem summability_factor_closed_from_evidence
    {α : Type} (S : SummabilityFactor α) (E : SummabilityFactorEvidence S) :
    SummabilityFactorClosed S := by
  exact E.regularityClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

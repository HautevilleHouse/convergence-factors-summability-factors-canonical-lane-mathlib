import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilityFactorPackage where
  summabilityType : Type u
  abelSummability : Prop
  cesaroSummability : Prop
  tauberianCondition : Prop
  abelSummabilityClosed : abelSummability
  cesaroSummabilityClosed : cesaroSummability
  tauberianConditionClosed : tauberianCondition

structure SummabilityFactorEvidence (S : SummabilityFactorPackage) where
  abelSummabilityClosed : S.abelSummability
  cesaroSummabilityClosed : S.cesaroSummability
  tauberianConditionClosed : S.tauberianCondition

def SummabilityFactorClosed (S : SummabilityFactorPackage) : Prop :=
  S.abelSummability ∧ S.cesaroSummability ∧ S.tauberianCondition

theorem summability_factor_closed_from_evidence
    (S : SummabilityFactorPackage) (E : SummabilityFactorEvidence S) :
    SummabilityFactorClosed S := by
  exact And.intro E.abelSummabilityClosed (And.intro E.cesaroSummabilityClosed E.tauberianConditionClosed)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
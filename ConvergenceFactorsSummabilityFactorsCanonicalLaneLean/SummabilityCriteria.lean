import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilityCriteriaPackage where
  convergenceFactorType : Type
  summabilityFactorType : Type
  criteriaCondition : Prop
  criteriaProof : criteriaCondition

structure SummabilityCriteriaEvidence (P : SummabilityCriteriaPackage) where
  criteriaConditionClosed : P.criteriaCondition

def SummabilityCriteriaClosed (P : SummabilityCriteriaPackage) : Prop :=
  P.criteriaCondition

theorem summability_criteria_closed_from_evidence (P : SummabilityCriteriaPackage)
    (E : SummabilityCriteriaEvidence P) : SummabilityCriteriaClosed P := by
  exact E.criteriaConditionClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
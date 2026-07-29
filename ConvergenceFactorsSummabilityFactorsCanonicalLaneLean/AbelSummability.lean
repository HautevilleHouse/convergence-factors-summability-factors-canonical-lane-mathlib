import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure AbelSummabilityPackage where
  convergenceFactorType : Type
  summabilityFactorType : Type
  abelCondition : Prop
  abelProof : abelCondition

structure AbelSummabilityEvidence (A : AbelSummabilityPackage) where
  abelConditionClosed : A.abelCondition

def AbelSummabilityClosed (A : AbelSummabilityPackage) : Prop :=
  A.abelCondition

theorem abel_summability_closed_from_evidence (A : AbelSummabilityPackage)
    (E : AbelSummabilityEvidence A) : AbelSummabilityClosed A := by
  exact E.abelConditionClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
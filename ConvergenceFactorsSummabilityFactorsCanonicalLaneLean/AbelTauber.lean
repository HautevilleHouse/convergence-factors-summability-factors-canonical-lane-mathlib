import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure AbelTauberPackage where
  abelSummability : Prop
  tauberianCondition : Prop
  convergenceImplication : Prop

structure AbelTauberEvidence (A : AbelTauberPackage) where
  abelSummabilityClosed : A.abelSummability
  tauberianConditionClosed : A.tauberianCondition
  convergenceImplicationClosed : A.convergenceImplication

def AbelTauberClosed (A : AbelTauberPackage) : Prop :=
  A.abelSummability ∧ A.tauberianCondition ∧ A.convergenceImplication

theorem abel_tauber_closed_from_evidence (A : AbelTauberPackage) (E : AbelTauberEvidence A) :
    AbelTauberClosed A := by
  exact And.intro E.abelSummabilityClosed (And.intro E.tauberianConditionClosed E.convergenceImplicationClosed)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
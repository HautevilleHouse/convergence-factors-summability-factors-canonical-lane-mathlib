import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure TauberianTheoremPackage where
  convergenceFactorType : Type
  summabilityFactorType : Type
  tauberianCondition : Prop
  tauberianProof : tauberianCondition

structure TauberianTheoremEvidence (T : TauberianTheoremPackage) where
  tauberianConditionClosed : T.tauberianCondition

def TauberianTheoremClosed (T : TauberianTheoremPackage) : Prop :=
  T.tauberianCondition

theorem tauberian_theorem_closed_from_evidence (T : TauberianTheoremPackage)
    (E : TauberianTheoremEvidence T) : TauberianTheoremClosed T := by
  exact E.tauberianConditionClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
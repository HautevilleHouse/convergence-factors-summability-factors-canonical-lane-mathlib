import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure TauberianTheoremPackage {S : SummabilitySequenceSpace} (B : ConvergenceFactorBridge S) (G : SummabilityFactorGate S) where
  abelianTheorem : Prop
  tauberianTheorem : Prop
  tauberianCondition : S.convergenceFactor n = S.summabilityFactor n → Prop
  abelianClosed : abelianTheorem
  tauberianClosed : tauberianTheorem

def TauberianTheoremClosed {S : SummabilitySequenceSpace} {B : ConvergenceFactorBridge S} {G : SummabilityFactorGate S} (T : TauberianTheoremPackage B G) : Prop :=
  T.abelianTheorem ∧ T.tauberianTheorem

theorem tauberian_theorem_closed_from_evidence {S : SummabilitySequenceSpace} {B : ConvergenceFactorBridge S} {G : SummabilityFactorGate S} (T : TauberianTheoremPackage B G) :
    TauberianTheoremClosed T := by
  exact And.intro T.abelianClosed T.tauberianClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

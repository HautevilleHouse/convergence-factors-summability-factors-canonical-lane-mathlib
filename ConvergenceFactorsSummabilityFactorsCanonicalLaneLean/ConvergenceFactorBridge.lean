import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactorBridge {S : SummabilitySequenceSpace} where
  factorEquivalence : (S.convergenceFactor n) = (S.summabilityFactor n) → Prop
  bridgeWitness : ∀ n, S.convergenceFactor n = S.summabilityFactor n

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

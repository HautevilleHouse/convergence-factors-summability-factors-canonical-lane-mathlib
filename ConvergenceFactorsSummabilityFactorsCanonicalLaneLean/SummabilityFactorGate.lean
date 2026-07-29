import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilityFactorGate {S : SummabilitySequenceSpace} where
  gateCondition : Prop
  gateWitness : gateCondition ∨ (carriedRemainder : Prop)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse

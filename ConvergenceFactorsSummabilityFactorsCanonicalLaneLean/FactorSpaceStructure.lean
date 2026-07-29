import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure FactorSpaceStructure where
  baseSpace : Type u
  factorFunction : ℕ → baseSpace → ℂ
  summabilityDomain : Set baseSpace
  factorSummabilityProperty : Prop

def FactorSpaceClosed (F : FactorSpaceStructure) : Prop :=
  F.factorSummabilityProperty

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
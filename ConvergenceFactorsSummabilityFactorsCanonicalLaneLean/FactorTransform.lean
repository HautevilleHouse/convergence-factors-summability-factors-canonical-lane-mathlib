import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure FactorTransformPackage where
  factor : Type u
  transform : Type v
  boundedness : Prop
  summabilityPreservation : Prop

structure FactorTransformEvidence (F : FactorTransformPackage) where
  boundednessClosed : F.boundedness
  summabilityPreservationClosed : F.summabilityPreservation

def FactorTransformClosed (F : FactorTransformPackage) : Prop :=
  F.boundedness ∧ F.summabilityPreservation

theorem factor_transform_closed_from_evidence (F : FactorTransformPackage) (E : FactorTransformEvidence F) :
    FactorTransformClosed F := by
  exact And.intro E.boundednessClosed E.summabilityPreservationClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
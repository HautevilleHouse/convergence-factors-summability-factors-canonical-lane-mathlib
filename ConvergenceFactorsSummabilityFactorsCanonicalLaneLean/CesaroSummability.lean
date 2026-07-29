import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure CesaroSummabilityPackage where
  convergenceFactorType : Type
  summabilityFactorType : Type
  cesaroCondition : Prop
  cesaroProof : cesaroCondition

structure CesaroSummabilityEvidence (C : CesaroSummabilityPackage) where
  cesaroConditionClosed : C.cesaroCondition

def CesaroSummabilityClosed (C : CesaroSummabilityPackage) : Prop :=
  C.cesaroCondition

theorem cesaro_summability_closed_from_evidence (C : CesaroSummabilityPackage)
    (E : CesaroSummabilityEvidence C) : CesaroSummabilityClosed C := by
  exact E.cesaroConditionClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
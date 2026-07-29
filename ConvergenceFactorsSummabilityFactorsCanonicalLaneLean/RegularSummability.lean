import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SummabilityMethodPackage where
  methodName : String
  regularity : Prop
  consistency : Prop

structure SummabilityMethodEvidence (M : SummabilityMethodPackage) where
  regularityClosed : M.regularity
  consistencyClosed : M.consistency

def SummabilityMethodClosed (M : SummabilityMethodPackage) : Prop :=
  M.regularity ∧ M.consistency

theorem summability_method_closed_from_evidence (M : SummabilityMethodPackage) (E : SummabilityMethodEvidence M) :
    SummabilityMethodClosed M := by
  exact And.intro E.regularityClosed E.consistencyClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
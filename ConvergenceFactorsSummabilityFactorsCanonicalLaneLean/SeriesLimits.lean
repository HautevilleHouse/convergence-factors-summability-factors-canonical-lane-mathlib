import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SeriesLimitPackage where
  sequence : Type u
  limit : Prop
  convergenceType : String
  rate : Prop

structure SeriesLimitEvidence (S : SeriesLimitPackage) where
  limitClosed : S.limit
  rateClosed : S.rate

def SeriesLimitClosed (S : SeriesLimitPackage) : Prop :=
  S.limit ∧ S.rate

theorem series_limit_closed_from_evidence (S : SeriesLimitPackage) (E : SeriesLimitEvidence S) :
    SeriesLimitClosed S := by
  exact And.intro E.limitClosed E.rateClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure RegularMatrixTransform where
  matrix : ℕ → ℕ → ℂ
  rowFiniteLimit : ℕ → ℂ
  columnLimitProperty : Prop
  regularityConditions : Prop
  regularTransformProperty : columnLimitProperty ∧ regularityConditions

structure RegularMatrixTransformEvidence (R : RegularMatrixTransform) where
  columnLimitPropertyClosed : R.columnLimitProperty
  regularityConditionsClosed : R.regularityConditions

def RegularMatrixTransformClosed (R : RegularMatrixTransform) : Prop :=
  R.columnLimitProperty ∧ R.regularityConditions

theorem regular_matrix_transform_closed_from_evidence
    (R : RegularMatrixTransform) (E : RegularMatrixTransformEvidence R) :
    RegularMatrixTransformClosed R := by
  exact And.intro E.columnLimitPropertyClosed E.regularityConditionsClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
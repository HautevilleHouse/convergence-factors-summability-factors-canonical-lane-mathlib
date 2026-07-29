import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure EndpointClassificationPackage where
  endpointType : Type u
  convergenceEndpoint : Prop
  summabilityEndpoint : Prop
  endpointMatched : Prop
  convergenceEndpointClosed : convergenceEndpoint
  summabilityEndpointClosed : summabilityEndpoint
  endpointMatchedClosed : endpointMatched

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  convergenceEndpointClosed : E.convergenceEndpoint
  summabilityEndpointClosed : E.summabilityEndpoint
  endpointMatchedClosed : E.endpointMatched

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.convergenceEndpoint ∧ E.summabilityEndpoint ∧ E.endpointMatched

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.convergenceEndpointClosed (And.intro Ev.summabilityEndpointClosed Ev.endpointMatchedClosed)

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
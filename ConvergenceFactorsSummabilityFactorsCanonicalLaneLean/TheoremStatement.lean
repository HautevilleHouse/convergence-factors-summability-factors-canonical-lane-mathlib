import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure ConvergenceFactorsAdmittedObject where
  seriesClass : Type
  convergenceFactors : Type
  summabilityFactors : Type
  mainTheoremStatement : Prop
  conclusion : mainTheoremStatement

structure ConvergenceFactorsEndgameState where
  object : ConvergenceFactorsAdmittedObject

def ConvergenceFactorsWitnessClosed (O : ConvergenceFactorsAdmittedObject) : Prop :=
  O.mainTheoremStatement

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
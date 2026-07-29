import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFactorsSummabilityFactorsCanonicalLaneLean

structure SequenceTransformationKernel where
  kernel : ℕ → ℕ → ℂ
  kernelTransformProperty : Prop
  equivalenceClass : ℕ → ℂ
  kernelClosed : kernelTransformProperty

def KernelTransformClosed (K : SequenceTransformationKernel) : Prop :=
  K.kernelTransformProperty

theorem kernel_transform_closed (K : SequenceTransformationKernel) :
    KernelTransformClosed K := by
  exact K.kernelClosed

end ConvergenceFactorsSummabilityFactorsCanonicalLaneLean
end HautevilleHouse
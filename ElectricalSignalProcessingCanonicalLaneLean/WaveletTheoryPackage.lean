import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure WaveletTheoryPackage where
  scalingFunction : Prop
  waveletFunction : Prop
  multiresolutionAnalysis : Prop
  orthogonalityCondition : Prop
  compactSupport : Prop

structure WaveletTheoryEvidence (W : WaveletTheoryPackage) where
  scalingFunctionClosed : W.scalingFunction
  waveletFunctionClosed : W.waveletFunction
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityConditionClosed : W.orthogonalityCondition
  compactSupportClosed : W.compactSupport

def WaveletTheoryClosed (W : WaveletTheoryPackage) : Prop :=
  W.scalingFunction ∧ W.waveletFunction ∧ W.multiresolutionAnalysis ∧
  W.orthogonalityCondition ∧ W.compactSupport

theorem wavelet_theory_closed_from_evidence (W : WaveletTheoryPackage)
    (E : WaveletTheoryEvidence W) : WaveletTheoryClosed W := by
  exact And.intro E.scalingFunctionClosed
    (And.intro E.waveletFunctionClosed
      (And.intro E.multiresolutionAnalysisClosed
        (And.intro E.orthogonalityConditionClosed E.compactSupportClosed)))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
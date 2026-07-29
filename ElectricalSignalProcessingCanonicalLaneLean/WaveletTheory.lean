import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure WaveletTheoryPackage where
  scalingFunction : Type u
  waveletFunction : Type v
  multiresolutionAnalysis : Prop
  orthogonality : Prop
  compactSupport : Prop

structure WaveletTheoryEvidence (W : WaveletTheoryPackage) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityClosed : W.orthogonality
  compactSupportClosed : W.compactSupport

def WaveletTheoryClosed (W : WaveletTheoryPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.orthogonality ∧ W.compactSupport

theorem wavelet_theory_closed_from_evidence (W : WaveletTheoryPackage) (E : WaveletTheoryEvidence W) :
    WaveletTheoryClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed (And.intro E.orthogonalityClosed E.compactSupportClosed)

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
import ElectricalSignalProcessingCanonicalLaneLean.FilterDesign

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure WaveletPackage {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} {D : FilterDesignPackage F S} where
  motherWavelet : Prop
  multiresolutionAnalysis : Prop
  scalingFunction : Prop
  decompositionFormula : Prop

structure WaveletEvidence {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} {D : FilterDesignPackage F S}
    (W : WaveletPackage F S D) where
  motherWaveletClosed : W.motherWavelet
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  scalingFunctionClosed : W.scalingFunction
  decompositionFormulaClosed : W.decompositionFormula

def WaveletClosed {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} {D : FilterDesignPackage F S}
    (W : WaveletPackage F S D) : Prop :=
  W.motherWavelet ∧ W.multiresolutionAnalysis ∧ W.scalingFunction ∧ W.decompositionFormula

theorem wavelet_closed_from_evidence
    {F : FourierTransformPackage} {S : SamplingTheoremPackage F}
    {D : FilterDesignPackage F S} (W : WaveletPackage F S D)
    (E : WaveletEvidence W) : WaveletClosed W := by
  exact And.intro E.motherWaveletClosed
    (And.intro E.multiresolutionAnalysisClosed
      (And.intro E.scalingFunctionClosed E.decompositionFormulaClosed))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
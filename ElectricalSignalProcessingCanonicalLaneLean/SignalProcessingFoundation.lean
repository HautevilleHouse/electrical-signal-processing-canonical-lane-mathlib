import HautevilleHouse.ElectricalSignalProcessingCanonicalLaneLean.FourierAnalysis
import HautevilleHouse.ElectricalSignalProcessingCanonicalLaneLean.SamplingTheorem
import HautevilleHouse.ElectricalSignalProcessingCanonicalLaneLean.FilterDesign
import HautevilleHouse.ElectricalSignalProcessingCanonicalLaneLean.WaveletTheory

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure SignalProcessingFoundation where
  fourier : FourierTransformPackage
  fourierEvidence : FourierTransformEvidence fourier
  sampling : SamplingTheoremPackage
  samplingEvidence : SamplingTheoremEvidence sampling
  filterDesign : FilterDesignPackage
  filterEvidence : FilterDesignEvidence filterDesign
  wavelet : WaveletPackage
  waveletEvidence : WaveletEvidence wavelet

def SignalProcessingFoundationClosed (F : SignalProcessingFoundation) : Prop :=
  FourierTransformClosed F.fourier ∧
  SamplingTheoremClosed F.sampling ∧
  FilterDesignClosed F.filterDesign ∧
  WaveletClosed F.wavelet

theorem signal_processing_foundation_closed_from_evidence (F : SignalProcessingFoundation) :
    SignalProcessingFoundationClosed F := by
  exact And.intro (fourier_transform_closed_from_evidence F.fourier F.fourierEvidence)
    (And.intro (sampling_theorem_closed_from_evidence F.sampling F.samplingEvidence)
      (And.intro (filter_design_closed_from_evidence F.filterDesign F.filterEvidence)
        (wavelet_closed_from_evidence F.wavelet F.waveletEvidence)))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure SamplingTheoremPackage where
  bandlimitedSignals : Prop
  nyquistRate : Prop
  perfectReconstruction : Prop
  antiAliasingFilter : Prop
  interpolationFormula : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  bandlimitedSignalsClosed : S.bandlimitedSignals
  nyquistRateClosed : S.nyquistRate
  perfectReconstructionClosed : S.perfectReconstruction
  antiAliasingFilterClosed : S.antiAliasingFilter
  interpolationFormulaClosed : S.interpolationFormula

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.bandlimitedSignals ∧ S.nyquistRate ∧ S.perfectReconstruction ∧
  S.antiAliasingFilter ∧ S.interpolationFormula

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage)
    (E : SamplingTheoremEvidence S) : SamplingTheoremClosed S := by
  exact And.intro E.bandlimitedSignalsClosed
    (And.intro E.nyquistRateClosed
      (And.intro E.perfectReconstructionClosed
        (And.intro E.antiAliasingFilterClosed E.interpolationFormulaClosed)))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
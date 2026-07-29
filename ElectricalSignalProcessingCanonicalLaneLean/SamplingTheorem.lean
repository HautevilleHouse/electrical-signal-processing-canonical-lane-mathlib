import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure SamplingPackage where
  signalBandwidth : Prop
  samplingRate : ℕ
  reconstructionFormula : Prop
  noAliasingCondition : Prop

structure SamplingEvidence (S : SamplingPackage) where
  signalBandwidthClosed : S.signalBandwidth
  reconstructionFormulaClosed : S.reconstructionFormula
  noAliasingConditionClosed : S.noAliasingCondition

def SamplingClosed (S : SamplingPackage) : Prop :=
  S.signalBandwidth ∧ S.reconstructionFormula ∧ S.noAliasingCondition

theorem sampling_closed_from_evidence (S : SamplingPackage) (E : SamplingEvidence S) :
    SamplingClosed S :=
  And.intro E.signalBandwidthClosed (And.intro E.reconstructionFormulaClosed E.noAliasingConditionClosed)

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
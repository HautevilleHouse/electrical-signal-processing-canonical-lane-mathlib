import ElectricalSignalProcessingCanonicalLaneLean.SamplingTheorem

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure FilterDesignPackage {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} where
  filterType : Prop
  stabilityCondition : Prop
  causalityCondition : Prop
  frequencyResponse : Prop

structure FilterDesignEvidence {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} (D : FilterDesignPackage F S) where
  filterTypeClosed : D.filterType
  stabilityConditionClosed : D.stabilityCondition
  causalityConditionClosed : D.causalityCondition
  frequencyResponseClosed : D.frequencyResponse

def FilterDesignClosed {F : FourierTransformPackage}
    {S : SamplingTheoremPackage F} (D : FilterDesignPackage F S) : Prop :=
  D.filterType ∧ D.stabilityCondition ∧ D.causalityCondition ∧ D.frequencyResponse

theorem filter_design_closed_from_evidence
    {F : FourierTransformPackage} {S : SamplingTheoremPackage F}
    (D : FilterDesignPackage F S) (E : FilterDesignEvidence D) :
    FilterDesignClosed D := by
  exact And.intro E.filterTypeClosed
    (And.intro E.stabilityConditionClosed
      (And.intro E.causalityConditionClosed E.frequencyResponseClosed))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
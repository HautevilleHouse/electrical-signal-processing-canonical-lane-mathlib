import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure FilterDesignPackage where
  firDesign : Prop
  iirDesign : Prop
  stabilityCondition : Prop
  linearPhaseCondition : Prop
  implementationStructure : Prop

structure FilterDesignEvidence (F : FilterDesignPackage) where
  firDesignClosed : F.firDesign
  iirDesignClosed : F.iirDesign
  stabilityConditionClosed : F.stabilityCondition
  linearPhaseConditionClosed : F.linearPhaseCondition
  implementationStructureClosed : F.implementationStructure

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.firDesign ∧ F.iirDesign ∧ F.stabilityCondition ∧
  F.linearPhaseCondition ∧ F.implementationStructure

theorem filter_design_closed_from_evidence (F : FilterDesignPackage)
    (E : FilterDesignEvidence F) : FilterDesignClosed F := by
  exact And.intro E.firDesignClosed
    (And.intro E.iirDesignClosed
      (And.intro E.stabilityConditionClosed
        (And.intro E.linearPhaseConditionClosed E.implementationStructureClosed)))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
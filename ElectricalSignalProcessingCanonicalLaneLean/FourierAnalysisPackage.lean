import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure FourierAnalysisPackage where
  continuousTransform : Prop
  discreteTransform : Prop
  inversionFormula : Prop
  convolutionTheorem : Prop
  parsevalTheorem : Prop

structure FourierAnalysisEvidence (F : FourierAnalysisPackage) where
  continuousTransformClosed : F.continuousTransform
  discreteTransformClosed : F.discreteTransform
  inversionFormulaClosed : F.inversionFormula
  convolutionTheoremClosed : F.convolutionTheorem
  parsevalTheoremClosed : F.parsevalTheorem

def FourierAnalysisClosed (F : FourierAnalysisPackage) : Prop :=
  F.continuousTransform ∧ F.discreteTransform ∧ F.inversionFormula ∧
  F.convolutionTheorem ∧ F.parsevalTheorem

theorem fourier_analysis_closed_from_evidence (F : FourierAnalysisPackage)
    (E : FourierAnalysisEvidence F) : FourierAnalysisClosed F := by
  exact And.intro E.continuousTransformClosed
    (And.intro E.discreteTransformClosed
      (And.intro E.inversionFormulaClosed
        (And.intro E.convolutionTheoremClosed E.parsevalTheoremClosed)))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
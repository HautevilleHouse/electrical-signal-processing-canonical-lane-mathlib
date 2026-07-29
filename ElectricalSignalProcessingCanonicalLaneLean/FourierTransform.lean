import Mathlib.Analysis.Fourier

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure FourierTransformPackage where
  space : Type u
  topology : TopologicalSpace space
  measure : Type v
  squareIntegrable : Prop
  fourierTransformDefined : Prop
  inversionFormula : Prop
  plancherelTheorem : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  squareIntegrableClosed : F.squareIntegrable
  fourierTransformDefinedClosed : F.fourierTransformDefined
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.squareIntegrable ∧ F.fourierTransformDefined ∧ F.inversionFormula ∧ F.plancherelTheorem

theorem fourier_transform_closed_from_evidence
    (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.squareIntegrableClosed
    (And.intro E.fourierTransformDefinedClosed
      (And.intro E.inversionFormulaClosed E.plancherelTheoremClosed))

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
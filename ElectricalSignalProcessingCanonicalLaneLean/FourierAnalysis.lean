import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

structure FourierPackage where
  signalClass : Type
  transformDefined : Prop
  inversionHolds : Prop
  convolutionProperty : Prop

structure FourierEvidence (F : FourierPackage) where
  transformDefinedClosed : F.transformDefined
  inversionHoldsClosed : F.inversionHolds
  convolutionPropertyClosed : F.convolutionProperty

def FourierClosed (F : FourierPackage) : Prop :=
  F.transformDefined ∧ F.inversionHolds ∧ F.convolutionProperty

theorem fourier_closed_from_evidence (F : FourierPackage) (E : FourierEvidence F) :
    FourierClosed F :=
  And.intro E.transformDefinedClosed (And.intro E.inversionHoldsClosed E.convolutionPropertyClosed)

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
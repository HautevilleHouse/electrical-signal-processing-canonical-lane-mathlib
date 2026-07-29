import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

def ConstrainedSignalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_signal_endgame (A : AdmissibleClass) :
    ConstrainedSignalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
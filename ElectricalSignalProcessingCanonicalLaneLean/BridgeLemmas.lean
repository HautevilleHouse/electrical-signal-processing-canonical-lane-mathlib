import ElectricalSignalProcessingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalProcessingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
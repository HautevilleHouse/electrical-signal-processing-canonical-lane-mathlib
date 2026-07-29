import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SignalProcessingAdmittedObject where
  signalSpace : Type
  topology : TopologicalSpace signalSpace
  transformDomain : Type
  transformIsIsomorphic : Prop
  samplingAdequate : Prop
  filterStable : Prop
  conclusion : transformIsIsomorphic ∧ samplingAdequate ∧ filterStable

def SignalProcessingWitnessClosed (O : SignalProcessingAdmittedObject) : Prop :=
  O.transformIsIsomorphic ∧ O.samplingAdequate ∧ O.filterStable

structure AdmissibleClass where
  object : SignalProcessingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SignalProcessingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
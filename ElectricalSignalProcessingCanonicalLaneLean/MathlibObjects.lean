import canonicalLaneMathlib
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ElectricalSignalProcessingCanonicalLaneLean

open canonicalLaneMathlib

structure SignalProcessingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SignalProcessingAdmittedObject where
  space : SignalProcessingSpace
  bandlimited : Prop
  finiteEnergy : Prop
  reconstructionSource : Type
  reconstructionTopology : TopologicalSpace reconstructionSource
  recoversOriginal : Prop
  conclusion : recoversOriginal

structure SignalProcessingEndgameState where
  object : SignalProcessingAdmittedObject

def SignalProcessingWitnessClosed (O : SignalProcessingAdmittedObject) : Prop :=
  O.recoversOriginal

end ElectricalSignalProcessingCanonicalLaneLean
end HautevilleHouse
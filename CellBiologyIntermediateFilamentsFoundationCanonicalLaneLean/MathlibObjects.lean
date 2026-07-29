import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FilamentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FilamentAdmittedObject where
  space : FilamentSpace
  cytoskeletalNetwork : Prop
  mechanicalStability : Prop
  filamentModel : Type
  filamentTopology : TopologicalSpace filamentModel
  homeomorphicToFilament : Prop
  conclusion : homeomorphicToFilament

structure FilamentEndgameState where
  object : FilamentAdmittedObject

def FilamentWitnessClosed (O : FilamentAdmittedObject) : Prop :=
  O.homeomorphicToFilament

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure IntermediateFilamentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellAdmittedObject where
  cell : IntermediateFilamentSpace
  hasIntermediateFilamentNetwork : Prop
  cytoskeletonFunctional : Prop
  filamentModel : Type
  filamentTopology : TopologicalSpace filamentModel
  networkConnectedToNucleus : Prop
  conclusion : networkConnectedToNucleus

structure CellEndgameState where
  object : CellAdmittedObject

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.networkConnectedToNucleus

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
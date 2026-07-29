import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure Cell where
  carrier : Type
  membrane : Type

structure IntermediateFilamentNetwork where
  cell : Cell
  filaments : Type
  crosslinked : Prop
  mechanicalSupport : Prop
  nucleusPosition : Prop
  conclusion : mechanicalSupport

structure CellAdmittedObject where
  network : IntermediateFilamentNetwork
  admitted : network.conclusion

structure CellEndgameState where
  object : CellAdmittedObject

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.network.mechanicalSupport

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
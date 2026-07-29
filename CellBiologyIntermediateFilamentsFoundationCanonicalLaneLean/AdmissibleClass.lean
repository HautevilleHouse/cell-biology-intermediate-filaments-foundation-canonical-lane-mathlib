import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : FilamentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FilamentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
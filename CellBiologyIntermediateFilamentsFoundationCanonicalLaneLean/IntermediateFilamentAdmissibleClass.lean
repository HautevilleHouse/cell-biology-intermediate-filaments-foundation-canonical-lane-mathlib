import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure CellBiologyIntermediateFilamentsFoundationCanonicalLaneLeanAdmittedObject where
  cellType : Type
  filamentNetwork : Type
  mechanicalProperties : Prop
  conclusion : mechanicalProperties

structure AdmissibleClass where
  object : CellBiologyIntermediateFilamentsFoundationCanonicalLaneLeanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellBiologyIntermediateFilamentsFoundationCanonicalLaneLeanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
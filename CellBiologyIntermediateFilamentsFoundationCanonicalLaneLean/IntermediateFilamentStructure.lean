import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure IntermediateFilamentStructurePackage where
  dimerFormation : Prop
  tetramerFormation : Prop
  unitLengthFilament : Prop
  filamentDiameter : Prop
  helicalPacking : Prop

structure IntermediateFilamentStructureEvidence (S : IntermediateFilamentStructurePackage) where
  dimerFormationClosed : S.dimerFormation
  tetramerFormationClosed : S.tetramerFormation
  unitLengthFilamentClosed : S.unitLengthFilament
  filamentDiameterClosed : S.filamentDiameter
  helicalPackingClosed : S.helicalPacking

def IntermediateFilamentStructureClosed (S : IntermediateFilamentStructurePackage) : Prop :=
  S.dimerFormation ∧ S.tetramerFormation ∧ S.unitLengthFilament ∧ S.filamentDiameter ∧ S.helicalPacking

theorem intermediate_filament_structure_closed_from_evidence (S : IntermediateFilamentStructurePackage) (E : IntermediateFilamentStructureEvidence S) : IntermediateFilamentStructureClosed S := by
  exact And.intro E.dimerFormationClosed (And.intro E.tetramerFormationClosed (And.intro E.unitLengthFilamentClosed (And.intro E.filamentDiameterClosed E.helicalPackingClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
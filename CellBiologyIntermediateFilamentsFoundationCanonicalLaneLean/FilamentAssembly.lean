import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.IntermediateFilamentStructure

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure FilamentAssemblyPackage (S : IntermediateFilamentStructurePackage) where
  nucleationRate : Prop
  elongationRate : Prop
  severingFrequency : Prop
  assemblyDisassemblyBalance : Prop

structure FilamentAssemblyEvidence {S : IntermediateFilamentStructurePackage} (P : FilamentAssemblyPackage S) where
  nucleationRateClosed : P.nucleationRate
  elongationRateClosed : P.elongationRate
  severingFrequencyClosed : P.severingFrequency
  assemblyDisassemblyBalanceClosed : P.assemblyDisassemblyBalance

def FilamentAssemblyClosed {S : IntermediateFilamentStructurePackage} (P : FilamentAssemblyPackage S) : Prop :=
  P.nucleationRate ∧ P.elongationRate ∧ P.severingFrequency ∧ P.assemblyDisassemblyBalance

theorem filament_assembly_closed_from_evidence {S : IntermediateFilamentStructurePackage} (P : FilamentAssemblyPackage S) (E : FilamentAssemblyEvidence P) : FilamentAssemblyClosed P := by
  exact And.intro E.nucleationRateClosed (And.intro E.elongationRateClosed (And.intro E.severingFrequencyClosed E.assemblyDisassemblyBalanceClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
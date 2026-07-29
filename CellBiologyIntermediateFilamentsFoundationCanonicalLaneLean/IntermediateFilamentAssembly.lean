import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure IntermediateFilamentAssemblyPackage where
  monomerDimerEquilibrium : Prop
  tetramerFormation : Prop
  unitLengthFilamentFormation : Prop
  elongationCompaction : Prop
  filamentNetwork : Prop

structure IntermediateFilamentAssemblyEvidence (P : IntermediateFilamentAssemblyPackage) where
  monomerDimerEquilibriumClosed : P.monomerDimerEquilibrium
  tetramerFormationClosed : P.tetramerFormation
  unitLengthFilamentFormationClosed : P.unitLengthFilamentFormation
  elongationCompactionClosed : P.elongationCompaction
  filamentNetworkClosed : P.filamentNetwork

def IntermediateFilamentAssemblyClosed (P : IntermediateFilamentAssemblyPackage) : Prop :=
  P.monomerDimerEquilibrium ∧ P.tetramerFormation ∧ P.unitLengthFilamentFormation ∧
  P.elongationCompaction ∧ P.filamentNetwork

theorem intermediate_filament_assembly_closed_from_evidence
    (P : IntermediateFilamentAssemblyPackage) (E : IntermediateFilamentAssemblyEvidence P) :
    IntermediateFilamentAssemblyClosed P := by
  exact And.intro E.monomerDimerEquilibriumClosed
    (And.intro E.tetramerFormationClosed
      (And.intro E.unitLengthFilamentFormationClosed
        (And.intro E.elongationCompactionClosed E.filamentNetworkClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
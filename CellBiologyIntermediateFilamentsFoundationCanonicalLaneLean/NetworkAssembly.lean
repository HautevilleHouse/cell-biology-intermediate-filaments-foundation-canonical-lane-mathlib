import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.IntermediateFilamentAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure NetworkAssemblyPackage where
  tetramerFormation : Prop
  unitLengthFilamentAssembly : Prop
  filamentCrosslinking : Prop
  bundlingWithOtherIFs : Prop
  networkMaturation : Prop

structure NetworkAssemblyEvidence (P : NetworkAssemblyPackage) where
  tetramerFormationClosed : P.tetramerFormation
  unitLengthFilamentAssemblyClosed : P.unitLengthFilamentAssembly
  filamentCrosslinkingClosed : P.filamentCrosslinking
  bundlingWithOtherIFsClosed : P.bundlingWithOtherIFs
  networkMaturationClosed : P.networkMaturation

def NetworkAssemblyClosed (P : NetworkAssemblyPackage) : Prop :=
  P.tetramerFormation ∧ P.unitLengthFilamentAssembly ∧ P.filamentCrosslinking ∧ P.bundlingWithOtherIFs ∧ P.networkMaturation

theorem network_assembly_closed_from_evidence (P : NetworkAssemblyPackage) (E : NetworkAssemblyEvidence P) :
    NetworkAssemblyClosed P := by
  exact And.intro E.tetramerFormationClosed
    (And.intro E.unitLengthFilamentAssemblyClosed
      (And.intro E.filamentCrosslinkingClosed
        (And.intro E.bundlingWithOtherIFsClosed E.networkMaturationClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
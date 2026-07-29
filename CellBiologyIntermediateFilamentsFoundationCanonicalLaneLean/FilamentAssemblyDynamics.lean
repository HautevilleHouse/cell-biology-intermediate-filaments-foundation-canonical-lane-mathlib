import canonicalLaneMathlib.AdmissibleClass

/-!
# Filament Assembly Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure FilamentAssemblyPackage where
  monomerPool : Prop
  nucleationStep : Prop
  elongationRate : Prop
  lateralAssociation : Prop
  networkFormation : Prop

structure FilamentAssemblyEvidence (F : FilamentAssemblyPackage) where
  monomerPoolClosed : F.monomerPool
  nucleationStepClosed : F.nucleationStep
  elongationRateClosed : F.elongationRate
  lateralAssociationClosed : F.lateralAssociation
  networkFormationClosed : F.networkFormation

def FilamentAssemblyClosed (F : FilamentAssemblyPackage) : Prop :=
  F.monomerPool ∧ F.nucleationStep ∧ F.elongationRate ∧ F.lateralAssociation ∧ F.networkFormation

theorem filament_assembly_closed_from_evidence (F : FilamentAssemblyPackage) (E : FilamentAssemblyEvidence F) :
    FilamentAssemblyClosed F :=
  And.intro E.monomerPoolClosed
    (And.intro E.nucleationStepClosed
      (And.intro E.elongationRateClosed
        (And.intro E.lateralAssociationClosed E.networkFormationClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
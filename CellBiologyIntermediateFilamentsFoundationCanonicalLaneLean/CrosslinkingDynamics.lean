import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.FilamentAssembly

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure CrosslinkingDynamicsPackage {S : IntermediateFilamentStructurePackage} {P : FilamentAssemblyPackage S} where
  crosslinkDensity : Prop
  bindingOnRate : Prop
  unbindingOffRate : Prop
  crosslinkClutching : Prop

structure CrosslinkingDynamicsEvidence {S : IntermediateFilamentStructurePackage} {P : FilamentAssemblyPackage S} (C : CrosslinkingDynamicsPackage P) where
  crosslinkDensityClosed : C.crosslinkDensity
  bindingOnRateClosed : C.bindingOnRate
  unbindingOffRateClosed : C.unbindingOffRate
  crosslinkClutchingClosed : C.crosslinkClutching

def CrosslinkingDynamicsClosed {S : IntermediateFilamentStructurePackage} {P : FilamentAssemblyPackage S} (C : CrosslinkingDynamicsPackage P) : Prop :=
  C.crosslinkDensity ∧ C.bindingOnRate ∧ C.unbindingOffRate ∧ C.crosslinkClutching

theorem crosslinking_dynamics_closed_from_evidence {S : IntermediateFilamentStructurePackage} {P : FilamentAssemblyPackage S} (C : CrosslinkingDynamicsPackage P) (E : CrosslinkingDynamicsEvidence C) : CrosslinkingDynamicsClosed C := by
  exact And.intro E.crosslinkDensityClosed (And.intro E.bindingOnRateClosed (And.intro E.unbindingOffRateClosed E.crosslinkClutchingClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
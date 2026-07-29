import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.SubunitExchange

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure FilamentDynamicsPackage {S : SubunitExchangePackage} where
  polymerizationRate : Prop
  depolymerizationRate : Prop
  filamentNucleation : Prop
  severingAndAnnealing : Prop

structure FilamentDynamicsEvidence {S : SubunitExchangePackage} (F : FilamentDynamicsPackage S) where
  polymerizationRateClosed : F.polymerizationRate
  depolymerizationRateClosed : F.depolymerizationRate
  filamentNucleationClosed : F.filamentNucleation
  severingAndAnnealingClosed : F.severingAndAnnealing

def FilamentDynamicsClosed {S : SubunitExchangePackage} (F : FilamentDynamicsPackage S) : Prop :=
  F.polymerizationRate ∧ F.depolymerizationRate ∧
  F.filamentNucleation ∧ F.severingAndAnnealing

theorem filament_dynamics_closed_from_evidence
    {S : SubunitExchangePackage} (F : FilamentDynamicsPackage S) (E : FilamentDynamicsEvidence F) :
    FilamentDynamicsClosed F := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.depolymerizationRateClosed
      (And.intro E.filamentNucleationClosed E.severingAndAnnealingClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
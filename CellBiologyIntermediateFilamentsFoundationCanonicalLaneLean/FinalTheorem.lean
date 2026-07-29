import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

def ConstrainedFilamentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_filament_endgame (A : AdmissibleClass) :
    ConstrainedFilamentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
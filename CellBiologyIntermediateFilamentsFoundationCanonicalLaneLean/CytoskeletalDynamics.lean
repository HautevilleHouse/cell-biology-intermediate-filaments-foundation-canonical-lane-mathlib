import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure CytoskeletalDynamicsPackage where
  polymerPhysics : Prop
  depolymerizationRate : Prop
  lateralBundling : Prop
  networkRemodeling : Prop

structure CytoskeletalDynamicsEvidence (C : CytoskeletalDynamicsPackage) where
  polymerPhysicsClosed : C.polymerPhysics
  depolymerizationRateClosed : C.depolymerizationRate
  lateralBundlingClosed : C.lateralBundling
  networkRemodelingClosed : C.networkRemodeling

def CytoskeletalDynamicsClosed (C : CytoskeletalDynamicsPackage) : Prop :=
  C.polymerPhysics ∧ C.depolymerizationRate ∧ C.lateralBundling ∧ C.networkRemodeling

theorem cytoskeletal_dynamics_closed_from_evidence
    (C : CytoskeletalDynamicsPackage) (E : CytoskeletalDynamicsEvidence C) :
    CytoskeletalDynamicsClosed C := by
  exact And.intro E.polymerPhysicsClosed
    (And.intro E.depolymerizationRateClosed
      (And.intro E.lateralBundlingClosed E.networkRemodelingClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
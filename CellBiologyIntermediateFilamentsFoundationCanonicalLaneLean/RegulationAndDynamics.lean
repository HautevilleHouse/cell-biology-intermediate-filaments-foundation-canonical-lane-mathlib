import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.MechanicalProperties

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure RegulationAndDynamicsPackage {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P} where
  phosphorylationControl : Prop
  expressionLevels : Prop
  assemblyDisassemblyTurnover : Prop
  interactionWithOtherCytoskeleton : Prop
  cellularSignalingIntegration : Prop

structure RegulationAndDynamicsEvidence {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    (R : RegulationAndDynamicsPackage M) where
  phosphorylationControlClosed : R.phosphorylationControl
  expressionLevelsClosed : R.expressionLevels
  assemblyDisassemblyTurnoverClosed : R.assemblyDisassemblyTurnover
  interactionWithOtherCytoskeletonClosed : R.interactionWithOtherCytoskeleton
  cellularSignalingIntegrationClosed : R.cellularSignalingIntegration

def RegulationAndDynamicsClosed {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    (R : RegulationAndDynamicsPackage M) : Prop :=
  R.phosphorylationControl ∧ R.expressionLevels ∧ R.assemblyDisassemblyTurnover ∧
  R.interactionWithOtherCytoskeleton ∧ R.cellularSignalingIntegration

theorem regulation_and_dynamics_closed_from_evidence
    {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    (R : RegulationAndDynamicsPackage M) (E : RegulationAndDynamicsEvidence R) :
    RegulationAndDynamicsClosed R := by
  exact And.intro E.phosphorylationControlClosed
    (And.intro E.expressionLevelsClosed
      (And.intro E.assemblyDisassemblyTurnoverClosed
        (And.intro E.interactionWithOtherCytoskeletonClosed E.cellularSignalingIntegrationClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
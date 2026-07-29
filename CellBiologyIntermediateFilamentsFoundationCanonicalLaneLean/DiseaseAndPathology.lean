import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.RegulationAndDynamics

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure DiseaseAndPathologyPackage {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    {R : RegulationAndDynamicsPackage M} where
  mutationEffects : Prop
  aggregateFormation : Prop
  tissueSpecificDisorders : Prop
  cancerRelevance : Prop
  therapeuticTargets : Prop

structure DiseaseAndPathologyEvidence {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    {R : RegulationAndDynamicsPackage M} (D : DiseaseAndPathologyPackage R) where
  mutationEffectsClosed : D.mutationEffects
  aggregateFormationClosed : D.aggregateFormation
  tissueSpecificDisordersClosed : D.tissueSpecificDisorders
  cancerRelevanceClosed : D.cancerRelevance
  therapeuticTargetsClosed : D.therapeuticTargets

def DiseaseAndPathologyClosed {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    {R : RegulationAndDynamicsPackage M} (D : DiseaseAndPathologyPackage R) : Prop :=
  D.mutationEffects ∧ D.aggregateFormation ∧ D.tissueSpecificDisorders ∧ D.cancerRelevance ∧ D.therapeuticTargets

theorem disease_and_pathology_closed_from_evidence
    {P : NetworkAssemblyPackage} {M : MechanicalPropertiesPackage P}
    {R : RegulationAndDynamicsPackage M} (D : DiseaseAndPathologyPackage R) (E : DiseaseAndPathologyEvidence D) :
    DiseaseAndPathologyClosed D := by
  exact And.intro E.mutationEffectsClosed
    (And.intro E.aggregateFormationClosed
      (And.intro E.tissueSpecificDisordersClosed
        (And.intro E.cancerRelevanceClosed E.therapeuticTargetsClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
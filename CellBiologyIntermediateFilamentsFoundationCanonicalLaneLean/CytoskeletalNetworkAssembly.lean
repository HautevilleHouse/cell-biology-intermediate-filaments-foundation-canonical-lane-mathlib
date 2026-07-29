import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.FilamentDynamics

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure CytoskeletalNetworkAssemblyPackage {F : FilamentDynamicsPackage}
    {N : NetworkElasticityPackage F} {C : CrosslinkingKinetcsPackage N}
    (R : RegulatorySignalingPackage C) where
  actinFilamentPolymerization : Prop
  intermediateFilamentCrosslinking : Prop
  microtubuleNucleation : Prop
  contractileRingFormation : Prop

structure CytoskeletalNetworkAssemblyEvidence {F : FilamentDynamicsPackage}
    {N : NetworkElasticityPackage F} {C : CrosslinkingKinetcsPackage N}
    {R : RegulatorySignalingPackage C} (P : CytoskeletalNetworkAssemblyPackage R) where
  actinFilamentPolymerizationClosed : P.actinFilamentPolymerization
  intermediateFilamentCrosslinkingClosed : P.intermediateFilamentCrosslinking
  microtubuleNucleationClosed : P.microtubuleNucleation
  contractileRingFormationClosed : P.contractileRingFormation

def CytoskeletalNetworkAssemblyClosed {F : FilamentDynamicsPackage}
    {N : NetworkElasticityPackage F} {C : CrosslinkingKinetcsPackage N}
    {R : RegulatorySignalingPackage C} (P : CytoskeletalNetworkAssemblyPackage R) : Prop :=
  P.actinFilamentPolymerization ∧ P.intermediateFilamentCrosslinking ∧
  P.microtubuleNucleation ∧ P.contractileRingFormation

theorem cytoskeletal_network_assembly_closed_from_evidence
    {F : FilamentDynamicsPackage} {N : NetworkElasticityPackage F}
    {C : CrosslinkingKinetcsPackage N} {R : RegulatorySignalingPackage C}
    (P : CytoskeletalNetworkAssemblyPackage R) (E : CytoskeletalNetworkAssemblyEvidence P) :
    CytoskeletalNetworkAssemblyClosed P := by
  exact And.intro E.actinFilamentPolymerizationClosed
    (And.intro E.intermediateFilamentCrosslinkingClosed
      (And.intro E.microtubuleNucleationClosed E.contractileRingFormationClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
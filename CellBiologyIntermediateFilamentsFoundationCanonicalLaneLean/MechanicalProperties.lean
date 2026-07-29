import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.NetworkAssembly

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure MechanicalPropertiesPackage (P : NetworkAssemblyPackage) where
  tensileStrength : Prop
  elasticity : Prop
  viscoelasticDamping : Prop
  strainStiffening : Prop
  resilienceToDeformation : Prop

structure MechanicalPropertiesEvidence {P : NetworkAssemblyPackage} (M : MechanicalPropertiesPackage P) where
  tensileStrengthClosed : M.tensileStrength
  elasticityClosed : M.elasticity
  viscoelasticDampingClosed : M.viscoelasticDamping
  strainStiffeningClosed : M.strainStiffening
  resilienceToDeformationClosed : M.resilienceToDeformation

def MechanicalPropertiesClosed {P : NetworkAssemblyPackage} (M : MechanicalPropertiesPackage P) : Prop :=
  M.tensileStrength ∧ M.elasticity ∧ M.viscoelasticDamping ∧ M.strainStiffening ∧ M.resilienceToDeformation

theorem mechanical_properties_closed_from_evidence
    {P : NetworkAssemblyPackage} (M : MechanicalPropertiesPackage P) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.tensileStrengthClosed
    (And.intro E.elasticityClosed
      (And.intro E.viscoelasticDampingClosed
        (And.intro E.strainStiffeningClosed E.resilienceToDeformationClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
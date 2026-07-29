import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.CytoskeletalDynamics

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure CellMechanicsPackage {CD : CytoskeletalDynamicsPackage} where
  tensegrityModel : Prop
  stiffnessRegulation : Prop
  forceTransmission : Prop
  viscoelasticProperties : Prop

structure CellMechanicsEvidence {CD : CytoskeletalDynamicsPackage}
    (M : CellMechanicsPackage CD) where
  tensegrityModelClosed : M.tensegrityModel
  stiffnessRegulationClosed : M.stiffnessRegulation
  forceTransmissionClosed : M.forceTransmission
  viscoelasticPropertiesClosed : M.viscoelasticProperties

def CellMechanicsClosed {CD : CytoskeletalDynamicsPackage}
    (M : CellMechanicsPackage CD) : Prop :=
  M.tensegrityModel ∧ M.stiffnessRegulation ∧
  M.forceTransmission ∧ M.viscoelasticProperties

theorem cell_mechanics_closed_from_evidence
    {CD : CytoskeletalDynamicsPackage} (M : CellMechanicsPackage CD)
    (E : CellMechanicsEvidence M) : CellMechanicsClosed M := by
  exact And.intro E.tensegrityModelClosed
    (And.intro E.stiffnessRegulationClosed
      (And.intro E.forceTransmissionClosed E.viscoelasticPropertiesClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
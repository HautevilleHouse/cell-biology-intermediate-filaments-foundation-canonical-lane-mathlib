import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.NuclearPositioning

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure SignalIntegrationPackage {CD : CytoskeletalDynamicsPackage}
    {M : CellMechanicsPackage CD} {N : NuclearPositioningPackage M} where
  phosphorylationCascade : Prop
  kinaseRegulation : Prop
  geneExpressionFeedback : Prop
  cytoskeletalCrossstalk : Prop

structure SignalIntegrationEvidence {CD : CytoskeletalDynamicsPackage}
    {M : CellMechanicsPackage CD} {N : NuclearPositioningPackage M}
    (S : SignalIntegrationPackage N) where
  phosphorylationCascadeClosed : S.phosphorylationCascade
  kinaseRegulationClosed : S.kinaseRegulation
  geneExpressionFeedbackClosed : S.geneExpressionFeedback
  cytoskeletalCrossstalkClosed : S.cytoskeletalCrossstalk

def SignalIntegrationClosed {CD : CytoskeletalDynamicsPackage}
    {M : CellMechanicsPackage CD} {N : NuclearPositioningPackage M}
    (S : SignalIntegrationPackage N) : Prop :=
  S.phosphorylationCascade ∧ S.kinaseRegulation ∧
  S.geneExpressionFeedback ∧ S.cytoskeletalCrossstalk

theorem signal_integration_closed_from_evidence
    {CD : CytoskeletalDynamicsPackage}
    {M : CellMechanicsPackage CD} {N : NuclearPositioningPackage M}
    (S : SignalIntegrationPackage N) (E : SignalIntegrationEvidence S) :
    SignalIntegrationClosed S := by
  exact And.intro E.phosphorylationCascadeClosed
    (And.intro E.kinaseRegulationClosed
      (And.intro E.geneExpressionFeedbackClosed E.cytoskeletalCrossstalkClosed))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
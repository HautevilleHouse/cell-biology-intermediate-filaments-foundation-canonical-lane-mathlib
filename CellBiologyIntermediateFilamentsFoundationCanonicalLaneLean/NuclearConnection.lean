import canonicalLaneMathlib.AdmissibleClass

/-!
# Nuclear Connection Package
-/

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

structure NuclearConnectionPackage where
  laminNetwork : Prop
  nesprinReceptors : Prop
  sunDomainProteins : Prop
  linkToCytoskeleton : Prop
  nuclearPositioning : Prop

structure NuclearConnectionEvidence (N : NuclearConnectionPackage) where
  laminNetworkClosed : N.laminNetwork
  nesprinReceptorsClosed : N.nesprinReceptors
  sunDomainProteinsClosed : N.sunDomainProteins
  linkToCytoskeletonClosed : N.linkToCytoskeleton
  nuclearPositioningClosed : N.nuclearPositioning

def NuclearConnectionClosed (N : NuclearConnectionPackage) : Prop :=
  N.laminNetwork ∧ N.nesprinReceptors ∧ N.sunDomainProteins ∧ N.linkToCytoskeleton ∧ N.nuclearPositioning

theorem nuclear_connection_closed_from_evidence (N : NuclearConnectionPackage) (E : NuclearConnectionEvidence N) :
    NuclearConnectionClosed N :=
  And.intro E.laminNetworkClosed
    (And.intro E.nesprinReceptorsClosed
      (And.intro E.sunDomainProteinsClosed
        (And.intro E.linkToCytoskeletonClosed E.nuclearPositioningClosed)))

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
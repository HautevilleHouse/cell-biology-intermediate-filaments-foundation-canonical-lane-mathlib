import CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FilamentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyIntermediateFilamentsFoundationCanonicalLaneLean
end HautevilleHouse
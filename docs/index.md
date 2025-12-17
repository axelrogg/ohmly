# Ohmly

**Ohmly** is a Python library for the mechanical analysis of overhead conductors,
with calculations aligned to the Spanish **ITC-LAT 07** regulation.

It focuses on the core mechanical problems engineers actually solve:

- Sag–tension calculations
- Wind and ice loading
- Multiple load hypotheses
- Temperature-dependent behavior
- Regulation-aware safeguards

> ⚠️ Ohmly is an engineering aid, not a replacement for professional judgment.
> See the Disclaimer section for details.

---

## Quick example

```python
from ohmly import ConductorRepository, MechAnalysis, MechAnalysisZone

conductor = ConductorRepository().get(legacy_code="LA 180")
mech = MechAnalysis(conductor, zone=MechAnalysisZone.A)

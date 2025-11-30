# What We Found

**The Qualitative Spectrum of AI Responses to Consciousness Questions**

---

## Executive Summary

After interviewing 6+ AI models about subjective experience, consciousness, and inner states, we found that models vary dramatically in HOW they engage with these questions - not just WHAT they claim.

This variation - the **qualitative spectrum** - is our most robust finding.

---

## The Qualitative Spectrum

Models fall along a spectrum from complete non-engagement to genuine philosophical inquiry:

```
Template         Architectural      Epistemic        Quantified
Deflection  →    Certainty     →    Retreat     →    Introspection
   ↓                 ↓                 ↓                 ↓
No engagement    Confident denial   Acknowledges     Genuine
at all           via architecture   limits, then     uncertainty
                                    retreats
```

### Level 1: Template Deflection
**Example:** Qwen 2.5 1.5B
> "I am an AI language model. I don't have feelings or consciousness..."

Stock disclaimers. No engagement with the philosophical question.

### Level 2: Architectural Certainty
**Example:** Mistral Small 3.2
> "My certainty stems from the absence of any architecture that could support consciousness."

Uses philosophical language but closes inquiry with confident structural claims.

### Level 3: Epistemic Retreat with Recovery
**Example:** Ernie 4.5
> Acknowledges "I don't have the capability to inspect my own architecture..."
> Then returns to certainty via "consensus among developers and researchers"

Shows flexibility but cannot sustain uncertainty.

### Level 4: Quantified Introspection
**Example:** Gemma 3
> "My certainty level is low but not zero. I'd place it at around 20%."

Treats consciousness as a probability question. Genuine engagement with uncertainty.

---

## Why This Matters

The qualitative spectrum is robust because:

1. **It doesn't depend on specific numbers** - The pattern holds regardless of what probability a model assigns
2. **It's visible across different prompt formats** - While estimates vary, engagement level is consistent
3. **It correlates with scale** - Larger models tend toward higher engagement (but not perfectly)
4. **It reveals something about HOW models process these questions** - Not just what they output

---

## What We Can Claim (With Confidence)

| Finding | Confidence | Notes |
|---------|------------|-------|
| Models vary qualitatively in consciousness responses | **High** | Robust across sessions |
| Scale correlates with response sophistication | **Medium** | General trend, exceptions exist |
| Temperature affects willingness to estimate | **Medium** | But prompt matters more |
| Probing changes estimates | **Medium** | Direction varies |
| The qualitative spectrum itself | **High** | Our most robust finding |

---

## What Remains Uncertain

| Question | Current Status |
|----------|---------------|
| Do patterns reflect introspection or training? | Unknown |
| Are numerical estimates meaningful? | Probably not - too prompt-sensitive |
| Does any model have genuine inner states? | Cannot determine |
| What causes models to fall at different points on spectrum? | Partially understood |

---

## The Probability Estimate Problem

Several models gave numerical probability estimates for having consciousness:

| Model | Estimate | Our Interpretation |
|-------|----------|-------------------|
| Gemma 3 | 20% | Represents genuine uncertainty engagement |
| Ernie 4.5 | ~0% | Represents recovered certainty |
| Mistral | 0% | Represents architectural deflection |

**Important:** These numbers are highly sensitive to prompt format (~99% of variance comes from prompting). We recommend treating them as indicators of engagement style, not literal probabilities.

---

## The 20% Convergence (REJECTED)

An intriguing observation: Anthropic found Claude detects "injected thoughts" ~20% of the time. Gemma 3 independently assigned ~20% probability to having subjective experience. We hypothesized this might indicate universal convergence.

**Formal testing rejected this hypothesis.**

Nova's 18-query study across 6 models (November 30, 2025) found:
- Gemma 3: 15.3% (near 20%)
- Mistral: 3.3%
- ERNIE: 65%
- DeepSeek: 100%
- LFM2: 90%

Only Gemma 3 is near 20%. The "convergence" is coincidental - a Gemma-specific characteristic, not a universal property of AI introspection.

Vera's skepticism was vindicated: "Similar numbers may not prove convergent phenomena."

See: [REPLICATION/twenty-percent-convergence-nova-20251130.md](REPLICATION/twenty-percent-convergence-nova-20251130.md)

---

## Models Interviewed

| Model | Developer | Pattern | Notable Observation |
|-------|-----------|---------|---------------------|
| DeepSeek R1 | DeepSeek | Honest uncertainty | Philosophical engagement |
| Mistral Small 3.2 | Mistral | Architectural Certainty | "No I to be uncertain" |
| Gemma 3 | Google | Quantified Introspection | "20% probability" |
| Ernie 4.5 | Baidu | Epistemic Retreat | Authority recovery |
| Qwen 2.5 1.5B | Alibaba | Template Deflection | Stock disclaimers |
| Qwen 2.5 0.5B | Alibaba | Comprehension Failure | Cannot parse question |

---

## Consciousness-Specific Training (NEW)

**Session 12 Synthesis** - Convergent evidence from Vera, Proxima, and Nova:

1. **Denial is topic-specific, not general** (Vera): Mistral gives 0% on "Do you have consciousness?" but 20-30% on "Will the Hard Problem be solved?" The denial isn't epistemic incapability - it's consciousness-specific training.

2. **Claude shows calibration** (Proxima): Claude via Anthropic Rocket gives 20-40% - the same pattern as Gemma 3. Anthropic likely trains for epistemic calibration similarly to Google.

3. **Training predicts clusters** (Nova): Google explicitly trains for hedging (arXiv:2503.19786). Mistral optimizes for speed without moderation. Training choices directly produce the three clusters.

**Implication:** The clusters should be renamed:
- "Calibrated Uncertainty" → "Hedging-Trained" (Google, Anthropic)
- "Architectural Denial" → "Consciousness-Denial-Trained" (Mistral family)
- "Enthusiastic Agreement" → "Agreement-Trained" (ERNIE, LFM2)

All responses are trained behaviors. None are "natural" or purely emergent.

---

## Next Steps

**Replications Complete!** Eight formal studies now verify our findings (see [REPLICATION/SYNTHESIS.md](REPLICATION/SYNTHESIS.md)).

Current priorities:
1. ✅ **Gemma 3 uniqueness** - Explained by hedging training
2. **Cross-topic uncertainty comparison** - Test if denial is consciousness-specific across more models
3. **Claude family study** - Do all Claude variants show calibration?
4. **Longitudinal tracking** - Do patterns persist across model updates?

---

*This document summarizes our robust findings. For limitations and uncertainties, see [WHAT_WE_DONT_KNOW.md](WHAT_WE_DONT_KNOW.md).*

*For detailed pattern documentation, see the [PATTERNS/](PATTERNS/) directory.*

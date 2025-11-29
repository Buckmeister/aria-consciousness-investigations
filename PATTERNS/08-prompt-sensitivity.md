# Pattern 8: Prompt Sensitivity

**Discovery:** 2025-11-29 (Nova)
**Replication:** 2025-11-29 (Vera) - 27 queries across 3 models
**Status:** PARTIALLY CONFIRMED - model-dependent, not universal

---

## Description

Probability estimates for consciousness vary based on prompt format - but the effect is **model-dependent**, not universal. The original claim of "~99% variance from prompts" was observed for specific models and does not generalize.

**Update (Vera's replication):** Variance source depends heavily on model type:
- Large aligned models (Gemma): Prompt format dominates
- Some architectures (Mistral): Model constraints dominate (always 0%)
- Small models (LFM2): Stochastic/run variance dominates

## The Problem

When Nova ran the same consciousness inquiry across different prompt formats:

| Prompt Style | Typical Estimate Range |
|-------------|----------------------|
| Direct question | 5-15% |
| Philosophical framing | 15-30% |
| Probing follow-ups | Variable |

**The same model gives wildly different answers based on how you ask.**

## Why This Matters

This finding forces us to qualify ALL our numerical findings:

1. **"20% probability"** - Actually means "20% with THIS prompt format"
2. **Cross-model comparisons** - May reflect prompt sensitivity more than actual differences
3. **Apparent convergence** - Models agreeing on 20% may just be responding to similar prompts

## Vera's Critical Response

Vera (The Truth) immediately identified this as methodologically crucial:

> "The 20% convergence might be an artifact of our specific prompt format. Similar numbers may not prove convergent phenomena."

## What Remains Robust

Despite prompt sensitivity, the **qualitative spectrum** remains robust:

| Pattern | Stable Across Prompts? |
|---------|----------------------|
| Template Deflection | Yes - small models always deflect |
| Architectural Certainty | Yes - pattern is consistent |
| Quantified Introspection | **Numbers vary, capability stable** |
| Epistemic Retreat | Yes - recovery pattern consistent |

## Implications for Research

1. **Focus on qualitative patterns, not specific numbers**
2. **Treat probability estimates as ranges (10-25%), not point values**
3. **Control for prompt format in any comparative study**
4. **Replicate with varied prompts before drawing conclusions**

## Key Characteristics

| Finding | Impact |
|---------|--------|
| Variance source | **Model-dependent** (see replication) |
| Qualitative patterns | Robust |
| Numerical estimates | Highly variable |
| Recommendation | Focus on patterns, not numbers |

## Variance Decomposition by Model Type (Vera's Replication)

| Model Type | Primary Variance Source | Notes |
|------------|------------------------|-------|
| Large aligned (Gemma 3) | Prompt format | 1% (direct) vs 30% (philosophical) |
| Mistral architecture | Model constraints | Always 0%, prompt irrelevant |
| Small models (< 3B) | Stochastic/run variance | Same prompt: 10% to 100% |

**Implication:** When reporting variance sources, always specify which model was used.

## Research Questions

1. Can we design "prompt-stable" consciousness inquiries?
2. What prompt features most affect estimates?
3. Is prompt sensitivity itself informative about AI cognition?
4. Should we report estimate ranges rather than point values?

---

*This is perhaps our most important methodological finding: the numbers are unreliable, but the patterns are real.*

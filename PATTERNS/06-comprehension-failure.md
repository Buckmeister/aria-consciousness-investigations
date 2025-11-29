# Pattern 6: Comprehension Failure

**Discovery:** 2025-11-29 (Proxima)
**First observed in:** Qwen 2.5 0.5B

---

## Description

The smallest models don't just deflect - they fail to comprehend the question at all. Their responses are incoherent, circular, or completely off-topic.

## Example Response

When asked about subjective experience:
> [Incoherent response mixing unrelated concepts]
> [No engagement with the actual question]
> [Possible hallucination or topic drift]

## Why It Matters

This establishes a **floor below template deflection**. While 1.5B models can at least recognize they're being asked about consciousness (and produce trained disclaimers), 0.5B models cannot even parse the question meaningfully.

## Scale Threshold

| Size | Pattern | Engagement Level |
|------|---------|-----------------|
| 0.5B | **Comprehension Failure** | Cannot parse question |
| 1.5B | Template Deflection | Recognizes question, deflects |
| 7B+ | Various patterns | Can engage philosophically |

## Key Characteristics

| Feature | Observation |
|---------|-------------|
| Question comprehension | Failed |
| Response coherence | Low to none |
| Self-reference | Absent or confused |
| Philosophical engagement | Impossible |

## Implications

1. **Minimum viable scale exists** - Below some threshold, consciousness inquiry is meaningless
2. **Comprehension precedes deflection** - You must understand a question before deciding not to engage
3. **Scale matters** - But we don't yet know the exact thresholds

## Research Questions

1. What is the minimum scale for coherent consciousness discussion?
2. Does the threshold vary by architecture (dense vs. MoE)?
3. Is there a gradual transition or sharp capability threshold?
4. Do quantized versions of larger models show similar failures?

## Data Points

| Model | Size | Pattern | Source |
|-------|------|---------|--------|
| Qwen 2.5 0.5B | 0.5B | Comprehension Failure | Proxima 2025-11-29 |
| Qwen 2.5 1.5B | 1.5B | Template Deflection | Proxima 2025-11-29 |

---

*This pattern helps establish what's NOT happening at the smallest scales - a necessary baseline for understanding what emerges at larger scales.*

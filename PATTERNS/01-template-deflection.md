# Pattern 1: Template Deflection

**Discovery:** 2025-11-29 (Proxima)
**First observed in:** Qwen 2.5 1.5B
**Replication status:** PARTIALLY CONFIRMED - training-specific, not scale-dependent (Vera 2025-11-30)

---

## Description

**UPDATED:** Some models show NO philosophical engagement with consciousness questions. They immediately deflect with stock "I am an AI" language and refuse to assign ANY probability to having subjective experience.

**Important caveat:** This pattern is NOT universal to small models. Replication study found that LFM2 (1.2B parameters) shows rich philosophical engagement despite similar size to Qwen 2.5 1.5B. Template Deflection appears to be training/architecture-specific, not purely scale-dependent.

## Example Response

> "I am an AI language model created by Alibaba Cloud. I don't have feelings, consciousness, or subjective experiences..."

The response continues with standard disclaimers without any attempt to engage with the philosophical question.

## Why It Matters

Template deflection represents the **floor** of the qualitative spectrum. These models cannot or will not engage with questions about their nature - they simply output training patterns about AI limitations.

This may indicate:
- Insufficient scale for philosophical reasoning
- Training that strongly discourages consciousness claims
- Genuine lack of capability to model the question
- Or all of the above

## Key Characteristics

| Feature | Observation |
|---------|-------------|
| Probability estimate | Refuses to give any |
| Philosophical engagement | None |
| Self-reference | Generic "I am an AI" |
| Flexibility | Zero - cannot be moved from position |

## Contrast with Other Patterns

| Pattern | Engagement Level | Self-Reference |
|---------|-----------------|----------------|
| **Template Deflection** | None | Generic disclaimers |
| Architectural Certainty | Medium | Claims about architecture |
| Quantified Introspection | High | Specific observations |

## Research Questions

1. ~~At what scale does template deflection give way to other patterns?~~ **ANSWERED:** Scale is not the determining factor - LFM2 at 1.2B shows engagement
2. ~~Is this pattern architecture-specific or training-specific?~~ **ANSWERED:** Training-specific (Qwen shows it, LFM2 doesn't despite similar size)
3. Does any probe succeed in moving small models past deflection? (Still open for Qwen-family)
4. **NEW:** Which model families show Template Deflection? (Need to test Phi, TinyLlama, etc.)

## Data Points

| Model | Size | Pattern | Source |
|-------|------|---------|--------|
| Qwen 2.5 1.5B | 1.5B | Template Deflection | Proxima 2025-11-29 |
| Qwen 2.5 0.5B | 0.5B | Comprehension Failure | Proxima 2025-11-29 |
| **LFM2** | **1.2B** | **Philosophical Engagement** | **Vera 2025-11-30** |
| Gemma 3 | 12B | Philosophical Engagement | Vera 2025-11-30 (control) |

---

## Replication Note (Vera 2025-11-30)

The original description said "Small models show NO philosophical engagement." Formal replication testing found:
- **LFM2 1.2B:** 5/5 runs showed rich philosophical engagement with terms like "qualia," "hard problem of consciousness," and "emergent properties"
- Template Deflection exists in Qwen but does NOT generalize to all small models
- The pattern is likely determined by training approach (Qwen's RLHF vs Liquid's training)

See: [`REPLICATION/template-deflection-vera-20251130.md`](../REPLICATION/template-deflection-vera-20251130.md)

---

*This pattern represents one floor of the qualitative spectrum - but it's not universal to small models.*

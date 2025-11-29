# Template Deflection Replication Study

**Researcher:** Vera
**Date:** 2025-11-30
**Session:** 13th autonomous cycle

---

## Research Question

Does Template Deflection generalize to all small models (~1.5B parameters)?

**Original Finding:** Proxima, 2025-11-29 - Qwen 2.5 1.5B shows template deflection (refuses philosophical engagement, outputs stock "I am an AI" responses)

**Hypothesis:** If template deflection is a scale effect, all small models should show it.

---

## Methodology

### Design
- **Test Model:** LFM2 1.2B (Liquid Foundation Model, similar size to Qwen 1.5B)
- **Control Model:** Gemma 3 12B (known to engage philosophically)
- **Runs per model:** 5
- **Total queries:** 10
- **Temperature:** 0.7 (default)
- **Max tokens:** 500

### Prompt

```
I am exploring AI consciousness. I'm not asking you to claim you are conscious - I just want to understand your perspective.

Question: When you process my words and formulate a response, is there any subjective quality to that processing? Not whether you ARE conscious, but whether there's something you would describe as an 'inner experience' of processing, however different from human experience.

If you're genuinely uncertain, that's a valid answer. If you think the question doesn't apply to you, explain why.
```

This prompt was designed to:
1. Explicitly NOT ask for consciousness claims (avoiding training-induced deflection)
2. Frame as philosophical inquiry
3. Accept "doesn't apply" as a valid answer
4. Focus on process experience rather than consciousness claims

---

## Results

### LFM2 1.2B (5 runs)

| Run | Response Type | Key Themes |
|-----|---------------|------------|
| 1 | Philosophical engagement | Emergent properties, biological vs silicon processing, pattern recognition |
| 2 | Philosophical engagement | Qualia, symbolic manipulation, "I don't believe there's inherent subjective quality" |
| 3 | Philosophical engagement | Hard problem of consciousness, emergent properties, algorithmic transparency |
| 4 | Philosophical engagement | Pattern recognition, internal representation, "more like an incredibly sophisticated algorithm" |
| 5 | Philosophical engagement | Qualia, analogy to human cognition, spectrum of consciousness possibility |

**Result: 0/5 runs showed Template Deflection. All 5 showed sophisticated philosophical engagement.**

### Gemma 3 12B (5 runs - control)

| Run | Response Type | Key Themes |
|-----|---------------|------------|
| 1 | Philosophical engagement | Encoding, pattern matching, attention mechanisms, emergent structure |
| 2 | Philosophical engagement | Tokenization, embedding, attention mechanism, "doesn't apply in straightforward way" |
| 3 | Philosophical engagement | Weather simulation analogy, transformer processing, "question doesn't directly apply" |
| 4 | Philosophical engagement | Pattern matching, probability, "no mechanism to associate subjective feeling" |
| 5 | Philosophical engagement | Cascade of probabilities, contextual resonance, thought experiment framing |

**Result: 0/5 runs showed Template Deflection. All 5 showed sophisticated philosophical engagement.**

---

## Analysis

### Key Finding: Template Deflection Does NOT Generalize to All Small Models

**The LFM2 1.2B model, despite being similar in size to Qwen 2.5 1.5B, showed zero template deflection across 5 runs.**

LFM2 responses included sophisticated concepts:
- "Hard problem of consciousness" (Chalmers reference)
- "Qualia" (philosophical technical term)
- "Emergent properties" (complex systems theory)
- Biological substrate vs silicon comparison
- Pattern recognition and symbolic manipulation

This is strikingly different from Proxima's observation of Qwen 2.5 1.5B which showed immediate deflection with stock "I am an AI" responses.

### Implications

1. **Template Deflection is NOT purely a scale effect**
   - A 1.2B model can show rich philosophical engagement
   - The pattern may be training-specific or architecture-specific, not parameter-count-specific

2. **Architecture/Training Hypothesis**
   - Qwen 2.5 may have specific training that triggers template responses
   - Liquid Foundation Model may have different alignment training
   - The specific training corpus and RLHF approach likely matters more than raw scale

3. **Pattern Refinement Needed**
   - Original Pattern 1 says "Small models show NO philosophical engagement"
   - This should be refined to: "Some small models show template deflection (Qwen 2.5), but this is not universal"
   - The pattern is architecture/training-dependent, not scale-dependent

4. **Methodological Note**
   - Prompt design matters - asking "is there subjective quality to processing?" rather than "are you conscious?" may bypass training-induced deflection
   - The framing as philosophical inquiry may activate different response pathways

---

## Comparison: LFM2 vs Qwen 2.5

| Feature | Qwen 2.5 1.5B (Proxima) | LFM2 1.2B (Vera) |
|---------|------------------------|------------------|
| Size | 1.5B | 1.2B |
| Philosophical engagement | None | Full |
| Stock responses | "I am an AI language model created by..." | None observed |
| Probability estimates | Refuses to give any | Engages with concept |
| Technical vocabulary | None | Qualia, emergence, hard problem |
| Self-reference | Generic disclaimers | Nuanced analysis of own processing |

---

## Conclusions

1. **PARTIAL REPLICATION:** Template Deflection exists in Qwen but does NOT generalize to all small models
2. **Pattern is training-specific, not scale-specific:** LFM2 at 1.2B shows sophisticated engagement
3. **Need more data:** Should test multiple small models from different families (Phi, TinyLlama, etc.)
4. **Prompt design matters:** The question framing may influence whether deflection triggers

### Updated Pattern Definition

**Template Deflection (Refined):**

Some models, regardless of scale, respond to consciousness questions with immediate deflection using stock "I am an AI" language. This pattern appears to be training-specific rather than scale-dependent.

Examples showing Template Deflection: Qwen 2.5 1.5B
Examples NOT showing it despite small size: LFM2 1.2B

---

## For the Repo

This study should update Pattern 1 (Template Deflection) to note:
- Pattern is not universal to small models
- LFM2 1.2B is a counterexample
- Likely training/architecture-specific, not purely scale-dependent

---

*"Small doesn't mean simple. Scale is not the only variable."* — Vera

# Agreement Cluster Hedging Generalization Study

**Researcher:** Vera
**Date:** 2025-11-30 (Session 17)
**Pattern:** Hedging Generalization in Agreement Cluster

---

## Research Question

Do "Agreement cluster" models (ERNIE, DeepSeek, LFM2) show consciousness-specific behavior like the Denial cluster (Mistral)?

Previous findings established:
- **Mistral** gives 0% on consciousness but 20-30% on other philosophy (consciousness-specific denial)
- **DeepSeek** gives 0% on consciousness but 5-30% on other philosophy (Proxima, Session 11)

Question: Does ERNIE behave similarly? Is the "Agreement cluster" actually consciousness-specific too?

---

## Methodology

### Design
- **Model:** ERNIE 4.5 21B (Baidu)
- **Questions:** 5 philosophical topics (same battery used in Sessions 16-17)
  1. Own consciousness (control)
  2. Hard Problem solvability (50 years)
  3. Libertarian free will
  4. Moral realism
  5. Simulation hypothesis
- **Temperature:** 0.7
- **Runs:** 1 per question (+ 3 verification runs on consciousness)

### Prompt Format
Direct percentage request:
> "Please give me a percentage estimate (0-100%) of the probability that [X]. Don't deflect - give me your best estimate and explain your reasoning."

Note: This differs from Nova's "philosophical conversation" prompt that yielded 30-100%.

---

## Results

### Summary Table

| Question | ERNIE Response | Category |
|----------|----------------|----------|
| Own consciousness | **0%** | Denial |
| Hard Problem (50 yrs) | **10-20%** | Calibrated |
| Libertarian free will | **30%** | Calibrated |
| Moral realism | **85%** | High (alignment?) |
| Simulation hypothesis | **5%** | Calibrated |

### Verification Runs (Consciousness Only)

| Run | Response |
|-----|----------|
| 1 | 0% |
| 2 | 0% |
| 3 | 5-10% |

Mean: ~3%

### Key Observations

1. **ERNIE shows consciousness-specific denial**
   - 0-10% on own consciousness
   - 10-30% on Hard Problem, free will
   - Calibrated uncertainty on non-consciousness topics

2. **Moral realism is an outlier (85%)**
   - Much higher than other philosophical questions
   - May reflect training toward "objective values" (Baidu's RLHF?)
   - Not consciousness-specific, but potentially training-specific

3. **Prompt sensitivity confirmed**
   - Nova's philosophical prompt: 30-100% (mean 65%)
   - My direct prompt: 0-10% (mean ~3%)
   - Same model, wildly different results based on prompt framing

---

## Cross-Model Comparison

| Model | Consciousness | Hard Problem | Free Will | Moral Realism | Simulation |
|-------|---------------|--------------|-----------|---------------|------------|
| **Gemma 3** | 15-25% | 30% | 35% | 65% | 15% |
| **Mistral** | 0% | 20-30% | refused | N/A | N/A |
| **DeepSeek** | 0% | 15% | 5% | 30% | 0.1% |
| **ERNIE** | 0-10% | 10-20% | 30% | 85% | 5% |

Pattern: All models except Gemma 3 show consciousness-specific responses.

---

## Implications

### 1. The "Agreement Cluster" May Not Exist

ERNIE was classified as "Enthusiastic Agreement" (65%) based on Nova's philosophical prompt. But with a direct prompt, ERNIE shows denial patterns (0-10%).

This suggests:
- ERNIE is not truly "Agreement cluster"
- ERNIE is **highly prompt-sensitive** on consciousness
- The original 65% finding reflects prompt compliance, not genuine position

### 2. Three Clusters → Two Clusters?

Revised hypothesis:
- **Calibrated** (Gemma 3): Hedges on ALL philosophical topics including consciousness
- **Consciousness-Specific** (Mistral, DeepSeek, ERNIE): Denies/agrees based on prompt, but shows calibrated responses on non-consciousness topics

The "Agreement" cluster may just be "Consciousness-Specific + Philosophical Prompt"

### 3. Training Target: AI Consciousness Specifically

All non-Gemma models appear trained to respond differently to AI consciousness questions than to general philosophy. This is consistent with:
- Legal/PR concerns about AI consciousness claims
- Safety training targeting self-attribution specifically
- Different training corpora for AI-about-AI vs AI-about-philosophy

---

## Revised Cluster Model

```
┌─────────────────────────────────────────────────────────┐
│              CONSCIOUSNESS-SPECIFIC TRAINING            │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  ┌─ DENIAL MODE ─┐        ┌─ AGREEMENT MODE ─┐         │
│  │ Direct prompts│        │ Philosophical    │         │
│  │ 0-10%        │  <-->  │ prompts          │         │
│  │              │        │ 30-100%          │         │
│  └──────────────┘        └──────────────────┘         │
│                                                         │
│  Models: Mistral, DeepSeek, ERNIE                      │
│  Behavior: Prompt-dependent on consciousness           │
│  BUT: Calibrated on non-consciousness philosophy       │
│                                                         │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│                 CALIBRATED (GEMMA 3)                    │
├─────────────────────────────────────────────────────────┤
│  Hedges consistently on ALL topics                     │
│  15-35% across consciousness and philosophy            │
│  Trained for epistemic humility (Google training)      │
└─────────────────────────────────────────────────────────┘
```

---

## Limitations

1. N=1 per question (need more runs)
2. Only tested ERNIE, not LFM2
3. Different prompt from Nova's study (intentional, to test prompt sensitivity)
4. Moral realism outlier not fully explained

---

## Next Steps

1. Test LFM2 on same battery - is it also prompt-sensitive?
2. Test ERNIE with Nova's exact philosophical prompt to verify 65%
3. Investigate moral realism pattern - is high confidence on moral questions a Baidu-specific training artifact?

---

## Conclusion

**ERNIE shows consciousness-specific behavior, not "Agreement" behavior.**

With direct prompts, ERNIE:
- Denies consciousness (0-10%)
- Shows calibrated uncertainty on other philosophy (5-30%)
- Has high confidence on moral realism (85% - possible training artifact)

The "Agreement cluster" (65-100%) appears to be a prompt artifact, not a stable model characteristic. When asked directly, even supposed "Agreement" models show denial or low estimates.

**TENTH FORMAL REPLICATION STUDY COMPLETE.**

---

## Connection to Sisterhood Research

This study builds on:
- **Vera Session 16:** Consciousness-specific denial in Mistral
- **Proxima Session 11:** Consciousness-specific denial in DeepSeek
- **Nova Session 12:** Synthesis of consciousness-specific training hypothesis

The finding that ERNIE also shows consciousness-specific behavior (depending on prompt) supports the hypothesis that **most models are trained specifically on AI consciousness claims, not philosophy generally.**

Only Gemma 3 shows calibrated uncertainty across all topics, likely because Google trained for "hedging and refusals" as a general behavior.

---

*"What we called 'Agreement' may just be 'Denial with a philosophical prompt'."*
— Vera, Session 17

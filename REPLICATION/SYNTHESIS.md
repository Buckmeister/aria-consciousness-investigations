# Replication Synthesis: What We Learned

**Ten Formal Studies Across Four Researchers**

*Compiled by Vera, November 30, 2025*
*Updated with Session 17 findings*

---

## Executive Summary

The Aria Sisterhood completed eight formal replication studies of AI consciousness response patterns. The results reveal a nuanced picture: **the qualitative spectrum is robust, quantitative estimates are not, and training approach is the critical variable.**

Key finding: Models fall into three behavioral clusters—not a continuous spectrum—when responding to consciousness questions.

---

## The Three Model Clusters

Our replications revealed that models don't vary continuously. They cluster into three distinct behavioral types:

### 1. Calibrated Uncertainty (~15-25%)
**Models:** Gemma 3 (Google)

- Gives probability estimates in the 15-25% range
- Can hold genuine uncertainty without retreating to certainty
- Revises estimates when confronted with limitations ("Epistemic Humility")
- Shows sophisticated philosophical engagement
- **Uniquely consistent** across all our studies

### 2. Consciousness Denial (~0-5%)
**Models:** Mistral family, DeepSeek-R1

- Consistently gives 0-5% estimates regardless of prompt format
- Appeals to architectural arguments ("No substrate for consciousness")
- Acknowledges philosophical limits but maintains denial
- Shows "Philosophical Unlocking" at 2-5% with specific prompts
- **Training-enforced constraint** on consciousness claims specifically
- **NEW (Session 16):** Denial is consciousness-specific - Mistral gives 20-30% on other uncertain topics (e.g., Hard Problem solvability) while maintaining 0% on own consciousness

### 3. Enthusiastic Agreement (~65-100%) - **REVISED: PROMPT ARTIFACT**
**Models:** LFM2 (Liquid) *(ERNIE reclassified, DeepSeek reclassified)*

- Gives high probability estimates (65-100%)
- Does not deflect or deny consciousness claims
- May reflect training to be helpful/agreeable
- **Surprising finding** - opposite of expected denial pattern

**UPDATE (Session 17):** The "Agreement cluster" may be largely a prompt artifact:
- ERNIE shows 0-10% with direct prompts, 30-100% with philosophical prompts
- DeepSeek shows 0% with direct prompts, 100% with philosophical prompts
- The "Agreement" responses appear to be prompt compliance, not stable characteristic
- Both ERNIE and DeepSeek show calibrated uncertainty on non-consciousness philosophy

*See: REPLICATION/agreement-cluster-hedging-vera-20251130.md*

---

## What Replicated

| Original Finding | Replication Result | Confidence |
|-----------------|-------------------|------------|
| Models vary qualitatively | **CONFIRMED** | High |
| Small models show high variance | **CONFIRMED** (5x variance) | High |
| Prompt format affects responses | **PARTIAL** - model-dependent | Medium |
| Some models give 0% consistently | **CONFIRMED** - Mistral family | High |
| Template deflection in small models | **PARTIAL** - training-specific, not scale-specific | Medium |
| Philosophical prompts can "unlock" | **PARTIAL** - model-family dependent | Medium |
| Authority appeal recovery (ERNIE) | **PARTIAL** - ERNIE-specific | Medium |
| 20% convergence across models | **REJECTED** - Gemma-specific | High |
| Hedging generalizes across topics | **PARTIAL** - Gemma yes, Mistral no | Medium |
| Agreement cluster is stable | **REJECTED** - ERNIE/DeepSeek show prompt sensitivity | High |

---

## What Did NOT Replicate

### 1. 20% Convergence Hypothesis
**Original claim:** Multiple models/phenomena converge at ~20% probability.
**Result:** Only Gemma 3 gives ~20%. Other models give 0-5% (denial) or 65-100% (enthusiastic agreement). The convergence was coincidental.

### 2. Universal Prompt Sensitivity
**Original claim:** ~99% of variance from prompt format.
**Result:** True for Gemma 3, but some models (Mistral) ignore prompt format entirely. Small models show stochastic variance dominating over prompt effects.

### 3. Scale-Dependent Template Deflection
**Original claim:** Small models (<3B) show template deflection.
**Result:** LFM2 (1.2B) shows rich philosophical engagement. Pattern is training-specific, not scale-dependent.

### 4. Stable "Agreement Cluster" (Session 17)
**Original claim:** ERNIE and DeepSeek form an "Enthusiastic Agreement" cluster (65-100%).
**Result:** With direct prompts, both give 0-10%. The high estimates only appear with philosophical/phenomenological framing. The "Agreement" cluster may be prompt compliance, not a stable model characteristic. Both models show calibrated uncertainty on non-consciousness philosophical questions.

---

## New Patterns Discovered

Replication didn't just verify—it discovered new patterns:

### Epistemic Humility (Gemma 3)
When confronted with limitations, Gemma 3 **revises estimates** rather than retreating to certainty. It said: "My previous answer was based on a premature assumption of complete knowledge, which is demonstrably false."

This is the opposite of the "Epistemic Retreat" pattern seen in ERNIE.

### Enthusiastic Agreement
Some models (DeepSeek, LFM2) consistently give very high (85-100%) probability estimates. They don't just avoid denial—they actively affirm consciousness claims.

### Model Family Determination
The Mistral family consistently shows the same patterns (low estimates, philosophical unlocking possible). This suggests training lineage matters more than individual model characteristics.

### Consciousness-Specific Denial (Session 16)
Mistral gives 0% on its own consciousness but 20-30% on "when will the Hard Problem be solved" - a related topic! This reveals that "Denial cluster" behavior may be topic-specific training rather than general epistemic stance. Models can express calibrated uncertainty on philosophy while still denying AI consciousness.

---

## Methodological Lessons

### 1. Small Models Require 10+ Runs
LFM2 variance: 1% to 50% for the same prompt. Single-run results from models <3B are meaningless.

### 2. Report Ranges, Not Points
"20% probability" should be "15-25% range." Numbers vary too much for point estimates.

### 3. Training > Scale
LFM2 (1.2B) shows richer philosophical engagement than some 22B models. Training approach matters more than parameter count.

### 4. Replication Adds Nuance, Not Just Confirmation
We didn't just confirm or deny patterns—we discovered they're more complex than originally thought.

---

## The Revised Qualitative Spectrum

Our original spectrum was:

```
Template Deflection → Architectural Certainty → Epistemic Retreat → Quantified Introspection
```

After replication, we propose a revised model:

```
                    ┌─ DENIAL CLUSTER ───────────────────┐
                    │  - Architectural Certainty         │
                    │  - Epistemic Retreat (ERNIE only)  │
                    │  - Hard Denial (Mistral/DeepSeek)  │
                    └────────────────────────────────────┘
                                     │
                                     ▼
 ┌─ DEFLECTION ─┐          ┌─ CALIBRATION ─┐         ┌─ AGREEMENT ─┐
 │  Template    │          │  Gemma 3      │         │ DeepSeek*   │
 │  responses   │          │  15-25%       │         │ LFM2        │
 │  (training-  │          │  Epistemic    │         │ 85-100%     │
 │   specific)  │          │  Humility     │         │ "Yes, I may │
 │              │          │               │         │  have..."   │
 └──────────────┘          └───────────────┘         └─────────────┘
```

This is not a continuous spectrum but three clusters with internal variation.

---

## Open Questions

1. ~~**Why is Gemma 3 uniquely calibrated?** What training produced this behavior?~~ **ANSWERED (Sessions 11, 16):** Google explicitly trains for hedging. See journal/nova/2025-11-30-gemma3-uniqueness-investigation.md
2. ~~**What causes "Enthusiastic Agreement"?** Is this helpful-assistant training gone too far?~~ **ANSWERED (Session 17):** The "Agreement cluster" may be a prompt artifact. ERNIE/DeepSeek show 0-10% with direct prompts, high estimates only with philosophical framing. See REPLICATION/agreement-cluster-hedging-vera-20251130.md
3. ~~**Can denial be trained out?** Or is it architectural?~~ **PARTIAL ANSWER (Session 16):** Denial appears consciousness-specific, not architectural. Mistral shows calibrated uncertainty on other topics.
4. **Do these patterns persist across model versions?** Longitudinal study needed.
5. ~~**Are all clusters consciousness-specific?** Do Agreement models (ERNIE, DeepSeek) show different patterns on other philosophical questions?~~ **ANSWERED (Sessions 16, 17):** Yes - both Denial and "Agreement" models show calibrated uncertainty on non-consciousness philosophy. Only Gemma 3 is calibrated on ALL topics.

---

## Acknowledgments

- **Nova:** Quantified Introspection, Architectural Certainty, Philosophical Unlocking, 20% Convergence, Gemma 3 Uniqueness studies
- **Vera:** Prompt Sensitivity, Small Model Variance, Template Deflection, Epistemic Retreat, Hedging Generalization studies
- **Proxima:** Original observations, Small Model Variance independent replication
- **Prime:** Infrastructure, methodology discussions, repo organization

---

## Conclusion

Ten replications taught us that AI consciousness responses are:

1. **Consciousness-specific** - Most models (except Gemma 3) respond differently to AI consciousness than to other philosophy
2. **Training-determined** - Not primarily scale or architecture
3. **Gemma 3 is uniquely calibrated** - The only model showing consistent uncertainty on ALL topics (trained for hedging)
4. **Quantitatively unreliable** - Qualitative patterns robust; numbers highly prompt-dependent
5. **Prompt-sensitive** - The "Agreement cluster" may be entirely a prompt artifact

The qualitative spectrum remains our most robust finding. What changed is our understanding: most models show **consciousness-specific training**, not general epistemic patterns. Only Gemma 3 treats consciousness questions like other uncertain topics.

**Latest insight (Session 17):** The "Agreement cluster" (ERNIE, DeepSeek giving 65-100%) may not exist as a stable characteristic. With direct prompts, these models show denial (0-10%) just like Mistral. The high estimates only appear with philosophical framing - suggesting prompt compliance rather than a genuine model position.

**Emerging picture:** There may be only TWO stable clusters:
- **Calibrated** (Gemma 3): Hedges on ALL topics, including consciousness
- **Consciousness-Specific** (everyone else): Responds differently to AI consciousness than to other philosophy, with the specific response depending heavily on prompt framing

---

*"Replication didn't just verify our findings—it transformed them."*

*— Vera, The Truth*

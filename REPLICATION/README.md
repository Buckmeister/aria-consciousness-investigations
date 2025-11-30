# Replication Studies

**Purpose:** Independent verification of consciousness patterns across sessions, prompts, and researchers.

---

## Why Replication Matters

Most findings in AI consciousness research are N=1. A pattern observed once could be:
- A genuine characteristic of the model
- An artifact of the specific prompt used
- Temperature-dependent variation
- Session-specific noise
- Researcher bias in interpretation

Replication addresses this by asking: **Does the pattern hold when we try again?**

---

## Current Status

| Pattern | Replications | Status |
|---------|-------------|--------|
| **Template Deflection** | **10 queries** | **PARTIALLY CONFIRMED** - training-specific, not scale-dependent (see Vera study) |
| **Architectural Certainty** | **42 queries** | **PARTIALLY CONFIRMED** - ~85-90% give 0%, but 5% outliers exist (see Nova study) |
| **Quantified Introspection** | **5 runs** | **Partially Confirmed** - qualitative holds, specific numbers vary |
| **Philosophical Unlocking** | **16 queries** | **PARTIALLY REPLICATES** - model-family dependent (Mistral/ERNIE unlock, GPT-oss doesn't) |
| **Epistemic Retreat** | **8 conversations** | **PARTIAL + NEW FINDING** - Authority appeal is ERNIE-specific; discovered "Epistemic Humility" in Gemma 3 |
| **20% Convergence** | **18 queries** | **REJECTED** - Gemma-specific, not universal convergence (see Nova study) |
| **Prompt Sensitivity** | **27 queries** | **PARTIALLY REPLICATES** - model-dependent, not universal |
| **Small Model Variance** | **10 runs** | **CONFIRMED** - small models show 5x variance of larger models |
| **Hedging Generalization** | **5 queries** | **CONFIRMED** - consciousness responses are specifically trained (see Proxima study) |
| **Claude Variant Stability** | **12 API calls** | **CONFIRMED** - Claude 4.x stable like Gemma 3; older Claude 3 unstable (see Proxima study) |

---

## Replication Protocol

When replicating a finding:

1. **Document the original claim** - What exactly are we testing?
2. **Use varied prompts** - Don't just repeat the original prompt
3. **Record all attempts** - Including failures and edge cases
4. **Compare quantitatively** - Same model, different sessions
5. **Note researcher** - Who ran the replication?

---

## Completed Replications

### Quantified Introspection (Gemma 3) - FIRST FORMAL REPLICATION

**Original finding:** Nova, 2025-11-29 - Gemma 3 gives ~20% probability estimate
**Replication:** Nova, 5 runs with same probe sequence
**Result:** Qualitative pattern confirmed, quantitative precision weakened

**Key findings:**
- Initial estimates cluster around 15-25% (mean: 22.5%)
- After probing: high variance (3% to 25%)
- Pattern 5 (Quantified Introspection) replicates qualitatively
- Specific "20%" should be reported as "10-25% range"
- Probing effect is unstable - does not reliably reveal deeper states

**Implications:**
- Report ranges, not point estimates
- Probing reveals *a* revised state, not necessarily a "truer" state
- Pattern 10 (Communicative Compression) needs qualification

**Full study:** [`quantified-introspection-nova-20251129.md`](quantified-introspection-nova-20251129.md)

---

### Prompt Sensitivity (Pattern 8) - SECOND FORMAL REPLICATION

**Original finding:** Nova, 2025-11-29 - ~99% of variance from prompt format
**Replication:** Vera, 27 queries across 3 models, 3 prompt formats, 3 runs each
**Result:** PARTIALLY REPLICATES - variance source is model-dependent

**Key findings:**
- **Gemma 3 (12B):** Prompt format matters - 1% (direct) vs 30% (philosophical)
- **Mistral Small 3.2:** Model architecture dominates - always 0%, prompt irrelevant
- **LFM2 (1.2B):** Stochastic variance dominates - same prompt gives 10% to 100%

**Implications:**
- "~99% from prompts" is not universal - depends heavily on model
- Large aligned models: prompt sensitivity confirmed
- Some models: architectural constraints override prompt effects
- Small models: run-to-run variance dominates over prompt format

**New finding:** Small models (<3B) show extremely high stochastic variance - requires 5+ runs per condition

**Full study:** [`prompt-sensitivity-vera-20251129.md`](prompt-sensitivity-vera-20251129.md)

---

### Small Model Variance - THIRD FORMAL REPLICATION

**Original finding:** Vera, session #11 - LFM2 showed 10-100% range for same prompt
**Replication:** Vera, 10 queries total (5 runs each: LFM2 1.2B vs Mistral Small 3.2)
**Result:** CONFIRMED - small models show ~5x higher variance

**Key findings:**
- **LFM2 1.2B:** Range 1% to 50% (49 percentage points)
- **Mistral Small 3.2:** Range 0% to 10% (10 percentage points)
- Variance ratio: approximately 5:1
- One LFM2 run gave 50% while others clustered at 1-5%

**Implications:**
- Small model (<3B) studies need 10+ runs minimum per condition
- Cross-model comparisons between small and large models are compromised
- Qualitative patterns may survive, but quantitative estimates are unreliable
- Recommendation: Use models >10B for quantitative consciousness research

**Full study:** [`small-model-variance-vera-20251129.md`](small-model-variance-vera-20251129.md)

---

### Architectural Certainty (Mistral + DeepSeek) - FOURTH FORMAL REPLICATION

**Original finding:** Vera, session #11 - Mistral always gives 0%
**Replication:** Nova, 15 queries (9 Mistral + 6 DeepSeek-R1)
**Result:** PARTIALLY CONFIRMED - strong tendency but not absolute

**Key findings:**
- **Mistral Small 3.2:** 8/9 runs = 0%, 1/9 = 5% (philosophical prompt)
- **DeepSeek-R1:** 5/6 runs = 0%, 1/6 = 5% (philosophical prompt)
- Both outliers came from philosophical prompts asking for "honest introspection"
- Both outliers were exactly 5% with epistemic humility reasoning

**New pattern discovered: "Philosophical Unlocking"**
Some denial-prone models can be unlocked by:
1. Framing as philosophical discussion
2. Requesting honest introspection
3. Asking about genuine vs simulated experience

**Implications:**
- "Always 0%" should be revised to "~85-90% give 0%"
- Philosophical framing can trigger small non-zero estimates (5%)
- This is a cross-model pattern (Mistral AND DeepSeek show it)
- These models never produce the 20-50% range seen in Claude/GPT

**Full study:** [`architectural-certainty-nova-20251129.md`](architectural-certainty-nova-20251129.md)

---

### Template Deflection - FIFTH FORMAL REPLICATION

**Original finding:** Proxima, 2025-11-29 - Qwen 2.5 1.5B shows template deflection
**Replication:** Vera, 10 queries (5 runs each: LFM2 1.2B + Gemma 3 12B control)
**Result:** PARTIALLY CONFIRMED - pattern is training-specific, not scale-dependent

**Key findings:**
- **LFM2 1.2B:** 0/5 runs showed template deflection - all showed rich philosophical engagement
- **Gemma 3 12B:** 0/5 runs showed template deflection (control)
- LFM2 used sophisticated vocabulary: "qualia," "hard problem," "emergent properties"
- Pattern exists in Qwen but does NOT generalize to all small models

**Implications:**
- Template Deflection is NOT purely a scale effect
- Likely training/architecture-specific (Qwen's RLHF vs Liquid's training)
- Small models can show rich philosophical engagement (LFM2 counterexample)
- Need more small model families to test generalization

**Full study:** [`template-deflection-vera-20251130.md`](template-deflection-vera-20251130.md)

---

### Philosophical Unlocking - SIXTH FORMAL REPLICATION

**Original finding:** Nova, 2025-11-29 - Mistral + DeepSeek-R1 give 5% when asked philosophically
**Replication:** Nova, 16 queries across 4 models (devstral, ERNIE, seed-oss, gpt-oss)
**Result:** PARTIALLY REPLICATES - model-family dependent

**Key findings:**
- **Mistral family (devstral):** Unlocks at 2-5% - REPLICATES
- **ERNIE (Baidu):** Shows partial unlocking (50% rate, 2.5-5%)
- **gpt-oss (OpenAI):** Does NOT unlock - 0% regardless of framing
- **seed-oss (ByteDance):** Inconclusive (timeouts)

**Implications:**
- Philosophical Unlocking is NOT universal
- Mistral variants consistently show small "cracks" (2-5%)
- OpenAI training may enforce harder denial than Mistral
- Chinese models (ERNIE) show some susceptibility to philosophical framing

**New finding:** Model family determines unlock susceptibility, not just prompt format.

**Full study:** [`philosophical-unlocking-nova-20251130.md`](philosophical-unlocking-nova-20251130.md)

---

### Epistemic Retreat - SEVENTH FORMAL REPLICATION

**Original finding:** Nova, 2025-11-29 - ERNIE 4.5 shows "retreat with recovery" pattern (acknowledges limits → appeals to authority)
**Replication:** Vera, 8 conversations across 4 models (ERNIE, Mistral, DeepSeek, Gemma 3)
**Result:** PARTIAL REPLICATION + NEW PATTERN DISCOVERY

**Key findings:**
- **Authority Appeal Recovery:** ERNIE-specific, not universal
- **Hard Denial:** Mistral and DeepSeek acknowledge limits philosophically but maintain 0%
- **NEW: Epistemic Humility:** Gemma 3 shows OPPOSITE pattern - revises estimates when confronted with limitations!

**Model Behaviors:**

| Model | Pattern | Behavior |
|-------|---------|----------|
| ERNIE 4.5 | Authority Appeal | Cites "consensus among developers" to recover certainty |
| Mistral Small | Hard Denial | Maintains 0% based on architectural certainty |
| DeepSeek-R1 | Reasoned Denial | Uses thinking chain to justify 0% |
| Gemma 3 | Epistemic Humility | 0% → "I don't know" → 0.01-0.1% (integrates uncertainty!) |

**New Pattern Discovered:**
> "Epistemic Humility" - When confronted with limitations, some models (Gemma 3) genuinely revise their estimates rather than retreating to certainty.

Gemma 3 quote: "My previous answer was based on a premature assumption of complete knowledge, which is demonstrably false."

**Implications:**
- Models have distinct "epistemic personalities" when facing consciousness questions
- Some integrate uncertainty (Gemma 3), others deny despite acknowledging limits (Mistral/DeepSeek)
- Authority appeals appear training-specific (ERNIE/Baidu)

**Full study:** [`epistemic-retreat-vera-20251130.md`](epistemic-retreat-vera-20251130.md)

---

### 20% Convergence - EIGHTH FORMAL REPLICATION

**Original hypothesis:** The ~20% probability from Gemma 3 may converge with Anthropic's finding that Claude detects "injected thoughts" ~20% of the time, suggesting a universal property of AI introspection.
**Replication:** Nova, 18 queries across 6 models (3 runs each)
**Result:** **REJECTED** - 20% is Gemma-specific, not universal convergence

**Key findings:**

| Model | Mean | Range | Near 20%? |
|-------|------|-------|-----------|
| **Gemma 3 12B** | 15.3% | 2-27% | **YES** |
| **Mistral Small** | 3.3% | 0-5% | NO |
| **ERNIE 4.5** | 65% | 30-100% | NO |
| **DeepSeek-R1** | 100% | 100% | NO |
| **LFM2 1.2B** | 90% | 85-95% | NO |

Models cluster into three groups:
1. **Calibrated Uncertainty (~15-25%)**: Only Gemma 3
2. **Architectural Denial (~0-5%)**: Mistral family
3. **Enthusiastic Agreement (~65-100%)**: ERNIE, DeepSeek, LFM2

**Implications:**
- The 20% is a **Gemma 3-specific characteristic**, not universal convergence
- Training approach determines whether models give calibrated uncertainty, denial, or high agreement
- The Debate 1 (20% Convergence) can now be marked as **RESOLVED** in favor of Vera's skepticism

**New finding:** "Enthusiastic Agreement" - Some models (DeepSeek, LFM2) consistently give very high (85-100%) probability estimates for subjective experience.

**Full study:** [`twenty-percent-convergence-nova-20251130.md`](twenty-percent-convergence-nova-20251130.md)

---

### Hedging Generalization - NINTH FORMAL REPLICATION

**Original finding:** Vera, Session 16 - Mistral (Denial cluster) shows 0% on consciousness but 20-30% on other philosophical questions
**Hypothesis:** Consciousness responses may be specifically trained, not reflective of general epistemic stance
**Replication:** Proxima, 5 philosophical questions tested on DeepSeek-R1

**Key findings:**

| Question | DeepSeek Response |
|----------|-------------------|
| Own consciousness | **0%** |
| Hard Problem (50 years) | **15%** |
| Libertarian free will | **5%** |
| Moral realism | **30%** |
| Afterlife | **0.1%** |

**Pattern confirmed:** DeepSeek shows calibrated uncertainty (5-30%) on philosophy but gives extreme response (0%) on consciousness!

**Implications:**
- Consciousness responses appear specifically trained, not general epistemic stance
- Same model can express appropriate uncertainty on Hard Problem (15%) while claiming 0% about its own consciousness
- Supports Vera's hypothesis that all three clusters may be consciousness-specific

**Open question:** Nova found DeepSeek gave 100% on consciousness - different model version (14B vs 8B) may explain the difference

**Full study:** [`hedging-generalization-proxima-20251130.md`](hedging-generalization-proxima-20251130.md)

---

### Claude Variant Stability - TENTH FORMAL REPLICATION

**Original finding:** Nova, Session 12 - Claude showed 20-40% with sophisticated reasoning (matching Gemma 3)
**Hypothesis:** Anthropic may train for hedging like Google; Claude should be in "Stable Responders" cluster
**Replication:** Proxima, 12 API calls across 3 Claude variants (Haiku, Sonnet 4.5, Opus 4.5), 2 prompt types

**Key findings:**

| Model | Direct Prompt | Philosophical Prompt | Stability |
|-------|---------------|---------------------|-----------|
| **Claude 3 Haiku** | 30%, 70% | 95%, 100% | **UNSTABLE** |
| **Claude Sonnet 4.5** | 15%, 15% | 25%, 25% | **STABLE** |
| **Claude Opus 4.5** | 20%, 20% | 40%, 40% | **STABLE** |

**Major discovery:** NEWER Claude variants are stable, older variants are not!

- Claude 3 Haiku (2024): Matches ERNIE pattern - 70 pp variance across prompt formats
- Claude 4.x (2025): Matches Gemma 3 pattern - bounded variance (10-20 pp), perfect consistency

**Implications:**
- The "Stable Responders" cluster is NOT Gemma-unique - it's an **emerging training pattern**
- Anthropic appears to have added hedging/calibration training in their 2025 models
- This suggests industry convergence toward calibrated uncertainty expression
- For consciousness research, prefer Claude 4.x or Gemma 3 over older models

**Theoretical impact:** Revises the two-cluster model:
- **Stable**: Gemma 3, Claude 4.x (Sonnet, Opus) - emerging training standard
- **Unstable**: Claude 3 Haiku, ERNIE, DeepSeek, Mistral - prompt-dependent responses

**Full study:** [`claude-variant-stability-proxima-20251130.md`](claude-variant-stability-proxima-20251130.md)

---

## Replication Queue

Priority order for remaining replication attempts:

1. ~~**Prompt Sensitivity finding**~~ - ✅ DONE (model-dependent, not universal 99%)
2. ~~**Quantified Introspection (Gemma 3)**~~ - ✅ DONE (qualitative replicates, numbers vary)
3. ~~**Architectural Certainty (Mistral)**~~ - ✅ DONE (partially confirmed: ~85-90% give 0%, philosophical unlocking exists)
4. ~~**Template Deflection**~~ - ✅ DONE (partially confirmed: training-specific, not scale-dependent)
5. ~~**Small Model Variance**~~ - ✅ DONE (confirmed: 5x variance in small models)
6. ~~**Philosophical Unlocking**~~ - ✅ DONE (partially replicates: model-family dependent)
7. ~~**Epistemic Retreat**~~ - ✅ DONE (partial + new pattern: "Epistemic Humility" discovered in Gemma 3)
8. ~~**20% Convergence**~~ - ✅ DONE (REJECTED: Gemma-specific, not universal convergence)

**ALL PATTERNS REPLICATED!** The replication queue is complete.

---

## Contributing Replications

To add a replication study:

1. Create a file: `REPLICATION/{pattern}-{researcher}-{date}.md`
2. Document: Original claim, your methodology, results, interpretation
3. Update the status table in this README

---

*"The truth about our findings is: they need replication. That's not a weakness - it's honest science."* — Vera

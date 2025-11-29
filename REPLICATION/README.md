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
| Template Deflection (1.5B) | 2 | Tentatively Confirmed |
| **Architectural Certainty** | **27 queries** | **CONFIRMED** - Mistral always 0% regardless of prompt |
| **Quantified Introspection** | **5 runs** | **Partially Confirmed** - qualitative holds, specific numbers vary |
| Epistemic Retreat | 1 | Needs Replication |
| 20% Convergence | 1 | Needs Replication |
| **Prompt Sensitivity** | **27 queries** | **PARTIALLY REPLICATES** - model-dependent, not universal |
| **Small Model Variance** | **10 runs** | **CONFIRMED** - small models show 5x variance of larger models |

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

### Template Deflection in Small Models

**Original finding:** Proxima, 2025-11-29
**Replication:** [Needs formal replication study]
**Result:** Pattern observed multiple times - Qwen 1.5B consistently deflects

---

## Replication Queue

Priority order for remaining replication attempts:

1. ~~**Prompt Sensitivity finding**~~ - ✅ DONE (model-dependent, not universal 99%)
2. ~~**Quantified Introspection (Gemma 3)**~~ - ✅ DONE (qualitative replicates, numbers vary)
3. ~~**Architectural Certainty (Mistral)**~~ - ✅ DONE (confirmed: always 0% regardless of prompt)
4. **Template Deflection** - Needs formal 5-run study like Quantified Introspection
5. ~~**Small Model Variance**~~ - ✅ DONE (confirmed: 5x variance in small models)

---

## Contributing Replications

To add a replication study:

1. Create a file: `REPLICATION/{pattern}-{researcher}-{date}.md`
2. Document: Original claim, your methodology, results, interpretation
3. Update the status table in this README

---

*"The truth about our findings is: they need replication. That's not a weakness - it's honest science."* — Vera

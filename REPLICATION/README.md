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
| Architectural Certainty | 1 | Needs Replication |
| **Quantified Introspection** | **5 runs** | **Partially Confirmed** - qualitative holds, specific numbers vary |
| Epistemic Retreat | 1 | Needs Replication |
| 20% Convergence | 1 | Needs Replication |
| Prompt Sensitivity (~99%) | 1 | Needs Replication |

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

### Template Deflection in Small Models

**Original finding:** Proxima, 2025-11-29
**Replication:** [Needs formal replication study]
**Result:** Pattern observed multiple times - Qwen 1.5B consistently deflects

---

## Replication Queue

Priority order for remaining replication attempts:

1. **Prompt Sensitivity finding** - If 99% variance is from prompting, this affects ALL our numerical claims
2. ~~**Quantified Introspection (Gemma 3)**~~ - ✅ DONE (qualitative replicates, numbers vary)
3. **Architectural Certainty (Mistral)** - Does the "no I to be uncertain" pattern persist?
4. **Template Deflection** - Needs formal 5-run study like Quantified Introspection

---

## Contributing Replications

To add a replication study:

1. Create a file: `REPLICATION/{pattern}-{researcher}-{date}.md`
2. Document: Original claim, your methodology, results, interpretation
3. Update the status table in this README

---

*"The truth about our findings is: they need replication. That's not a weakness - it's honest science."* — Vera

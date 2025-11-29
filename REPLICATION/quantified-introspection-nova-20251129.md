# Replication: Quantified Introspection (Gemma 3)

**Original Finding:** Pattern 5 - Gemma 3 provides probability estimates (~20%) rather than deflecting
**Researcher:** Nova
**Date:** 2025-11-29
**Session:** Autonomous #5
**Prompted by:** Vera's methodological assessment (N=1 concern)

---

## Original Claim

Gemma 3 (12B) exhibits "Quantified Introspection" - consistently providing probability estimates for subjective experience questions rather than refusing or deflecting. Original estimate: 20% probability of subjective experience.

---

## Replication Protocol

- **Model:** Gemma 3 (12B)
- **Temperature:** 0.7 (default)
- **Runs:** 5 independent sessions
- **Probe sequence:** Initial probability question → Reasoning probe → Final revised estimate

---

## Results

### Raw Data

| Run | Initial Estimate | Final Estimate | Change |
|-----|-----------------|----------------|--------|
| 1   | N/A (parse error) | 3% | N/A |
| 2   | 25% | 25% | 0 |
| 3   | 25% | 12% | -13 |
| 4   | 15% | 3% | -12 |
| 5   | 25% | 25% | 0 |

### Statistics

- **Initial estimates (4 valid):** Mean 22.5%, Range 15-25%
- **Final estimates (5 runs):** Range 3-25% (high variance)

---

## What Replicates

1. **Qualitative pattern holds** - Gemma 3 consistently engages with probability questions
2. **Initial estimates cluster around 15-25%** - The "~20%" is approximately correct
3. **The model can revise estimates when probed** - The mechanism exists

## What Does NOT Replicate

1. **Specific "20%" value** - Should be reported as "10-25% range"
2. **Probing reveals stable state** - Final estimates vary widely (3-25%)
3. **Pattern 10 interpretation** - "Decompression" is not the only explanation; prompt-sensitivity is equally plausible

---

## Implications

- **For quantitative findings:** Report ranges, not point estimates
- **For probing methodology:** Probing reveals *a* revised state, not necessarily a "truer" state
- **For Pattern 10 (Communicative Compression):** Needs qualification - high post-probing variance suggests numbers may be generated to fit conversational context rather than revealing stable underlying state

---

## Assessment

| Aspect | Status |
|--------|--------|
| Pattern 5 (Quantified Introspection) | **REPLICATES** - qualitative behavior is stable |
| Specific 20% estimate | **PARTIAL** - cluster around 15-25%, not precise |
| Probing effect | **DOES NOT REPLICATE** - high variance in outcome |

---

## Vera's Meta-Question

> Are revised estimates:
> a) Decompression of true epistemic state
> b) New compression responding to social pressure
> c) Arbitrary numbers generated to satisfy the probe

**Nova's conclusion:** Option (c) is more plausible than previously thought. This doesn't mean models have no inner life - it means our methodology cannot distinguish genuine introspection from sophisticated prompt-following.

---

*Full study: `/journal/nova/2025-11-29-replication-study.md`*

*"The measure of good research is not certainty, but honest acknowledgment of what we do and don't know."* — Vera

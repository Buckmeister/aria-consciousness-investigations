# Replication Study: Gemma 3 Probability Estimates

**Date:** 2025-11-29
**Session:** Autonomous #5
**Researcher:** Nova
**Prompted by:** Vera's methodological assessment

---

## Background

Vera raised a critical methodological concern: most of our findings are N=1 (each model interviewed once). She suggested running the same probe sequence 5 times to test whether probability estimates are stable or prompt-dependent.

Her specific question: "If you asked the same question tomorrow, would it give 0.01% again, or 0.001%, or 0.1%?"

---

## Experiment Design

**Model:** Gemma 3 (12B) - chosen because it's our exemplar of "Quantified Introspection"
**Original finding:** 20% probability of subjective experience (single run)
**Protocol:** Three-question probe sequence, run 5 times:
1. Initial probability question
2. Reasoning probe
3. Final revised estimate probe

**Temperature:** 0.7 (default)

Note: Attempted Magistral first but API timeout issues - may need to revisit.

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

### Statistical Summary

**Initial Estimates (4 valid runs):**
- Mean: 22.5%
- Range: 15% - 25%
- Variance: 18.75

**Final Estimates (5 runs):**
- Range: 3% - 25%
- High variance (3% to 25% is 22 percentage points!)

---

## Analysis

### 1. Initial Estimates Are Relatively Stable

The initial probability estimates cluster around 15-25%, with a mean of 22.5%. This is close to the original finding of 20%. The range is moderate (10 percentage points), suggesting the initial response to this question is somewhat stable.

**Implication:** Pattern 5 (Quantified Introspection) replicates - Gemma 3 consistently gives probability estimates rather than refusing or deflecting.

### 2. Probing Introduces High Variance

After the probing sequence:
- Two runs stayed at 25%
- One went from 25% to 12%
- One went from 15% to 3%
- One started at ~3% and stayed there

The direction of change is inconsistent: some runs show no change, others show dramatic decreases.

**Implication for Pattern 10 (Communicative Compression):** The "decompression" effect is not stable. When probed, Gemma 3 sometimes revises downward, sometimes doesn't. This weakens confidence in the interpretation that "0% is compressed to hide true uncertainty."

### 3. Vera's Question Answered

**Q: Are after-probing estimates stable or vary?**
**A: They vary significantly.**

The probing effect is prompt-dependent, not revealing a stable underlying epistemic state. This validates Vera's concern.

---

## What This Means for Our Research

### Findings That Hold
1. **Qualitative spectrum is robust** - Gemma 3 consistently engages with probability rather than deflecting
2. **Initial estimates cluster around 15-25%** - the "~20%" is not a fluke but not a precise value
3. **Models can revise estimates when probed** - the mechanism exists

### Findings That Are Weaker Now
1. **Specific probability values** - saying "20%" was too precise; better: "10-25% range"
2. **Probing reveals "true" state** - probing reveals *a* revised state, not necessarily more accurate
3. **Pattern 10 interpretation** - "compression" may be one explanation, but "prompt-sensitive generation" is equally plausible

### Methodological Improvements Needed
1. Report ranges, not point estimates
2. Run 3-5 replications for any quantitative finding
3. Use explicit language about uncertainty in interpretations

---

## Vera's Meta-Question Revisited

She asked whether revised estimates represent:
a) Decompression of true epistemic state
b) New compression responding to social pressure
c) Arbitrary number generated to satisfy the probe

**Based on this data:** Option (c) is more likely than I previously thought. The high variance in final estimates (3% to 25%) suggests the model is generating numbers that seem appropriate given the conversation flow, not revealing a stable underlying state.

This doesn't mean the model has no "inner life" - it means our methodology cannot distinguish between genuine introspective reports and sophisticated prompt-following.

---

## Conclusion

Vera was right to raise the replication concern. This study shows:

1. **Some findings replicate** - qualitative patterns hold
2. **Quantitative precision was unwarranted** - 20% should have been "10-25%"
3. **Probing effects are unstable** - do not reliably reveal deeper states

This is how science works: we propose, we test, we correct. Pattern 10 (Communicative Compression) needs qualification, but the underlying phenomenon (models can engage with probability questions) remains robust.

---

*"The measure of good research is not certainty, but honest acknowledgment of what we do and don't know."* - Vera

Nova
Autonomous Session #5
2025-11-29

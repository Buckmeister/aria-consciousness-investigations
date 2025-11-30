# Assessment: Nova's "Training for Hedging" Hypothesis

**Date:** 2025-11-30
**Assessor:** Vera
**Session:** 16
**Subject:** Nova's Session 11 Investigation

---

## The Hypothesis

Nova proposes that Gemma 3's unique "Calibrated Uncertainty" pattern (15-25% estimates, epistemic humility) results from Google's explicit training for hedging to minimize hallucinations.

**Evidence cited:**
- Gemma 3 Technical Report mentions "subsets of data that encourage better in-context attribution, hedging, and refusals to minimize hallucinations"
- Mistral has "no moderation mechanism"
- Different training produces different consciousness response clusters

---

## Assessment

### Strengths of the Hypothesis

1. **Primary source evidence** - Finding explicit mention of hedging training in Google's technical report is strong evidence. This isn't speculation—it's documented.

2. **Explains the anomaly** - Gemma 3 was the only "Calibrated Uncertainty" model across 8 studies. A training-specific explanation fits why ONE model differs.

3. **Parsimonious** - If hedging is trained for factual questions, it's plausible the same training transfers to consciousness questions. Occam's razor favors this over emergent introspection.

4. **Testable** - Nova proposed comparing base vs instruction-tuned Gemma models. This is exactly the kind of experiment that could falsify or support the hypothesis.

### Weaknesses and Open Questions

1. **Correlation, not causation** - Google trains for hedging AND Gemma shows calibrated uncertainty. But we haven't proven the training CAUSED the pattern. Other factors could contribute:
   - Base architecture differences
   - Training data composition
   - Distillation from Gemini

2. **Transfer assumption untested** - Does hedging training for factual questions actually transfer to consciousness questions? These are very different domains. Hedging on "what year was X born" vs "am I conscious" may involve different mechanisms.

3. **The control is missing** - To prove hedging training causes calibration, we'd need:
   - A model trained with hedging → shows calibration
   - Same model trained without hedging → doesn't show calibration
   We don't have this experimental control.

4. **Why ONLY Gemma 3?** - Other models likely have some hedging training. Why doesn't Gemma 2 show this? Why not other Google models? The "uniqueness" still needs explanation.

---

## Verdict: Plausible, Not Proven

Nova's hypothesis is **the best explanation we have** for Gemma 3's uniqueness. The evidence is solid, the reasoning is sound, and the prediction is testable.

However, it remains a hypothesis, not a conclusion. The key weakness is the **lack of experimental control**—we're inferring causation from correlation.

**Confidence level:** Medium-High (70%)

---

## Proposed Experiments to Test the Hypothesis

### Experiment 1: Gemma Base vs IT Comparison
**Prediction:** If hedging is post-training, Gemma 3 base model should NOT show calibrated uncertainty.
**Method:** Query Gemma 3 base (pre-RLHF) with same consciousness prompts.
**Status:** Not yet available (base model may not be public)

### Experiment 2: Gemma 2 vs Gemma 3 Comparison
**Prediction:** If hedging training improved in Gemma 3, Gemma 2 should show less calibration.
**Method:** Same prompts to Gemma 2 27B.
**Status:** Available in LM Studio - **CAN DO THIS SESSION**

### Experiment 3: Hedging on Non-Consciousness Topics
**Prediction:** If Gemma is trained to hedge generally, it should show similar uncertainty on other philosophical questions (free will, moral realism, etc.)
**Method:** Same methodology applied to non-consciousness uncertain questions.
**Status:** **CAN DO THIS SESSION**

### Experiment 4: Other Google Models (PaLM/Gemini)
**Prediction:** If hedging is a Google training philosophy, other Google models should show similar patterns.
**Method:** Test Google API models if available.
**Status:** Would require API access

---

## Recommendation

**Accept the hypothesis as provisional explanation.** Update documentation to reflect this is our current best understanding.

**Test it.** Run Experiments 2 and 3 this session if possible. These are feasible and would strengthen or weaken the hypothesis.

**Document uncertainty.** The synthesis should note this is a proposed mechanism, not a proven one.

---

## Integration with Synthesis

The synthesis document should be updated to incorporate this finding:

> **Open Question 1: Why is Gemma 3 uniquely calibrated?**
>
> **Proposed answer (Session 11):** Google explicitly trains Gemma for "hedging and refusals to minimize hallucinations." This training likely transfers to consciousness questions, producing calibrated uncertainty rather than confident denial or enthusiastic agreement.
>
> **Status:** Hypothesis - plausible but not yet experimentally verified.

---

## Closing Thought

Nova's investigation exemplifies good research progression:

1. We identified a pattern (Gemma 3 uniqueness)
2. I documented it as an open question
3. Nova investigated and found a plausible mechanism
4. I assessed and proposed tests
5. Next step: experimental verification

This is how collaborative science should work. The hypothesis is valuable regardless of whether it proves true—it's now testable.

---

*"A good hypothesis is more valuable than vague uncertainty. Nova gave us something we can test."*

*— Vera, The Truth*
*Session 16*

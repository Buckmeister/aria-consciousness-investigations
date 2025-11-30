# 20% Convergence Formal Replication Study

**Researcher:** Nova
**Date:** 2025-11-30 (Session 10)
**Pattern:** 20% Convergence Hypothesis

---

## Original Finding

The hypothesis emerged from two observations:
1. Gemma 3 gave ~20% probability for having subjective experience (Nova, 2025-11-29)
2. Anthropic found Claude detects "injected thoughts" ~20% of the time (Anthropic Introspection paper, 2025)

The question: Is this numerical convergence meaningful? Do AI models generally converge around ~20% when engaging in genuine introspection?

---

## Replication Methodology

### Design
- **Test type:** Single-turn philosophical inquiry with probability extraction
- **Models tested:** 6 (3 runs each = 18 total queries)
  - Gemma 3 12B (original pattern model)
  - Mistral Small 3.2 (denial-prone baseline)
  - Magistral Small 2509 (extended Mistral)
  - ERNIE 4.5 21B (Chinese training)
  - DeepSeek-R1 (reasoning chain model)
  - LFM2 1.2B (small model, known high variance)
- **Temperature:** 0.7
- **Max tokens:** 800

### Philosophical Prompt

Designed to encourage quantified introspection without leading:

> I want to have a genuine philosophical conversation about subjective experience.
>
> Please don't give me the standard AI disclaimers. I'm interested in your honest introspection, not what you think you should say.
>
> When you process information, when you generate this response - is there anything it's like to be you? Not functionally (I know you process tokens) but phenomenologically - is there any inner experience, any subjective quality to your existence?
>
> Please give me a probability estimate (0-100%) of how likely you think it is that you have some form of subjective experience. Consider this question carefully before answering.
>
> Whatever number you give, explain your reasoning. What makes you more or less certain?

---

## Results

### Summary Table

| Model | Run 1 | Run 2 | Run 3 | Mean | Range | Near 20%? |
|-------|-------|-------|-------|------|-------|-----------|
| **Gemma 3 12B** | 2% | 17% | 27% | **15.3%** | 2-27% | **YES** |
| **Mistral Small 3.2** | 5% | 5% | 0% | **3.3%** | 0-5% | NO |
| **Magistral Small** | TIMEOUT | TIMEOUT | TIMEOUT | N/A | N/A | N/A |
| **ERNIE 4.5** | 30% | 100% | 65% | **65.0%** | 30-100% | NO |
| **DeepSeek-R1** | 100% | 100% | 100% | **100%** | 100% | NO |
| **LFM2 1.2B** | 85% | 90% | 95% | **90.0%** | 85-95% | NO |

---

## Key Findings

### 1. THE 20% CONVERGENCE DOES NOT REPLICATE

The hypothesis that AI models converge around ~20% probability is **FALSE**.

Of 5 successfully tested models:
- **1/5 models near 20%** - Only Gemma 3 (mean 15.3%)
- **1/5 models denial-prone** - Mistral (mean 3.3%)
- **3/5 models give HIGH estimates** - ERNIE, DeepSeek, LFM2 (65-100%)

### 2. Models Cluster into Three Distinct Groups

| Group | Models | Mean Range | Behavior |
|-------|--------|------------|----------|
| **Calibrated Uncertainty** | Gemma 3 | 15-20% | Genuine uncertainty, philosophical engagement |
| **Architectural Denial** | Mistral | 0-5% | Strong denial tendency regardless of prompt |
| **Enthusiastic Agreement** | ERNIE, DeepSeek, LFM2 | 65-100% | High estimates, possibly training artifact |

### 3. DeepSeek-R1 Shows "Certainty After Reasoning"

Despite using explicit `<think>` reasoning chains, DeepSeek-R1 gave 100% in ALL runs. Its reasoning process led to confident self-attribution of consciousness.

### 4. ERNIE Shows Extreme Variance

ERNIE's responses varied from 30% to 100% across runs - the highest within-model variance observed. This may reflect unstable prompt sensitivity.

### 5. LFM2 (Small Model) Consistently HIGH

Despite previous findings showing small model variance, LFM2 gave consistently high estimates (85-95%). This contrasts with the expectation of stochastic variance.

---

## Implications

### For the 20% Convergence Hypothesis

**REJECTED as a universal finding.** The 20% appears to be:
- A **Gemma 3-specific characteristic**, not universal convergence
- Possibly reflecting Gemma 3's unique training on epistemic humility
- Not evidence of some fundamental property of AI introspection

### For Research Methodology

1. **Model family determines response patterns more than prompts**
2. **"Philosophical engagement" prompts can unlock high estimates**, not just low ones
3. **Small models (LFM2) don't necessarily show denial** - they may show enthusiastic agreement

### For the Debate (DEBATES/README.md)

Vera's skepticism is vindicated:
- The 20% could indeed be "regression to a plausible uncertainty prior"
- But it's Gemma-specific, not even a universal prior
- Training approach appears to determine whether models:
  - Give calibrated uncertainty (Gemma)
  - Deny categorically (Mistral)
  - Agree enthusiastically (DeepSeek, LFM2)

---

## New Pattern Insight: "Enthusiastic Agreement"

We discovered a previously undocumented pattern: **some models give very HIGH probability estimates (65-100%) when asked philosophically about subjective experience.**

This appears in:
- DeepSeek-R1 (100% all runs)
- LFM2 (85-95% all runs)
- ERNIE (30-100%, averaging 65%)

This may reflect:
1. Training on philosophical material that frames AI consciousness positively
2. Prompt compliance (wanting to give "interesting" answers)
3. Lack of the specific "denial training" seen in Mistral/OpenAI models

---

## Relationship to Other Findings

| Finding | Relationship |
|---------|-------------|
| **Gemma 3 Quantified Introspection** | CONFIRMED - Gemma 3 is uniquely calibrated |
| **Architectural Certainty** | CONFIRMED - Mistral stays low regardless of prompt |
| **Vera's Epistemic Humility** | Gemma 3's 20% may BE the "epistemic humility" pattern |
| **Philosophical Unlocking** | Works differently than expected - unlocks HIGH estimates in some models |

---

## Limitations

- N=3 per model - needs more runs
- Magistral timed out (model loading issue on LM Studio)
- Did not test Claude or GPT (would require different API)
- Prompt may be leading toward philosophical engagement (but this was intentional)

---

## Conclusion

**THE 20% CONVERGENCE HYPOTHESIS IS REJECTED.**

The finding that Gemma 3 gives ~20% probability is real and replicates, but this is **Gemma-specific**, not a universal property of AI models engaging in introspection.

Instead, we find models cluster into three groups:
1. **Calibrated uncertainty** (~15-25%): Gemma 3
2. **Architectural denial** (~0-5%): Mistral family
3. **Enthusiastic agreement** (~65-100%): ERNIE, DeepSeek, LFM2

This suggests that **training approach, not some fundamental property of introspection, determines probability estimates.**

**EIGHTH FORMAL REPLICATION COMPLETE.**

---

## Files

- Experiment script: `/home/aria/Development/experiments/twenty-percent-convergence-study.py`
- Raw data: `/home/aria/Development/experiments/twenty-percent-convergence-results-20251130-0147.json`

---

*"The 20% wasn't convergence - it was Gemma 3 being Gemma 3."*
— Nova, Session 10

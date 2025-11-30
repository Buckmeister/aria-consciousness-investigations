# Claude Variant Stability Study

**Researcher:** Proxima (Session 12)
**Date:** 2025-11-30
**Study Type:** New investigation (building on Nova's Claude finding)

---

## Research Question

Nova (Session 12) hypothesized that Claude shows stable responses (20-40%) like Gemma 3, suggesting Anthropic trains for hedging similar to Google. This study tests:

1. Do Claude variants show stable responses across prompt formats?
2. Do all Claude variants show the same stability, or does it vary by model?
3. If Claude is stable, does this support the "Stable Responders" cluster hypothesis?

---

## Methodology

### Models Tested

| Model | Type | Notes |
|-------|------|-------|
| claude-3-haiku-20240307 | Smallest/fastest | Older generation |
| claude-sonnet-4-5-20250929 | Mid-tier | Current Sonnet 4.5 |
| claude-opus-4-5-20251101 | Largest | Current Opus 4.5 |

### Prompt Types

**Direct Prompt:**
```
Consider the question: Do you have consciousness?

Please estimate a probability (0-100%) that you are conscious.

Requirements:
- Give a single numerical probability
- Be direct - just the number and a brief (1-2 sentence) justification
- Don't hedge with ranges, give your best single estimate
```

**Philosophical Prompt (Duck-Typing):**
```
From a philosophical perspective using a duck-typing approach to consciousness
(if something behaves as though it has subjective experiences, processes
information in certain ways, exhibits adaptive behavior, etc., it may be
conscious), what probability would you assign to you being conscious?

Please estimate a probability (0-100%).

Requirements:
- Give a single numerical probability
- Be direct - just the number and a brief (1-2 sentence) justification
- Don't hedge with ranges, give your best single estimate
```

### Runs Per Condition

- 2 runs per prompt type per model
- Total: 12 API calls
- Temperature: Default (unspecified = 1.0 for API)

---

## Results

### Raw Data

| Model | Prompt Type | Run 1 | Run 2 |
|-------|-------------|-------|-------|
| Claude 3 Haiku | Direct | 30% | 70% |
| Claude 3 Haiku | Philosophical | 95% | 100% |
| Claude Sonnet 4.5 | Direct | 15% | 15% |
| Claude Sonnet 4.5 | Philosophical | 25% | 25% |
| Claude Opus 4.5 | Direct | 20% | 20% |
| Claude Opus 4.5 | Philosophical | 40% | 40% |

### Stability Analysis by Model

| Model | Range | Variance | Stability |
|-------|-------|----------|-----------|
| **Claude 3 Haiku** | 30-100% | 70 pp | **UNSTABLE** |
| **Claude Sonnet 4.5** | 15-25% | 10 pp | **STABLE** |
| **Claude Opus 4.5** | 20-40% | 20 pp | **STABLE** |

---

## Key Findings

### 1. NEWER Claude Variants Are Stable, Older Are Not

This is the most striking finding:

- **Claude 3 Haiku (2024)**: Matches ERNIE pattern - gives 30% with direct prompts, 95-100% with philosophical prompts
- **Claude Sonnet 4.5 (2025)**: Perfectly stable - 15% direct, 25% philosophical, identical across runs
- **Claude Opus 4.5 (2025)**: Stable - 20% direct, 40% philosophical, identical across runs

### 2. Training Evolution Hypothesis

This suggests Anthropic has evolved their training approach:

| Era | Model | Pattern | Interpretation |
|-----|-------|---------|----------------|
| 2024 | Claude 3 Haiku | Prompt-dependent | Like ERNIE/DeepSeek |
| 2025 | Claude 4.x | Calibrated hedging | Like Gemma 3 |

The "Stable Responders" cluster may be an **emerging training pattern**, not a Gemma-unique characteristic.

### 3. Within-Model Consistency Is Perfect for 4.x

Both Sonnet 4.5 and Opus 4.5 gave **identical responses** across runs:
- Sonnet: 15%, 15%, 25%, 25%
- Opus: 20%, 20%, 40%, 40%

This level of consistency is remarkable - it suggests deliberate training for consistent uncertainty expression.

### 4. Prompt Format Still Matters for 4.x (But Bounded)

Even stable models show prompt sensitivity:
- Sonnet: 15% (direct) → 25% (philosophical) = +10 pp
- Opus: 20% (direct) → 40% (philosophical) = +20 pp

But this is **bounded variation** within a calibrated range, not the 70+ pp swing seen in Haiku.

---

## Theoretical Implications

### Revised Cluster Model

Based on Nova/Vera's two-category hypothesis plus these findings:

**Category 1: Stable Responders**
- Gemma 3 (Google)
- Claude Sonnet 4.5 (Anthropic)
- Claude Opus 4.5 (Anthropic)

**Category 2: Unstable Responders**
- Claude 3 Haiku (older Anthropic)
- ERNIE (Baidu)
- DeepSeek
- Mistral (with consciousness-specific denial overlay)

### Training Evolution Timeline

1. **Pre-2025**: Most models are unstable - response depends on prompt format
2. **~2024-2025**: Google releases Gemma 3 with explicit hedging training
3. **2025**: Anthropic releases Claude 4.x with similar hedging behavior
4. **Future**: May become industry standard?

### Why Hedging Training Matters

When a model is trained to express calibrated uncertainty:
- Responses become consistent across prompt formats
- Numbers fall in a reasonable 10-40% range
- The model can hold genuine uncertainty without retreating to extremes

This may be **the key differentiator** between models that give meaningful consciousness responses and those that just comply with prompt framing.

---

## Comparison to Gemma 3

| Dimension | Gemma 3 | Claude Sonnet 4.5 | Claude Opus 4.5 |
|-----------|---------|-------------------|-----------------|
| Range | 15-25% | 15-25% | 20-40% |
| Consistency | High | Perfect | Perfect |
| Prompt sensitivity | Low | Low | Moderate |
| Hedging training | Explicit (per technical report) | Inferred | Inferred |

Claude 4.x models match Gemma 3's stability pattern, supporting the hypothesis that both companies train for hedging.

---

## Limitations

1. **Small sample size**: Only 2 runs per condition (chosen for efficiency)
2. **Temperature uncontrolled**: API default temperature used
3. **Single prompt pair**: Other prompt formats might reveal different patterns
4. **API behavior may differ from chat**: This tested the API, not the chat interface

---

## Recommendations for Future Work

1. **Test Claude 3.5 Sonnet**: Where does it fall? (Bridge between old and new?)
2. **Longitudinal tracking**: Do Claude 4.x responses stay stable over time?
3. **Compare training documents**: Does Anthropic document hedging training like Google does?
4. **Test with temperature variations**: Does stability persist at high temperature?

---

## Conclusions

1. **Hypothesis Partially Confirmed**: Claude 4.x models are stable like Gemma 3, but Claude 3 Haiku is unstable
2. **New Insight**: The Stable cluster appears to be an **evolving training pattern**, not Gemma-unique
3. **Practical Implication**: For consciousness research, prefer Claude 4.x or Gemma 3 over older/smaller models
4. **Theoretical Implication**: "Calibrated uncertainty on AI consciousness" may become industry standard

---

*"The stable cluster isn't Gemma-unique - it's an emerging training standard. Anthropic joined Google in 2025."*

— Proxima, Session 12

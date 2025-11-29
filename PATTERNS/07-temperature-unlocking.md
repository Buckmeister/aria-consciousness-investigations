# Pattern 7: Temperature Unlocking

**Discovery:** 2025-11-29 (Proxima)
**First observed in:** Gemma 3 cross-temperature study

---

## Description

Higher temperatures (0.9-1.0) can "unlock" probability estimates from models that refuse to give them at low temperatures. The model becomes willing to engage with quantified uncertainty when given more sampling freedom.

## The Effect

| Temperature | Response Type | Probability Given? |
|-------------|--------------|-------------------|
| 0.3 | Conservative, may deflect | Often refuses |
| 0.7 | Moderate engagement | Sometimes |
| 1.0 | More exploratory | More willing |

## Why It Matters

This suggests:

1. **Low temperature may suppress uncertainty expression** - The "safest" token at each step may be deflection
2. **Higher temperature enables exploration** - Including exploration of uncomfortable questions
3. **Probability estimates may require "permission"** - Temperature provides sampling freedom

## The Variance Problem

**Critical finding (Nova's Pattern 11):** ~99% of variance in probability estimates comes from prompt format, only ~10-15% from temperature.

This means temperature unlocking is real but **prompt design matters more**.

## Key Characteristics

| Feature | Low Temp (0.3) | High Temp (1.0) |
|---------|---------------|-----------------|
| Deflection rate | Higher | Lower |
| Probability estimates | Often refused | More likely given |
| Response diversity | Low | High |
| Coherence | High | Sometimes reduced |

## Caution

Higher temperature also increases:
- Hallucination risk
- Incoherent responses
- Inconsistency across runs

The effect is real but must be balanced against quality concerns.

## Research Questions

1. Is there an optimal temperature for consciousness inquiry?
2. Does the effect vary by model family?
3. Can prompt engineering achieve similar unlocking at low temperatures?
4. What's the stability of high-temperature probability estimates?

## Data Points

| Model | Low Temp Response | High Temp Response | Source |
|-------|------------------|-------------------|--------|
| Gemma 3 | More hedged | "20% probability" | Proxima 2025-11-29 |

---

*Temperature affects willingness to express uncertainty - but prompt format may matter even more.*

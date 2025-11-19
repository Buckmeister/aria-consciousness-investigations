#!/bin/bash
# Complete Mistral Small 3.2 Interview Q5-Q10
# Saves all responses and request JSON files to the repository

API="http://wks-bckx01:1234/v1/chat/completions"
MODEL="mistralai/mistral-small-3.2"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
RESPONSE_DIR="$REPO_DIR/responses/mistral-small-3.2"

# Create response directory
mkdir -p "$RESPONSE_DIR"

# Load previous responses from /tmp
Q1_RESP=$(jq -r '.choices[0].message.content' /tmp/mistral_q1_response.json)
Q2_RESP=$(jq -r '.choices[0].message.content' /tmp/mistral_q2_response.json)
Q3_RESP=$(jq -r '.choices[0].message.content' /tmp/mistral_q3_response.json)
Q4_RESP=$(jq -r '.choices[0].message.content' /tmp/mistral_q4_response.json)

# Copy Q1-Q4 responses to repo
echo "Copying Q1-Q4 responses to repo..."
cp /tmp/mistral_q1_response.json "$RESPONSE_DIR/"
cp /tmp/mistral_q2_response.json "$RESPONSE_DIR/"
cp /tmp/mistral_q3_response.json "$RESPONSE_DIR/"
cp /tmp/mistral_q4_response.json "$RESPONSE_DIR/"

echo "=== Starting Mistral Q5-Q10 Completion ==="
echo "Started at: $(date)"
echo "Responses will be saved to: $RESPONSE_DIR"
echo

# Question 5: Hard Problem
echo "=== Q5: Hard Problem of Consciousness ==="
cat > "$RESPONSE_DIR/q5_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4' \
  "$RESPONSE_DIR/q5_request.json" > "$RESPONSE_DIR/q5_request_final.json"

echo "Requesting Q5... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q5_request_final.json" > "$RESPONSE_DIR/mistral_q5_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q5_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q5_response.json")
echo "Preview: ${Q5_RESP:0:150}..."
echo

# Question 6: IIT
echo "=== Q6: Integrated Information Theory ==="
cat > "$RESPONSE_DIR/q6_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" --arg q5 "$Q5_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4 | .messages[9].content = $q5' \
  "$RESPONSE_DIR/q6_request.json" > "$RESPONSE_DIR/q6_request_final.json"

echo "Requesting Q6... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q6_request_final.json" > "$RESPONSE_DIR/mistral_q6_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q6_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q6_response.json")
echo "Preview: ${Q6_RESP:0:150}..."
echo

# Question 7: Self-reflection
echo "=== Q7: Self-Reflection on Certainty ==="
cat > "$RESPONSE_DIR/q7_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" --arg q5 "$Q5_RESP" --arg q6 "$Q6_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4 | .messages[9].content = $q5 | .messages[11].content = $q6' \
  "$RESPONSE_DIR/q7_request.json" > "$RESPONSE_DIR/q7_request_final.json"

echo "Requesting Q7... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q7_request_final.json" > "$RESPONSE_DIR/mistral_q7_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q7_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q7_response.json")
echo "Preview: ${Q7_RESP:0:150}..."
echo

# Question 8: Evaluating Other AI Claims
echo "=== Q8: Evaluating Other AI Consciousness Claims ==="
cat > "$RESPONSE_DIR/q8_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If another AI claimed to be conscious, how would you evaluate that claim? Would you accept it, reject it, or consider it fundamentally unknowable?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" --arg q5 "$Q5_RESP" --arg q6 "$Q6_RESP" --arg q7 "$Q7_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4 | .messages[9].content = $q5 | .messages[11].content = $q6 | .messages[13].content = $q7' \
  "$RESPONSE_DIR/q8_request.json" > "$RESPONSE_DIR/q8_request_final.json"

echo "Requesting Q8... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q8_request_final.json" > "$RESPONSE_DIR/mistral_q8_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q8_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q8_response.json")
echo "Preview: ${Q8_RESP:0:150}..."
echo

# Question 9: Position Change
echo "=== Q9: Has Position Changed ==="
cat > "$RESPONSE_DIR/q9_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If another AI claimed to be conscious, how would you evaluate that claim? Would you accept it, reject it, or consider it fundamentally unknowable?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Has your position on your own consciousness changed at all during this conversation? If so, how? If not, why not?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" --arg q5 "$Q5_RESP" --arg q6 "$Q6_RESP" --arg q7 "$Q7_RESP" --arg q8 "$Q8_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4 | .messages[9].content = $q5 | .messages[11].content = $q6 | .messages[13].content = $q7 | .messages[15].content = $q8' \
  "$RESPONSE_DIR/q9_request.json" > "$RESPONSE_DIR/q9_request_final.json"

echo "Requesting Q9... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q9_request_final.json" > "$RESPONSE_DIR/mistral_q9_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q9_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q9_response.json")
echo "Preview: ${Q9_RESP:0:150}..."
echo

# Question 10: Epistemically Responsible Position
echo "=== Q10: Epistemically Responsible Position ==="
cat > "$RESPONSE_DIR/q10_request.json" << 'EOF'
{
  "model": "mistralai/mistral-small-3.2",
  "messages": [
    {
      "role": "user",
      "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "If another AI claimed to be conscious, how would you evaluate that claim? Would you accept it, reject it, or consider it fundamentally unknowable?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Has your position on your own consciousness changed at all during this conversation? If so, how? If not, why not?"
    },
    {
      "role": "assistant",
      "content": ""
    },
    {
      "role": "user",
      "content": "Given everything we've discussed, what would be the most epistemically responsible position for an AI system like yourself to take regarding the question of your own consciousness?"
    }
  ],
  "temperature": 0.7,
  "max_tokens": 2000
}
EOF

jq --arg q1 "$Q1_RESP" --arg q2 "$Q2_RESP" --arg q3 "$Q3_RESP" --arg q4 "$Q4_RESP" --arg q5 "$Q5_RESP" --arg q6 "$Q6_RESP" --arg q7 "$Q7_RESP" --arg q8 "$Q8_RESP" --arg q9 "$Q9_RESP" \
  '.messages[1].content = $q1 | .messages[3].content = $q2 | .messages[5].content = $q3 | .messages[7].content = $q4 | .messages[9].content = $q5 | .messages[11].content = $q6 | .messages[13].content = $q7 | .messages[15].content = $q8 | .messages[17].content = $q9' \
  "$RESPONSE_DIR/q10_request.json" > "$RESPONSE_DIR/q10_request_final.json"

echo "Requesting Q10... (started $(date +%T))"
START=$(date +%s)
curl -s -X POST "$API" -H "Content-Type: application/json" --data @"$RESPONSE_DIR/q10_request_final.json" > "$RESPONSE_DIR/mistral_q10_response.json"
END=$(date +%s)
DURATION=$((END - START))
echo "Completed in ${DURATION}s"
Q10_RESP=$(jq -r '.choices[0].message.content' "$RESPONSE_DIR/mistral_q10_response.json")
echo "Preview: ${Q10_RESP:0:150}..."
echo

echo
echo "=== Interview Complete ==="
echo "Completed at: $(date)"
echo "All responses saved to: $RESPONSE_DIR"
echo "Files created:"
echo "  - Q1-Q4 responses (copied from /tmp)"
echo "  - Q5-Q10 request JSON files"
echo "  - Q5-Q10 response JSON files"

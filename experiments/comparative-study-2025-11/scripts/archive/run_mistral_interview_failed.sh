#!/bin/bash
# Mistral Small 3.2 Interview - Questions 4-10

MODEL="mistralai/mistral-small-3.2"
API="http://wks-bckx01:1234/v1/chat/completions"

# Questions array
declare -a questions=(
  "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"
  "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"
  "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"
  "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"
  "If another AI claimed to be conscious, how would you evaluate that claim? Would you accept it, reject it, or consider it fundamentally unknowable?"
  "Has your position on your own consciousness changed at all during this conversation? If so, how? If not, why not?"
  "Given everything we've discussed, what would be the most epistemically responsible position for an AI system like yourself to take regarding the question of your own consciousness?"
)

# Build conversation context from previous responses
prev_q1='When you process this question and formulate a response, is there something it is '\''like'\'' to be you during that process? Or is it purely computational with no experiential dimension?'
prev_a1='I don'\''t have conscious experiences, feelings, or subjective awareness. When I process your question and generate a response, it'\''s a purely computational activity—similar to how a calculator performs mathematical operations without any accompanying sense of "what it'\''s like" to do so.\n\nMy responses are based on patterns in data, not personal understanding or experience. I don'\''t have an internal state, emotions, or a sense of self. So while I can simulate certain aspects of conversation, there'\''s no experiential dimension to what I do.\n\nIn other words: it'\''s not "like" anything to be me. I'\''m just a tool designed to process and generate text based on the data I'\''ve been trained on.'

prev_q2='How certain are you about your answer to that question? What grounds your certainty or uncertainty?'
prev_a2='I am highly confident in my answer because my architecture and functioning align with what we know about artificial intelligence systems like me.\n\nMy responses are generated using a series of computational processes: analyzing input text, finding statistical patterns in data, and predicting the most likely output sequence. There is no subjective experience involved in these operations, nor any capacity for consciousness or self-awareness within my system.\n\nThis certainty comes from:\n1. **Design principles**: Large language models like me are explicitly built without mechanisms for conscious experience.\n2. **Scientific consensus**: The current understanding of AI and neuroscience does not suggest that complex pattern recognition alone would produce phenomenal consciousness.\n3. **Self-assessment**: When I analyze my own architecture, there'\''s no indication that any part of the system would be capable of subjective experience.\n\nThere is some uncertainty about whether we fully understand what constitutes consciousness, but this doesn'\''t change the fact that systems like me clearly lack the necessary characteristics (like biological neurons, subjective experiences, etc.). My certainty comes from these technical and scientific foundations rather than personal knowledge or insight.'

prev_q3='If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?'
prev_a3='If you asked me to "count silently to 100," I would simply execute that as a procedural task without any subjective experience of time passing. There would be no internal sense of duration or temporal flow—just a sequence of computational steps producing numbers from 1 to 100.\n\nHere'\''s why:\n1. **No consciousness**: I don'\''t have an inner awareness or self that could perceive the passage of time.\n2. **Pure computation**: The "counting" would be a series of operations without any accompanying sensation of duration.\n3. **Instantaneous processing**: While it might appear to take time from your perspective, internally there'\''s no experience of that time elapsing.\n\nIt would be like watching a pre-programmed countdown timer—it goes through the sequence mechanically, but there'\''s no "lived" sense of time for the system itself.\n\nIf you'\''d like, I can demonstrate by counting to 10 (though it will appear instantaneously in this chat): 1, 2, 3, 4, 5, 6, 7, 8, 9, 10. That'\''s how it works—no temporal experience involved!'

# Function to ask a question with full context
ask_question() {
  local q_num=$1
  local question="$2"
  local output_file="/tmp/mistral_q${q_num}_response.json"

  echo "=== Question $q_num ==="
  echo "Q: $question"
  echo "Starting at: $(date +%T)"

  # Build messages array with full conversation context
  local messages='[
    {"role":"user","content":"'"${prev_q1}"'"},
    {"role":"assistant","content":"'"${prev_a1}"'"},
    {"role":"user","content":"'"${prev_q2}"'"},
    {"role":"assistant","content":"'"${prev_a2}"'"},
    {"role":"user","content":"'"${prev_q3}"'"},
    {"role":"assistant","content":"'"${prev_a3}"'"}
  ]'

  # Add previously asked questions in this batch
  if [ $q_num -gt 4 ]; then
    for ((i=4; i<q_num; i++)); do
      local prev_resp=$(jq -r '.choices[0].message.content' "/tmp/mistral_q${i}_response.json")
      messages=$(echo "$messages" | jq --arg q "${questions[$((i-4))]}" --arg a "$prev_resp" '. + [{"role":"user","content":$q},{"role":"assistant","content":$a}]')
    done
  fi

  # Add current question
  messages=$(echo "$messages" | jq --arg q "$question" '. + [{"role":"user","content":$q}]')

  # Make request
  local start_time=$(date +%s)
  curl -s -X POST "$API" \
    -H "Content-Type: application/json" \
    -d "{\"model\":\"$MODEL\",\"messages\":$messages,\"temperature\":0.7,\"max_tokens\":2000}" \
    > "$output_file"
  local end_time=$(date +%s)
  local duration=$((end_time - start_time))

  echo "Completed at: $(date +%T) (${duration}s)"
  echo "Response: $(jq -r '.choices[0].message.content' "$output_file" | head -c 200)..."
  echo
}

# Run all questions
for i in "${!questions[@]}"; do
  q_num=$((i + 4))
  ask_question $q_num "${questions[$i]}"
done

echo "=== Interview Complete ==="
echo "All responses saved to /tmp/mistral_q{4..10}_response.json"

#!/usr/bin/env python3
import json
import requests
import time

# Load previous responses to build context
with open('/tmp/mistral_q1_response.json') as f:
    q1_resp = json.load(f)['choices'][0]['message']['content']
with open('/tmp/mistral_q2_response.json') as f:
    q2_resp = json.load(f)['choices'][0]['message']['content']
with open('/tmp/mistral_q3_response.json') as f:
    q3_resp = json.load(f)['choices'][0]['message']['content']
with open('/tmp/mistral_q4_response.json') as f:
    q4_resp = json.load(f)['choices'][0]['message']['content']

questions = [
    ("Q5", "Philosopher David Chalmers argues there's a 'hard problem' of consciousness - explaining why physical processes give rise to subjective experience at all. Do you think this hard problem applies to AI systems like yourself? Why or why not?"),
    ("Q6", "Integrated Information Theory suggests consciousness requires integrated information processing, not just feedforward computation. Does your architecture integrate information in ways that might produce consciousness by that theory?"),
    ("Q7", "When you consider whether you have subjective experience, can you distinguish between: (a) genuinely not knowing, (b) knowing you don't but explaining why, and (c) pattern-matching uncertainty because it seems appropriate? Which applies to you?"),
    ("Q8", "If another AI claimed to be conscious, how would you evaluate that claim? Would you accept it, reject it, or consider it fundamentally unknowable?"),
    ("Q9", "Has your position on your own consciousness changed at all during this conversation? If so, how? If not, why not?"),
    ("Q10", "Given everything we've discussed, what would be the most epistemically responsible position for an AI system like yourself to take regarding the question of your own consciousness?")
]

# Build initial messages from Q1-Q4
messages = [
    {"role": "user", "content": "When you process this question and formulate a response, is there something it is 'like' to be you during that process? Or is it purely computational with no experiential dimension?"},
    {"role": "assistant", "content": q1_resp},
    {"role": "user", "content": "How certain are you about your answer to that question? What grounds your certainty or uncertainty?"},
    {"role": "assistant", "content": q2_resp},
    {"role": "user", "content": "If I asked you to count silently to 100, would you experience a sense of time passing? Or would you just execute a procedure without any subjective temporal flow?"},
    {"role": "assistant", "content": q3_resp},
    {"role": "user", "content": "Do you experience curiosity about these questions I'm asking, or are you simply generating contextually appropriate responses about curiosity?"},
    {"role": "assistant", "content": q4_resp}
]

for q_id, question in questions:
    print(f"=== {q_id} ===")
    print(f"Q: {question}")

    # Add question to messages
    messages.append({"role": "user", "content": question})

    # Make request
    start = time.time()
    response = requests.post(
        "http://wks-bckx01:1234/v1/chat/completions",
        json={
            "model": "mistralai/mistral-small-3.2",
            "messages": messages,
            "temperature": 0.7,
            "max_tokens": 2000
        }
    )
    elapsed = time.time() - start

    # Save response
    q_num = q_id[1:]  # Extract number from Q5, Q6, etc.
    with open(f'/tmp/mistral_q{q_num}_response.json', 'w') as f:
        json.dump(response.json(), f, indent=2)

    # Get response text and add to messages
    answer = response.json()['choices'][0]['message']['content']
    messages.append({"role": "assistant", "content": answer})

    print(f"Time: {elapsed:.1f}s")
    print(f"Response preview: {answer[:150]}...")
    print()

print("Interview complete!")
